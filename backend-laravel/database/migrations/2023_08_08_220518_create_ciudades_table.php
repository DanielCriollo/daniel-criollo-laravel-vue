<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up()
    {
        Schema::create('ciudades', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('cod_departamento');
            $table->string('nombre', 50);
            $table->timestamps();

            $table->foreign('cod_departamento')->references('id')->on('departamentos')->onDelete('cascade');
        });
    }

    public function down()
    {
        Schema::dropIfExists('ciudades');
    }
};
