<?php
namespace App\Mail;

use App\Models\Order;
use Illuminate\Mail\Mailable;

class OrderConfirmation extends Mailable
{
    public $order;

    public function __construct(Order $order)
    {
        $this->order = $order->load(['user', 'items.product']);
    }

    public function build()
    {
        return $this->subject('Order Confirmation #'.$this->order->id)
                    ->view('emails.order-confirmation');
    }
}
