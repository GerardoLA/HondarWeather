<?php

namespace App\Http\Controllers;
use App\Models\Lugar;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;


class LugarController extends Controller
{
       
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
       
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store()
    {
        $provincias = array(
            'Gipuzkoa' => array(
                'id' => 20,
                'municipios' => array(
                    'Donosti' => 20069,
                    'Hondarribia' => 20036,
                    'Pasaia' => 20064,
                    'Getaria' => 20039    
                )
            ),
            'Bizkaia' => array(
                'id' => 48,
                'municipios' => array(
                    'Bilbo' => 48020
                )
            )
        );
        foreach ($provincias as $provincia => $provinciaData) {
            foreach ($provinciaData['municipios'] as $municipio => $municipioId) {
                
                $response = Http::get("https://www.el-tiempo.net/api/json/v2/provincias/{$provinciaData['id']}/municipios/{$municipioId}");
        
        
                if ($response === false) {
                    throw new Exception("La solicitud no se pudo completar correctamente.");
                }
        
                $data = $response->json();
        
                if ($municipioId == 20069) {
                    $data['municipio']['NOMBRE'] = "Donostia"; //cambio de nombre porque la Api lo da como Donostia/San Sebastian
                }

                // 
                $lugar = Lugar::where('nombre', $data['municipio']['NOMBRE'])->first();
                //Si encuentra la variable lugar actualizalo, si no lo crea
                if($lugar){
                    $lugar -> temperatura = $data['temperatura_actual'] == "" ? 0 : $data['temperatura_actual'];
                    $lugar -> humedad = $data['humedad'] == "" ? 0 : $data['humedad'];
                    $lugar -> viento = $data['viento'] == "" ? 0 : $data['viento'];
                    $lugar -> lluvia = $data['lluvia'] == "" ? 0 : $data['lluvia'];
                    
                    $lugar->save();
                }
                else{
                Lugar::create([
                    'nombre' => $data['municipio']['NOMBRE'],
                    'latitud' => $data['municipio']['LATITUD_ETRS89_REGCAN95'],
                    'longitud' => $data['municipio']['LONGITUD_ETRS89_REGCAN95'],
                    'lluvia' => $data['lluvia'] == "" ? 0 : $data['lluvia'],
                    'temperatura' => $data['temperatura_actual'] == "" ? 0 : $data['temperatura_actual'],
                    'humedad' => $data['humedad'] == "" ? 0 : $data['humedad'],
                    'viento' => $data['viento'] == "" ? 0 : $data['viento'],
                    
                ]);
                
        
            }
        }
            }
        
        
    }
            /**
             * Update the specified resource in storage.
             */
            public function update()
            {
                //
            }
            
        
           
        }