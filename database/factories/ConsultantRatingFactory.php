<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\ConsultantRating;
use Faker\Generator as Faker;

$factory->define(ConsultantRating::class, function (Faker $faker) {
    return [
        'consultant_id' => User::all()->random()->id,
        'user_id' 		=> User::all()->random()->id,
        'rating'		=> 
    ];
});
