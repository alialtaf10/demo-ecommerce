<!DOCTYPE html>
<html>
<head>
    <title>Order Confirmation</title>
</head>
<body>
    <h1>Order Confirmation</h1>
    <p>Thank you for your order!</p>

    <h2>Order Details</h2>
    <p>Order ID: {{ $order->id }}</p>
    <p>Order Date: {{ $order->created_at->format('F j, Y') }}</p>
    <p>Total Amount: ${{ number_format($order->total_amount, 2) }}</p>

    <h3>Items Ordered</h3>
    <ul>
        @foreach($order->items as $item)
        <li>
            {{ $item->product->name }} -
            {{ $item->quantity }} x ${{ number_format($item->unit_price, 2) }} =
            ${{ number_format($item->total_price, 2) }}
        </li>
        @endforeach
    </ul>

    <p>If you have any questions, please contact our support team.</p>
</body>
</html>
