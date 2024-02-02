<?php

namespace App\Console\Commands;
use App\Http\Controllers\LugarController;
use Illuminate\Console\Command;

class alimentacionAleatorios extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'app:alimentacion-aleatorios';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Command description';

    /**
     * Execute the console command.
     */
    public function handle()
    {
        $almacenaLugar = new LugarController();
        $almacenaLugar -> updateDatosRandom();
    }
}
