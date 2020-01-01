<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Category;
use Faker\Generator as Faker;

$factory->define(Category::class, function (Faker $faker) {
    return [
        'category_name'			=> $faker->name,
		'category_slug' 		=> $faker->name, 
		'category_description' 	=> $faker->text,
		'parent'				=> $faker->numberBetween($min = 0, $max = 1),
    ];
});
