<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Cart;
use Faker\Generator as Faker;

$factory->define(Cart::class, function (Faker $faker) {
    return [
    	'user_id'		=> User::all()->random()->id,
    	'product_id'	=> Product::all()->random()->id,
    	'session_id'	=> $faker->text,
        'quantity'		=> $faker->numberBetween($min = 1, $max = 100),
    ];
});
