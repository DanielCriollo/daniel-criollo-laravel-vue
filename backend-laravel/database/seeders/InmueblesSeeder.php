<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Inmueble;
use Faker\Factory as Faker;

class InmueblesSeeder extends Seeder
{
    public function run()
    {
        $faker = Faker::create();
        
        for ($i = 0; $i < 50; $i++) {
            Inmueble::create([
                'nombre_propietario' => $faker->name,
                'email_propietario' => $faker->email,
                'conjunto' => $faker->word,
                'torre' => $faker->randomLetter,
                'apto' => $faker->randomNumber(3),
                'direccion' => $faker->address,
                'cod_barrio' => rand(1, 40), // Assuming you have 40 sectors
            ]);
        }
    }
}