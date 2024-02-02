<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Http\Controllers\LugarController;
class alimentaBBDD extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'app:alimenta-b-b-d-d';

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
        $almacenaLugar -> store();
        
    }
}
