<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Profile;
use Faker\Generator as Faker;

$factory->define(Profile::class, function (Faker $faker) {
    return [
        'user_id'		=> User::all()->random()->id,
        'role_id'		=> Role::all()->random()->id,
        //'city_id'		=> City::all()->random()->id,
        'expertise_id'	=> Expertise::all()->random()->id,
        'mobile_number'	=> $faker->creditCardNumber,
        'image'			=> $faker->imageUrl,
        'status'		=> $faker->numberBetween($min = 0, $max = 1),
    ];
});
