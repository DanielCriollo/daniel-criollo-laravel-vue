<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;
use App\Models\Inmueble;
use App\Models\Sector;

class InmuebleApiTest extends TestCase
{
    use RefreshDatabase;

    public function test_can_create_inmueble()
    {
        $sector = Sector::factory()->create();

        $data = [
            'nombre_propietario' => 'Owner Name',
            'email_propietario' => 'owner@example.com',
            'conjunto' => 'Conjunto Name',
            'torre' => 'A',
            'apto' => '101',
            'direccion' => 'Address Example',
            'cod_barrio' => $sector->id,
        ];

        $response = $this->postJson('/api/inmuebles', $data);

        $response->assertStatus(201)
            ->assertJson(['message' => 'Inmueble creado con éxito']);
    }

    public function test_can_get_inmueble()
    {
        $inmueble = Inmueble::factory()->create();

        $response = $this->getJson("/api/inmuebles/{$inmueble->id}");

        $response->assertStatus(200)
            ->assertJson(['nombre_propietario' => $inmueble->nombre_propietario]);
    }

    public function test_can_update_inmueble()
    {
        $inmueble = Inmueble::factory()->create();
        $newData = [
            'nombre_propietario' => 'Updated Owner Name',
            'email_propietario' => 'updated@example.com',
            'conjunto' => 'Updated Conjunto Name',
            'torre' => 'B',
            'apto' => '202',
            'direccion' => 'Updated Address Example',
            'cod_barrio' => $inmueble->cod_barrio,
        ];

        $response = $this->putJson("/api/inmuebles/{$inmueble->id}", $newData);

        $response->assertStatus(200)
            ->assertJson(['message' => 'Inmueble actualizado con éxito']);
    }

    public function test_can_delete_inmueble()
    {
        $inmueble = Inmueble::factory()->create();

        $response = $this->deleteJson("/api/inmuebles/{$inmueble->id}");

        $response->assertStatus(200)
            ->assertJson(['message' => 'Inmueble eliminado con éxito']);
    }

    public function test_can_list_inmuebles()
    {
        Inmueble::factory(3)->create();

        $response = $this->getJson('/api/inmuebles');

        $response->assertStatus(200)
            ->assertJsonCount(3);
    }
}
