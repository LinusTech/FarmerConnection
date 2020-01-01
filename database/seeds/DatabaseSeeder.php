<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $this->call(UsersTableSeeder::class);
        $this->call(ExpertisesTableSeeder::class);
        $this->call(CategoriesTableSeeder::class);
        $this->call(TagsTableSeeder::class);
        $this->call(PostTypesTableSeeder::class);
        $this->call(PostsTableSeeder::class);
        $this->call(FilesTableSeeder::class);
        $this->call(RolesTableSeeder::class);
        $this->call(CountriesTableSeeder::class);
        $this->call(StatesTableSeeder::class);
        $this->call(CitiesTableSeeder::class);
        $this->call(ProfilesTableSeeder::class);
        $this->call(ProductsTableSeeder::class);
        $this->call(RatingsTableSeeder::class);
        $this->call(ConsultantRatingsTableSeeder::class);
        $this->call(CartsTableSeeder::class);
        $this->call(CommentsTableSeeder::class);
        $this->call(OrdersTableSeeder::class);

    }
}
