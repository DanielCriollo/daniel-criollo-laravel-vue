<?php

namespace App\Http\Controllers\Api;

use App\Models\Pais;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class PaisApiController extends Controller
{
    public function index()
    {
        $paises = Pais::all();
        return response()->json($paises);
    }

    public function store(Request $request)
    {
        $request->validate([
            'nombre' => 'required|max:50|unique:paises,nombre|string',
        ]);

        $pais = new Pais();
        $pais->nombre = $request->input('nombre');
        $pais->save();

        return response()->json(['message' => 'País creado con éxito'], 201);
    }

    public function show($id)
    {
        $pais = Pais::findOrFail($id);
        return response()->json($pais);
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'nombre' => 'required|max:50|string|unique:paises,nombre,'.$id,
        ]);

        $pais = Pais::findOrFail($id);
        $pais->nombre = $request->input('nombre');
        $pais->save();

        return response()->json(['message' => 'País actualizado con éxito']);
    }

    public function destroy($id)
    {
        $pais = Pais::findOrFail($id);
        $pais->delete();

        return response()->json(['message' => 'País eliminado con éxito']);
    }
}
