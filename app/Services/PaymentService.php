<?php

namespace App\Services;

use App\Models\User;
use Stripe\StripeClient;

class PaymentService
{
    protected $stripe;

    public function __construct()
    {
        $this->stripe = new StripeClient(config('services.stripe.secret'));
    }

    public function createPaymentIntent($amount, $options = [])
    {
        return $this->stripe->paymentIntents->create(array_merge([
            'amount' => $amount * 100,
            'currency' => 'usd',
            'automatic_payment_methods' => ['enabled' => true],
        ], $options));
    }

    public function createCustomer(User $user)
    {
        $customer = $this->stripe->customers->create([
            'email' => $user->email,
            'name' => $user->name,
            'metadata' => ['user_id' => $user->id]
        ]);

        $user->update(['stripe_id' => $customer->id]);
        return $customer;
    }

    public function createCheckoutSession(array $params)
    {
        return $this->stripe->checkout->sessions->create($params);
    }
}
