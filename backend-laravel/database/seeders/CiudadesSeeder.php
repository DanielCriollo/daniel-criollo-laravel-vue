<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Ciudad;
use Faker\Factory as Faker;

class CiudadesSeeder extends Seeder
{
    public function run()
    {
        $faker = Faker::create();
        
        for ($i = 0; $i < 30; $i++) {
            Ciudad::create([
                'cod_departamento' => rand(1, 20), // Assuming you have 20 departments
                'nombre' => $faker->city,
            ]);
        }
    }
}