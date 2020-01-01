<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\ConsultantRating;
use App\User;
use Faker\Generator as Faker;

$factory->define(ConsultantRating::class, function (Faker $faker) {
    return [
        'consultant_id' => User::all()->random()->id,
        'user_id' 		=> User::all()->random()->id,
        'rating'		=> $faker->numberBetween($min = 0, $max = 10),
    ];
});
