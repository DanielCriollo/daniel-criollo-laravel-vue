<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up()
    {
        Schema::create('inmuebles', function (Blueprint $table) {
            $table->id();
            $table->string('nombre_propietario', 60);
            $table->string('email_propietario', 100);
            $table->string('conjunto', 45);
            $table->string('torre', 45);
            $table->string('apto', 45);
            $table->string('direccion', 200);
            $table->unsignedBigInteger('cod_barrio');
            $table->timestamps();

            $table->foreign('cod_barrio')->references('id')->on('sectores')->onDelete('cascade');
        });
    }

    public function down()
    {
        Schema::dropIfExists('inmuebles');
    }
};
