<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;
use App\Models\Pais;

class PaisApiTest extends TestCase
{
    use RefreshDatabase;

    public function test_can_create_pais()
    {
        $data = [
            'nombre' => 'Country Name',
        ];

        $response = $this->postJson('/api/paises', $data);

        $response->assertStatus(201)
            ->assertJson(['message' => 'País creado con éxito']);
    }

    public function test_can_get_pais()
    {
        $pais = Pais::factory()->create();

        $response = $this->getJson("/api/paises/{$pais->id}");

        $response->assertStatus(200)
            ->assertJson(['nombre' => $pais->nombre]);
    }

    public function test_can_update_pais()
    {
        $pais = Pais::factory()->create();
        $newData = [
            'nombre' => 'Updated Country Name',
        ];

        $response = $this->putJson("/api/paises/{$pais->id}", $newData);

        $response->assertStatus(200)
            ->assertJson(['message' => 'País actualizado con éxito']);
    }

    public function test_can_delete_pais()
    {
        $pais = Pais::factory()->create();

        $response = $this->deleteJson("/api/paises/{$pais->id}");

        $response->assertStatus(200)
            ->assertJson(['message' => 'País eliminado con éxito']);
    }

    public function test_can_list_paises()
    {
        Pais::factory(3)->create();

        $response = $this->getJson('/api/paises');

        $response->assertStatus(200)
            ->assertJsonCount(3);
    }
}
