<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Database\Seeders\PaisesSeeder;
use Database\Seeders\CiudadesSeeder;
use Database\Seeders\InmueblesSeeder;
use Database\Seeders\DepartamentosSeeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        $this->call([
            PaisesSeeder::class,
            DepartamentosSeeder::class,
            CiudadesSeeder::class,
            SectoresSeeder::class,
            InmueblesSeeder::class,
        ]);
    }
}
