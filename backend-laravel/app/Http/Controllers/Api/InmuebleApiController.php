<?php

namespace App\Http\Controllers\Api;

use App\Models\Sector;
use App\Models\Inmueble;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class InmuebleApiController extends Controller
{
    public function index()
    {
        $inmuebles = Inmueble::with('sector.ciudad.departamento.pais')->get();
        return response()->json($inmuebles);
    }

    public function store(Request $request)
    {
        $request->validate([
            'nombre_propietario' => 'required|max:60',
            'email_propietario' => 'required|email|max:100',
            'conjunto' => 'required|max:45',
            'torre' => 'required|max:45',
            'apto' => 'required|max:45',
            'direccion' => 'required|max:200',
            'cod_barrio' => 'required|exists:sectores,id',
        ]);

        $inmueble = new Inmueble();
        $inmueble->nombre_propietario = $request->input('nombre_propietario');
        $inmueble->email_propietario = $request->input('email_propietario');
        $inmueble->conjunto = $request->input('conjunto');
        $inmueble->torre = $request->input('torre');
        $inmueble->apto = $request->input('apto');
        $inmueble->direccion = $request->input('direccion');
        $inmueble->cod_barrio = $request->input('cod_barrio');
        $inmueble->save();

        return response()->json(['message' => 'Inmueble creado con éxito'], 201);
    }

    public function show($id)
    {
        $inmueble = Inmueble::with('sector.ciudad.departamento.pais')->findOrFail($id);
        return response()->json($inmueble);
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'nombre_propietario' => 'required|max:60',
            'email_propietario' => 'required|email|max:100',
            'conjunto' => 'required|max:45',
            'torre' => 'required|max:45',
            'apto' => 'required|max:45',
            'direccion' => 'required|max:200',
            'cod_barrio' => 'required|exists:sectores,id',
        ]);

        $inmueble = Inmueble::findOrFail($id);
        $inmueble->nombre_propietario = $request->input('nombre_propietario');
        $inmueble->email_propietario = $request->input('email_propietario');
        $inmueble->conjunto = $request->input('conjunto');
        $inmueble->torre = $request->input('torre');
        $inmueble->apto = $request->input('apto');
        $inmueble->direccion = $request->input('direccion');
        $inmueble->cod_barrio = $request->input('cod_barrio');
        $inmueble->save();

        return response()->json(['message' => 'Inmueble actualizado con éxito']);
    }

    public function destroy($id)
    {
        $inmueble = Inmueble::findOrFail($id);
        $inmueble->delete();

        return response()->json(['message' => 'Inmueble eliminado con éxito']);
    }

    public function getInmueblesPorSector(Sector $sector)
    {
        return $sector->inmuebles->with('sector')->with('ciudad')->with('departamento')->get();
    }
}
