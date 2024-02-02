<?php

namespace App\Http\Controllers;

use App\Models\Historico;
use Illuminate\Http\Request;

class HistoricoController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store()
    {
        $provincias = array(
            'Gipuzkoa' =>array(
                'id' => 20,
                'municipios' => array(
                    'Hondarribia' => 20043,
                    'Pasaia' => 20064,
                    'Donostia' => 20069,
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

        foreach($povincias as $provincia =>$provinciaData){
            foreach ($provinciaData['municipios'] as $municipio => $municipioId) {
        
                $response = Http::get("https://www.el-tiempo.net/api/json/v2/provincias/{$provinciaData['id']}/municipios/{$municipioId}");
        
        
                if ($response === false) {
                    throw new Exception("La solicitud no se pudo completar correctamente.");
                }
        
                $data = $response->json();
        
                if ($municipioId == 20069) {
                    $data['municipio']['NOMBRE'] = "Donostia";
                }

                Historico::create([
                    'fecha' => date('Y-m-d H:i:s'),
                    'temperatura' => $data['temperatura_actual'] == "" ? 0 : $data['temperatura_actual'],
                    'humedad' => $data ['humedad'],
                    'nombre' => $data['nombre']
                ]);
        }
    }

}
    /**
     * Display the specified resource.
     */
    public function show(Historico $historico)
    {

    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Historico $historico)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Historico $historico)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Historico $historico)
    {
        //
    }
}
