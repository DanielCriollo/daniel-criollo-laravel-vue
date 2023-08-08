<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Sector extends Model
{

    protected $table ='sectores';

    protected $fillable = ['cod_ciudad', 'nombre'];

    public function ciudad()
    {
        return $this->belongsTo(Ciudad::class, 'cod_ciudad', 'id');
    }

    public function inmuebles()
    {
        return $this->hasMany(Inmueble::class, 'cod_barrio', 'id');
    }
}