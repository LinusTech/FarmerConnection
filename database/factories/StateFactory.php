<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\State;
use App\Country;
use Faker\Generator as Faker;

$factory->define(State::class, function (Faker $faker) {
    return [
        'country_id' => Country::all()->random()->id,
        'state'	   => $faker->state,
    ];
});
