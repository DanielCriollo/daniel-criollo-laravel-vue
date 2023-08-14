<?php

namespace Database\Factories;

use App\Models\Sector;
use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Ciudad;

class SectorFactory extends Factory
{
    protected $model = Sector::class;

    public function definition()
    {
        return [
            'nombre' => $this->faker->streetName,
            'cod_ciudad' => Ciudad::factory(),
        ];
    }
}
