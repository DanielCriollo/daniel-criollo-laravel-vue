<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up()
    {
        Schema::create('departamentos', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('cod_pais');
            $table->string('nombre', 50);
            $table->timestamps();

            $table->foreign('cod_pais')->references('id')->on('paises')->onDelete('cascade');
        });
    }

    public function down()
    {
        Schema::dropIfExists('departamentos');
    }
};
