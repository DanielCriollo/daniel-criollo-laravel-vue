<?php

namespace App\Http\Controllers\Api;

use App\Models\Ciudad;
use App\Models\Departamento;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;
use App\Http\Controllers\Controller;

class CiudadApiController extends Controller
{
    public function index()
    {
        $ciudades = Ciudad::with('departamento.pais')->get();
        return response()->json($ciudades);
    }

    public function store(Request $request)
    {
        $request->validate([
            'nombre' => 'required|unique:ciudades|max:50',
            'cod_departamento' => 'required|exists:departamentos,id', 
        ]);

        $ciudad = new Ciudad();
        $ciudad->nombre = $request->input('nombre');
        $ciudad->cod_departamento = $request->input('cod_departamento');
        $ciudad->save();

        return response()->json(['message' => 'Ciudad creada con éxito'], 201);
    }

    public function show($id)
    {
        $ciudad = Ciudad::with('departamento.pais')->findOrFail($id);
        return response()->json($ciudad);
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'nombre' => ['required', Rule::unique('ciudades')->ignore($id), 'max:50'],
            'cod_departamento' => 'required|exists:departamentos,id',
        ]);

        $ciudad = Ciudad::findOrFail($id);
        $ciudad->nombre = $request->input('nombre');
        $ciudad->cod_departamento = $request->input('cod_departamento');
        $ciudad->save();

        return response()->json(['message' => 'Ciudad actualizada con éxito']);
    }

    public function destroy($id)
    {
        $ciudad = Ciudad::findOrFail($id);
        $ciudad->delete();

        return response()->json(['message' => 'Ciudad eliminada con éxito']);
    }

    public function getCiudadesPorDepartamento(Departamento $departamento)
    {
        return $departamento->ciudades;
    }
}
