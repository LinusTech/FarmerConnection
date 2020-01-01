<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Tag;
use Faker\Generator as Faker;

$factory->define(Tag::class, function (Faker $faker) {
    return [
        'tag_name'			=> $faker->name,
		'tag_slug' 			=> $faker->name, 
		'tag_description' 	=> $faker->text,
    ];
});
