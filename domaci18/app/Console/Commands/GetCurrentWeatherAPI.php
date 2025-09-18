<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\Http;

class GetCurrentWeatherAPI extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'weather:get-current-weather-api';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Getting current temp api';

    /**
     * Execute the console command.
     */
    public function handle()
    {
        $url = 'http://api.weatherapi.com/v1/current.json';
        $response = Http::withoutVerifying()->get($url, [
            'key'=>'9068eeb9f8ef44b2a6a200748251709',
            'q'=>'bijeljina',
        ]);
//        dd($response->json());
        $data = $response->json();
        echo $data['location']['name'] . " " . $data['current']['temp_c'];
    }
}
