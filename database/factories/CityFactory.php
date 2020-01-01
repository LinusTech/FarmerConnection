<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\City;
use App\State;
use Faker\Generator as Faker;

$factory->define(City::class, function (Faker $faker) {
    return [
        'state_id' => State::all()->random()->id,
        'city'	   => $faker->city,
    ];
});
