<?php

namespace Database\Seeders;

use App\Models\Pais;
use App\Models\Ciudad;
use App\Models\Sector;
use App\Models\Inmueble;
use App\Models\Departamento;
use Illuminate\Database\Seeder;
use Database\Seeders\PaisesSeeder;
use Database\Seeders\CiudadesSeeder;
use Database\Seeders\InmueblesSeeder;
use Database\Seeders\DepartamentosSeeder;

class DatabaseSeeder extends Seeder
{
    
    public function run(): void
    {
        Pais::factory()->count(10)->create();
        Departamento::factory()->count(10)->create();
        Ciudad::factory()->count(20)->create();
        Sector::factory()->count(30)->create();
        Inmueble::factory()->count(50)->create();
        
        $this->call([
            PaisesSeeder::class,
            DepartamentosSeeder::class,
            CiudadesSeeder::class,
            SectoresSeeder::class,
            InmueblesSeeder::class,
        ]);
    }
}
