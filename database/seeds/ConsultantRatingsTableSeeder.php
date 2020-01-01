<?php

use Illuminate\Database\Seeder;

class ConsultantRatingsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(\App\ConsultantRating::class, 5)->create();
    }
}
