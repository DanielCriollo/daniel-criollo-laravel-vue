<?php

namespace Database\Factories;

use App\Models\Pais;
use Illuminate\Database\Eloquent\Factories\Factory;

class PaisFactory extends Factory
{
    protected $model = Pais::class;

    public function definition()
    {
        $uniqueCountryName = $this->faker->unique()->country;

        return [
            'nombre' => substr($uniqueCountryName, 0, 50),
        ];
    }
}
