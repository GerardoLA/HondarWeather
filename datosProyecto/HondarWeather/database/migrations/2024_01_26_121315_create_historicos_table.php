<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('historico_datos', function (Blueprint $table) {
            $table->timestamp('fecha');
            $table->float('temperatura');
            $table->float('humedad');
            $table->string('nombre');

            //clave primaria
            $table->primary(['nombre','fecha']);
            //foreign key
            $table->foreign('nombre')->references('nombre')->on('lugares');
            
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('historico_datos', function (Blueprint $table) {
            $table->dropForeign(['nombre']);
        });
    
    
        Schema::dropIfExists('historico_datos');
    }
};
