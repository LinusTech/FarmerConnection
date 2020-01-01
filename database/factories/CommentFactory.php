<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Comment;
use Faker\Generator as Faker;

$factory->define(Comment::class, function (Faker $faker) {
    return [
    	'post_id'	=> Post::all()->random()->id,
        'user_id'	=> User::all()->random()->id,
        'message'	=> $faker->text,
        'parent'	=> $faker->numberBetween($min = 0, $max = 1),
		'status'	=> $faker->numberBetween($min = 0, $max = 1),
    ];
});
