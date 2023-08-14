<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\PaisApiController;
use App\Http\Controllers\Api\CiudadApiController;
use App\Http\Controllers\Api\SectorApiController;
use App\Http\Controllers\Api\InmuebleApiController;
use App\Http\Controllers\Api\DepartamentoApiController;


Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::apiResource('paises', PaisApiController::class);
Route::apiResource('departamentos', DepartamentoApiController::class);
Route::apiResource('ciudades', CiudadApiController::class);
Route::apiResource('sectores', SectorApiController::class);
Route::apiResource('inmuebles', InmuebleApiController::class);

Route::get('departamentos-por-pais/{pais}', [DepartamentoApiController::class,'getDepartamentosPorPais']);
Route::get('ciudades-por-departamento/{departamento}', [CiudadApiController::class,'getCiudadesPorDepartamento']);
Route::get('sectores-por-ciudad/{ciudad}', [SectorApiController::class,'getSectoresPorCiudad']);
Route::get('inmuebles-por-sector/{sector}', [InmuebleApiController::class,'getInmueblesPorSector']);
