<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Ciudad extends Model
{
    protected $table ='ciudades';

    protected $fillable = ['cod_departamento', 'nombre'];

    public function departamento()
    {
        return $this->belongsTo(Departamento::class, 'cod_departamento', 'id');
    }

    public function sectores()
    {
        return $this->hasMany(Sector::class, 'cod_ciudad', 'id');
    }
}