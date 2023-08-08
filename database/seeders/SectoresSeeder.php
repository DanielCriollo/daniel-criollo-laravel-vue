<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Sector;
use Faker\Factory as Faker;

class SectoresSeeder extends Seeder
{
    public function run()
    {
        $faker = Faker::create();
        
        for ($i = 0; $i < 40; $i++) {
            Sector::create([
                'cod_ciudad' => rand(1, 30), // Assuming you have 30 cities
                'nombre' => $faker->streetName,
            ]);
        }
    }
}