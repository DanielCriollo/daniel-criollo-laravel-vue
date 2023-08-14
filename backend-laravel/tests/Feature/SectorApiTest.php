<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;
use App\Models\Sector;
use App\Models\Ciudad;

class SectorApiTest extends TestCase
{
    use RefreshDatabase;

    public function test_can_create_sector()
    {
        $ciudad = Ciudad::factory()->create();

        $data = [
            'nombre' => 'Sector Name',
            'cod_ciudad' => $ciudad->id,
        ];

        $response = $this->postJson('/api/sectores', $data);

        $response->assertStatus(201)
            ->assertJson(['message' => 'Sector creado con éxito']);
    }

    public function test_can_get_sector()
    {
        $sector = Sector::factory()->create();

        $response = $this->getJson("/api/sectores/{$sector->id}");

        $response->assertStatus(200)
            ->assertJson(['nombre' => $sector->nombre]);
    }

    public function test_can_update_sector()
    {
        $sector = Sector::factory()->create();
        $newData = [
            'nombre' => 'Updated Sector Name',
            'cod_ciudad' => $sector->cod_ciudad,
        ];

        $response = $this->putJson("/api/sectores/{$sector->id}", $newData);

        $response->assertStatus(200)
            ->assertJson(['message' => 'Sector actualizado con éxito']);
    }

    public function test_can_delete_sector()
    {
        $sector = Sector::factory()->create();

        $response = $this->deleteJson("/api/sectores/{$sector->id}");

        $response->assertStatus(200)
            ->assertJson(['message' => 'Sector eliminado con éxito']);
    }

    public function test_can_list_sectores()
    {
        Sector::factory(3)->create();

        $response = $this->getJson('/api/sectores');

        $response->assertStatus(200)
            ->assertJsonCount(3);
    }
}
