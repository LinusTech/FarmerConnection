<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Role;
use Faker\Generator as Faker;

$factory->define(Role::class, function (Faker $faker) {
    return [
        'roles'			=> $faker->word,
        'display_name'	=> $faker->sentence,
    	'description'	=> $faker->sentence,
        'status'		=> $faker->numberBetween($min = 0, $max = 1),
    ];
});
