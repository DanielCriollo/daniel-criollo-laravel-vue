<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Inmueble extends Model
{

    protected $table ='inmuebles';

    protected $fillable = [
        'nombre_propietario', 'email_propietario', 'conjunto', 'torre', 'apto', 'direccion', 'cod_barrio'
    ];

    public function sector()
    {
        return $this->belongsTo(Sector::class, 'cod_barrio', 'id');
    }
}