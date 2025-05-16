<?php

namespace App\Listeners;

use App\Events\OrderCreated;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Support\Facades\Mail;
use App\Mail\OrderConfirmation;

class SendOrderConfirmation implements ShouldQueue
{
    public $queue = 'emails'; // Optional: specify queue name

    public function handle(OrderCreated $event)
    {
        $order = $event->order->load('user'); // Explicitly load user

        if (!$order->user || !$order->user->email) {
            \Log::error('Order confirmation failed: No user or email found', [
                'order_id' => $order->id
            ]);
            return;
        }

        Mail::to($order->user->email)
            ->send(new OrderConfirmation($order));
    }

    public function failed(OrderCreated $event, $exception)
    {
        \Log::error('Order confirmation email failed to send', [
            'order_id' => $event->order->id,
            'error' => $exception->getMessage()
        ]);
    }
}
