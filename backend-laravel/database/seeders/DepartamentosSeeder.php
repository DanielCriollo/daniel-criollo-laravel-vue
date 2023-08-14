<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Departamento;
use Faker\Factory as Faker;

class DepartamentosSeeder extends Seeder
{
    public function run()
    {
        $faker = Faker::create();
        
        for ($i = 0; $i < 20; $i++) {
            Departamento::create([
                'cod_pais' => rand(1, 10), // Assuming you have 10 countries
                'nombre' => $faker->state,
            ]);
        }
    }
}
