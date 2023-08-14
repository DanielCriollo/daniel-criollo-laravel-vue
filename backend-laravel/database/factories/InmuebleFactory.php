<?php

namespace Database\Factories;

use App\Models\Inmueble;
use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Sector;

class InmuebleFactory extends Factory
{
    protected $model = Inmueble::class;

    public function definition()
    {
        return [
            'nombre_propietario' => $this->faker->name,
            'email_propietario' => $this->faker->email,
            'conjunto' => $this->faker->word,
            'torre' => $this->faker->randomLetter,
            'apto' => $this->faker->randomNumber(3),
            'direccion' => $this->faker->address,
            'cod_barrio' => Sector::factory(),
        ];
    }
}
