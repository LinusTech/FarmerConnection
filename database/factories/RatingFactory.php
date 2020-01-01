<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Rating;
use App\User;
use App\Product;
use Faker\Generator as Faker;

$factory->define(Rating::class, function (Faker $faker) {
    return [
        'product_id' 	=> Product::all()->random()->id,
        'user_id' 		=> User::all()->random()->id,
        'rating'		=> $faker->numberBetween($min = 0, $max = 10),
    ];
});
