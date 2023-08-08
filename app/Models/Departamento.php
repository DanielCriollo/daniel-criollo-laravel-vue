<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Departamento extends Model
{

    protected $table ='departamentos';

    protected $fillable = ['cod_pais', 'nombre'];

    public function pais()
    {
        return $this->belongsTo(Pais::class, 'cod_pais', 'id');
    }

    public function ciudades()
    {
        return $this->hasMany(Ciudad::class, 'cod_departamento', 'id');
    }
}