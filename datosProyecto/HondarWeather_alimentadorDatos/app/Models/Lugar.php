<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Lugar extends Model
{
    use HasFactory;

    protected $table = "lugares";

    protected $keyType = "string";
    protected $primaryKey = "nombre";


    protected $fillable = [
        "nombre",
        "latitud",
        "longitud",
        "lluvia",
        "temperatura",
        "humedad",
        "viento",
        "fecha"
        

    ];
}
