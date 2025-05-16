<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Order;
use App\Models\OrderItem;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use Illuminate\Validation\ValidationException;
use App\Events\OrderCreated;

use Illuminate\Support\Facades\Mail;
use App\Mail\OrderConfirmation;

use App\Services\PaymentService;

class OrderController extends Controller
{
    public function index()
    {
        $orders = Order::with('items.product')->where('user_id', auth()->id())->get();
        return response()->json($orders);
    }

    public function store(Request $request, PaymentService $paymentService)
    {
        $validator = Validator::make($request->all(), [
            'items' => 'required|array|min:1',
            'items.*.product_id' => 'required|exists:products,id',
            'items.*.quantity' => 'required|integer|min:1',
            'payment_method_id' => 'required|string',
        ]);

        if ($validator->fails()) {
            return response()->json($validator->errors(), 422);
        }

        return DB::transaction(function () use ($request, $paymentService) {
            $user = auth()->user();

            $order = new Order();
            $order->user_id = $user->id;
            $order->total_amount = 0;
            $order->status = 'pending';
            $order->save();

            $totalAmount = 0;
            $lineItems = []; // For Stripe checkout session

            foreach ($request->items as $item) {
                $product = Product::findOrFail($item['product_id']);

                if ($product->status !== 'active' || $product->quantity < $item['quantity']) {
                    throw ValidationException::withMessages([
                        'product_id' => ['Product not available or insufficient quantity'],
                    ]);
                }

                $orderItem = new OrderItem([
                    'product_id' => $product->id,
                    'quantity' => $item['quantity'],
                    'unit_price' => $product->price,
                    'total_price' => $product->price * $item['quantity']
                ]);

                $order->items()->save($orderItem);
                $totalAmount += $orderItem->total_price;
                $product->decrement('quantity', $item['quantity']);

                // Prepare line items for Stripe session
                $lineItems[] = [
                    'price_data' => [
                        'currency' => 'usd',
                        'product_data' => [
                            'name' => $product->name,
                        ],
                        'unit_amount' => $product->price * 100,
                    ],
                    'quantity' => $item['quantity'],
                ];
            }

            $order->total_amount = $totalAmount;
            $order->save();

            try {
                // Create Stripe Checkout Session
                $session = $paymentService->createCheckoutSession([
                    'payment_method_types' => ['card'],
                    'line_items' => $lineItems,
                    'mode' => 'payment',
                    'customer_email' => $user->email,
                    'success_url' => url("/order/success?session_id={CHECKOUT_SESSION_ID}"),
                    'cancel_url' => url("/order/canceled"),
                    'metadata' => [
                        'order_id' => $order->id,
                        'user_id' => $user->id
                    ],
                ]);

                $order->update([
                    'payment_intent_id' => $session->payment_intent,
                    'checkout_session_id' => $session->id,
                    'status' => 'awaiting_payment'
                ]);

                // Send order confirmation email (queued)
                Mail::to($user->email)->queue(new OrderConfirmation($order));

                return response()->json([
                    'order' => $order->load('items.product'),
                    'payment_url' => $session->url, // Stripe checkout URL
                    'session_id' => $session->id
                ], 201);

            } catch (\Exception $e) {
                return response()->json([
                    'error' => $e->getMessage(),
                ], 500);
            }
        });
    }

    public function show($id)
    {
        $order = Order::with('items.product')->where('user_id', auth()->id())->findOrFail($id);
        return response()->json($order);
    }
}