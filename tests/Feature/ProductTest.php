<?php

namespace Tests\Feature;

use App\Models\Product;
use App\Models\User;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Tests\TestCase;

class ProductTest extends TestCase
{
    use RefreshDatabase;

    public function test_get_active_products()
    {
        Product::factory()->count(3)->create(['status' => 'active']);
        Product::factory()->count(2)->create(['status' => 'inactive']);

        $response = $this->getJson('/api/products');

        $response->assertStatus(200)
            ->assertJsonCount(3);
    }

    public function test_admin_can_create_product()
    {
        $admin = User::factory()->create(['is_admin' => true]);
        $token = $admin->createToken('auth_token')->plainTextToken;

        $response = $this->withHeaders([
            'Authorization' => 'Bearer ' . $token,
        ])->postJson('/api/products', [
            'name' => 'Test Product',
            'description' => 'Test Description',
            'price' => 100,
            'quantity' => 10,
            'status' => 'active',
        ]);

        $response->assertStatus(201)
            ->assertJson([
                'name' => 'Test Product',
                'price' => 100,
            ]);
    }

    public function test_non_admin_cannot_create_product()
    {
        $user = User::factory()->create();
        $token = $user->createToken('auth_token')->plainTextToken;

        $response = $this->withHeaders([
            'Authorization' => 'Bearer ' . $token,
        ])->postJson('/api/products', [
            'name' => 'Test Product',
            'price' => 100,
            'quantity' => 10,
        ]);

        $response->assertStatus(403);
    }

    public function test_admin_can_update_product()
    {
        $admin = User::factory()->create(['is_admin' => true]);
        $token = $admin->createToken('auth_token')->plainTextToken;
        $product = Product::factory()->create();

        $response = $this->withHeaders([
            'Authorization' => 'Bearer ' . $token,
        ])->putJson("/api/products/{$product->id}", [
            'name' => 'Updated Product',
            'price' => 200,
        ]);

        $response->assertStatus(200)
            ->assertJson([
                'name' => 'Updated Product',
                'price' => 200,
            ]);
    }

    public function test_admin_can_delete_product()
    {
        $admin = User::factory()->create(['is_admin' => true]);
        $token = $admin->createToken('auth_token')->plainTextToken;
        $product = Product::factory()->create();

        $response = $this->withHeaders([
            'Authorization' => 'Bearer ' . $token,
        ])->deleteJson("/api/products/{$product->id}");

        $response->assertStatus(200)
            ->assertJson([
                'message' => 'Product deleted successfully'
            ]);

        $this->assertDatabaseMissing('products', ['id' => $product->id]);
    }
}
