<?php

namespace App\Http\Controllers\Api;

use App\Models\Pais;
use App\Models\Departamento;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;
use App\Http\Controllers\Controller;

class DepartamentoApiController extends Controller
{
    public function index()
    {
        $departamentos = Departamento::with('pais')->get();
        return response()->json($departamentos);
    }

    public function store(Request $request)
    {
        $request->validate([
            'nombre' => 'required|unique:departamentos|max:50',
            'cod_pais' => 'required|exists:paises,id',
        ]);

        $departamento = new Departamento();
        $departamento->nombre = $request->input('nombre');
        $departamento->cod_pais = $request->input('cod_pais');
        $departamento->save();

        return response()->json(['message' => 'Departamento creado con éxito'], 201);
    }

    public function show($id)
    {
        $departamento = Departamento::findOrFail($id);
        return response()->json($departamento);
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'nombre' => ['required', Rule::unique('departamentos')->ignore($id), 'max:50'],
            'cod_pais' => 'required|exists:paises,id',
        ]);

        $departamento = Departamento::findOrFail($id);
        $departamento->nombre = $request->input('nombre');
        $departamento->cod_pais = $request->input('cod_pais');
        $departamento->save();

        return response()->json(['message' => 'Departamento actualizado con éxito']);
    }

    public function destroy($id)
    {
        $departamento = Departamento::findOrFail($id);
        $departamento->delete();

        return response()->json(['message' => 'Departamento eliminado con éxito']);
    }

    public function getDepartamentosPorPais(Pais $pais)
    {
        $departamentos = $pais->departamentos()->with('pais')->get();
    
        return response()->json($departamentos);
    }
    
}
