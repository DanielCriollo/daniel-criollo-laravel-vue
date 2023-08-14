<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;
use App\Models\Ciudad;
use App\Models\Departamento;

class CiudadApiTest extends TestCase
{
    use RefreshDatabase;

    public function test_can_create_ciudad()
    {
        $departamento = Departamento::factory()->create();

        $data = [
            'nombre' => 'City Name',
            'cod_departamento' => $departamento->id,
        ];

        $response = $this->postJson('/api/ciudades', $data);

        $response->assertStatus(201)
            ->assertJson(['message' => 'Ciudad creada con éxito']);
    }

    public function test_can_get_ciudad()
    {
        $ciudad = Ciudad::factory()->create();

        $response = $this->getJson("/api/ciudades/{$ciudad->id}");

        $response->assertStatus(200)
            ->assertJson(['nombre' => $ciudad->nombre]);
    }

    public function test_can_update_ciudad()
    {
        $ciudad = Ciudad::factory()->create();
        $newData = [
            'nombre' => 'Updated City Name',
            'cod_departamento' => $ciudad->cod_departamento,
        ];

        $response = $this->putJson("/api/ciudades/{$ciudad->id}", $newData);

        $response->assertStatus(200)
            ->assertJson(['message' => 'Ciudad actualizada con éxito']);
    }

    public function test_can_delete_ciudad()
    {
        $ciudad = Ciudad::factory()->create();

        $response = $this->deleteJson("/api/ciudades/{$ciudad->id}");

        $response->assertStatus(200)
            ->assertJson(['message' => 'Ciudad eliminada con éxito']);
    }

    public function test_can_list_ciudades()
    {
        Ciudad::factory(3)->create();

        $response = $this->getJson('/api/ciudades');

        $response->assertStatus(200)
            ->assertJsonCount(3);
    }
}
