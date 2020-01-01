<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\File;
use Faker\Generator as Faker;

$factory->define(File::class, function (Faker $faker) {
    return [
        'file_name'	=>	$faker->word,
        'path'		=>	$faker->imageUrl,
        'extension' =>	$faker->fileExtension,
    ];
});
