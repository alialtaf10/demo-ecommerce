<?php

/**
 * @OA\Schema(
 *     schema="Order",
 *     required={"user_id", "total_amount", "status"},
 *     @OA\Property(
 *         property="id",
 *         type="integer",
 *         format="int64",
 *         example=1
 *     ),
 *     @OA\Property(
 *         property="user_id",
 *         type="integer",
 *         example=1
 *     ),
 *     @OA\Property(
 *         property="total_amount",
 *         type="number",
 *         format="float",
 *         example=1999.98
 *     ),
 *     @OA\Property(
 *         property="status",
 *         type="string",
 *         example="pending"
 *     ),
 *     @OA\Property(
 *         property="created_at",
 *         type="string",
 *         format="date-time"
 *     ),
 *     @OA\Property(
 *         property="updated_at",
 *         type="string",
 *         format="date-time"
 *     ),
 *     @OA\Property(
 *         property="items",
 *         type="array",
 *         @OA\Items(ref="#/components/schemas/OrderItem")
 *     )
 * )
 */

/**
 * @OA\Schema(
 *     schema="OrderItem",
 *     required={"order_id", "product_id", "quantity", "unit_price", "total_price"},
 *     @OA\Property(
 *         property="id",
 *         type="integer",
 *         format="int64",
 *         example=1
 *     ),
 *     @OA\Property(
 *         property="order_id",
 *         type="integer",
 *         example=1
 *     ),
 *     @OA\Property(
 *         property="product_id",
 *         type="integer",
 *         example=1
 *     ),
 *     @OA\Property(
 *         property="quantity",
 *         type="integer",
 *         example=2
 *     ),
 *     @OA\Property(
 *         property="unit_price",
 *         type="number",
 *         format="float",
 *         example=999.99
 *     ),
 *     @OA\Property(
 *         property="total_price",
 *         type="number",
 *         format="float",
 *         example=1999.98
 *     ),
 *     @OA\Property(
 *         property="product",
 *         ref="#/components/schemas/Product"
 *     )
 * )
 */

/**
 * @OA\Schema(
 *     schema="OrderRequest",
 *     required={"items"},
 *     @OA\Property(
 *         property="items",
 *         type="array",
 *         @OA\Items(
 *             required={"product_id", "quantity"},
 *             @OA\Property(
 *                 property="product_id",
 *                 type="integer",
 *                 example=1
 *             ),
 *             @OA\Property(
 *                 property="quantity",
 *                 type="integer",
 *                 example=2
 *             )
 *         )
 *     )
 * )
 */