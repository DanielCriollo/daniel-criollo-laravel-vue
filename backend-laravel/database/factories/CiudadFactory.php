<?php

namespace Database\Factories;

use App\Models\Ciudad;
use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Departamento;

class CiudadFactory extends Factory
{
    protected $model = Ciudad::class;

    public function definition()
    {
        return [
            'nombre' => $this->faker->city,
            'cod_departamento' => Departamento::factory(),
        ];
    }
}
