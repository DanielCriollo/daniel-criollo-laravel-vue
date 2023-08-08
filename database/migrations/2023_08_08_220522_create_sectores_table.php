<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up()
    {
        Schema::create('sectores', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('cod_ciudad');
            $table->string('nombre', 100);
            $table->timestamps();

            $table->foreign('cod_ciudad')->references('id')->on('ciudades')->onDelete('cascade');
        });
    }

    public function down()
    {
        Schema::dropIfExists('sectores');
    }
};
