<?php

/**
 * @OA\Schema(
 *     schema="Product",
 *     required={"name", "price", "quantity", "status"},
 *     @OA\Property(
 *         property="id",
 *         type="integer",
 *         format="int64",
 *         example=1
 *     ),
 *     @OA\Property(
 *         property="name",
 *         type="string",
 *         example="Smartphone"
 *     ),
 *     @OA\Property(
 *         property="description",
 *         type="string",
 *         example="Latest smartphone model"
 *     ),
 *     @OA\Property(
 *         property="price",
 *         type="number",
 *         format="float",
 *         example=999.99
 *     ),
 *     @OA\Property(
 *         property="quantity",
 *         type="integer",
 *         example=10
 *     ),
 *     @OA\Property(
 *         property="status",
 *         type="string",
 *         enum={"active", "inactive"},
 *         example="active"
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
 *     )
 * )
 */

/**
 * @OA\Schema(
 *     schema="ProductRequest",
 *     required={"name", "price", "quantity", "status"},
 *     @OA\Property(
 *         property="name",
 *         type="string",
 *         example="Smartphone"
 *     ),
 *     @OA\Property(
 *         property="description",
 *         type="string",
 *         example="Latest smartphone model"
 *     ),
 *     @OA\Property(
 *         property="price",
 *         type="number",
 *         format="float",
 *         example=999.99
 *     ),
 *     @OA\Property(
 *         property="quantity",
 *         type="integer",
 *         example=10
 *     ),
 *     @OA\Property(
 *         property="status",
 *         type="string",
 *         enum={"active", "inactive"},
 *         example="active"
 *     )
 * )
 */