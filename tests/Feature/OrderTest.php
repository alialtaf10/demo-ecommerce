<?php

namespace Tests\Feature;

use App\Models\Product;
use App\Models\User;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Tests\TestCase;

class OrderTest extends TestCase
{
    use RefreshDatabase;

    public function test_user_can_place_order()
    {
        $user = User::factory()->create();
        $token = $user->createToken('auth_token')->plainTextToken;

        $product1 = Product::factory()->create(['price' => 100, 'quantity' => 10]);
        $product2 = Product::factory()->create(['price' => 200, 'quantity' => 5]);

        $response = $this->withHeaders([
            'Authorization' => 'Bearer ' . $token,
        ])->postJson('/api/orders', [
            'items' => [
                ['product_id' => $product1->id, 'quantity' => 2],
                ['product_id' => $product2->id, 'quantity' => 1],
            ]
        ]);

        $response->assertStatus(201)
            ->assertJson([
                'total_amount' => 400,
            ]);

        // Check product quantities were updated
        $this->assertEquals(8, $product1->fresh()->quantity);
        $this->assertEquals(4, $product2->fresh()->quantity);
    }

    public function test_user_can_view_their_orders()
    {
        $user = User::factory()->create();
        $token = $user->createToken('auth_token')->plainTextToken;

        // Create some orders for the user
        $order = $user->orders()->create(['total_amount' => 100]);
        $order->items()->create([
            'product_id' => Product::factory()->create()->id,
            'quantity' => 1,
            'unit_price' => 100,
            'total_price' => 100,
        ]);

        $response = $this->withHeaders([
            'Authorization' => 'Bearer ' . $token,
        ])->getJson('/api/orders');

        $response->assertStatus(200)
            ->assertJsonCount(1);
    }

    public function test_user_cannot_order_inactive_product()
    {
        $user = User::factory()->create();
        $token = $user->createToken('auth_token')->plainTextToken;

        $product = Product::factory()->create(['status' => 'inactive']);

        $response = $this->withHeaders([
            'Authorization' => 'Bearer ' . $token,
        ])->postJson('/api/orders', [
            'items' => [
                ['product_id' => $product->id, 'quantity' => 1],
            ]
        ]);

        $response->assertStatus(422);
    }

    public function test_user_cannot_order_insufficient_quantity()
    {
        $user = User::factory()->create();
        $token = $user->createToken('auth_token')->plainTextToken;

        $product = Product::factory()->create(['quantity' => 5]);

        $response = $this->withHeaders([
            'Authorization' => 'Bearer ' . $token,
        ])->postJson('/api/orders', [
            'items' => [
                ['product_id' => $product->id, 'quantity' => 10],
            ]
        ]);

        $response->assertStatus(422);
    }
}
