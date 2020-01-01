<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Rating;
use Faker\Generator as Faker;

$factory->define(Rating::class, function (Faker $faker) {
    return [
        'product_id' 	=> User::all()->random()->id,
        'user_id' 		=> User::all()->random()->id,
        'rating'		=>
    ];
});
