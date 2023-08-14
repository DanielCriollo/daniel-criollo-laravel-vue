<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;
use App\Models\Departamento;
use App\Models\Pais;

class DepartamentoApiTest extends TestCase
{
    use RefreshDatabase;

    public function test_can_create_departamento()
    {
        $pais = Pais::factory()->create();

        $data = [
            'nombre' => 'Department Name',
            'cod_pais' => $pais->id,
        ];

        $response = $this->postJson('/api/departamentos', $data);

        $response->assertStatus(201)
            ->assertJson(['message' => 'Departamento creado con éxito']);
    }

    public function test_can_get_departamento()
    {
        $departamento = Departamento::factory()->create();

        $response = $this->getJson("/api/departamentos/{$departamento->id}");

        $response->assertStatus(200)
            ->assertJson(['nombre' => $departamento->nombre]);
    }

    public function test_can_update_departamento()
    {
        $departamento = Departamento::factory()->create();
        $newData = [
            'nombre' => 'Updated Department Name',
            'cod_pais' => $departamento->cod_pais,
        ];

        $response = $this->putJson("/api/departamentos/{$departamento->id}", $newData);

        $response->assertStatus(200)
            ->assertJson(['message' => 'Departamento actualizado con éxito']);
    }

    public function test_can_delete_departamento()
    {
        $departamento = Departamento::factory()->create();

        $response = $this->deleteJson("/api/departamentos/{$departamento->id}");

        $response->assertStatus(200)
            ->assertJson(['message' => 'Departamento eliminado con éxito']);
    }

    public function test_can_list_departamentos()
    {
        Departamento::factory(3)->create();

        $response = $this->getJson('/api/departamentos');

        $response->assertStatus(200)
            ->assertJsonCount(3);
    }
}
