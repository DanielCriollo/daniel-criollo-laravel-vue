<?php

namespace Database\Factories;

use App\Models\Departamento;
use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Pais;

class DepartamentoFactory extends Factory
{
    protected $model = Departamento::class;

    public function definition()
    {
        return [
            'nombre' => $this->faker->state,
            'cod_pais' => Pais::factory(),
        ];
    }
}
