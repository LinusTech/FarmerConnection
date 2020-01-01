<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Expertise;
use Faker\Generator as Faker;

$factory->define(Expertise::class, function (Faker $faker) {
    return [
        'level' => $faker->firstName,
    ];
});
