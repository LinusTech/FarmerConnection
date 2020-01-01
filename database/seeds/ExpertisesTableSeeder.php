<?php

use Illuminate\Database\Seeder;

class ExpertisesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(\App\Expertise::class, 5)->create();
    }
}
