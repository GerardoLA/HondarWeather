<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Historico extends Model
{
    use HasFactory;

    protected $table ="historico_datos";

    public $timestamps = false;
    
    protected $fillable = [
        "nombre",
        "temperatura",
        "humedad",
        "fecha"
    ];

}
