<?php

namespace App\Http\Controllers\Api;

use App\Models\Ciudad;
use App\Models\Sector;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;
use App\Http\Controllers\Controller;

class SectorApiController extends Controller
{
    public function index()
    {
        $sectores = Sector::with('ciudad.departamento.pais')->get();
        return response()->json($sectores);
    }

    public function store(Request $request)
    {
        $request->validate([
            'nombre' => 'required|unique:sectores|max:100',
            'cod_ciudad' => 'required|exists:ciudades,id',
        ]);

        $sector = new Sector();
        $sector->nombre = $request->input('nombre');
        $sector->cod_ciudad = $request->input('cod_ciudad');
        $sector->save();

        return response()->json(['message' => 'Sector creado con éxito'], 201);
    }

    public function show($id)
    {
        $sector = Sector::with('ciudad.departamento.pais')->findOrFail($id);
        return response()->json($sector);
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'nombre' => ['required', Rule::unique('sectores')->ignore($id), 'max:100'],
            'cod_ciudad' => 'required|exists:ciudades,id',
        ]);

        $sector = Sector::findOrFail($id);
        $sector->nombre = $request->input('nombre');
        $sector->cod_ciudad = $request->input('cod_ciudad');
        $sector->save();

        return response()->json(['message' => 'Sector actualizado con éxito']);
    }

    public function destroy($id)
    {
        $sector = Sector::findOrFail($id);
        $sector->delete();

        return response()->json(['message' => 'Sector eliminado con éxito']);
    }

    public function getSectoresPorCiudad(Ciudad $ciudad)
    {
        $sectores = $ciudad->sectores()->with('ciudad.departamento.pais')->get();
    
        return response()->json($sectores);
    }
}
