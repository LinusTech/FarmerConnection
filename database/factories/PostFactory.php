<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Post;
use App\User;
use App\PostType;	
use Faker\Generator as Faker;

$factory->define(Post::class, function (Faker $faker) {
    return [
    	'user_id'		=> User::all()->random()->id,
        'post_type_id'	=> PostType::all()->random()->id,
        'title'		  	=> $faker->sentence,
        'summary'	  	=> $faker->text,
        'description' 	=> $faker->text,
        'status'	  	=> $faker->numberBetween($min = 0, $max = 1),
    ];
});
