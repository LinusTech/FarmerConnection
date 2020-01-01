<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Product;
use Faker\Generator as Faker;

$factory->define(Product::class, function (Faker $faker) {
    return [
        'user_id'		=> User::all()->random()->id,
        'name' 			=> $faker->firstName,
        'description'	=> $faker->text,
        'price'			=> $faker->numberBetween($min = 1000, $max = 5000),
        'quantity'		=> $faker->numberBetween($min = 1, $max = 100),
        'shipping'		=> $faker->numberBetween($min = 0, $max = 1),
        'status'		=> $faker->numberBetween($min = 0, $max = 1),
    ];
});
