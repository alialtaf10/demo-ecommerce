<?php

namespace App\Providers;

use App\Events\OrderCreated;
use App\Listeners\SendOrderConfirmation;
use Illuminate\Auth\Events\Registered;
use Illuminate\Auth\Listeners\SendEmailVerificationNotification;
use Illuminate\Foundation\Support\Providers\EventServiceProvider as ServiceProvider;

class EventServiceProvider extends ServiceProvider
{
    protected $listen = [
        Registered::class => [
            SendEmailVerificationNotification::class,
        ],
        OrderCreated::class => [
            SendOrderConfirmation::class,
        ],
    ];

    public function boot()
    {
        parent::boot();
    }
}
