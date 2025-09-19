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
    protected $signature = 'weather:get-current-weather-api {city}';

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
        $city = $this->argument('city');

        $url = 'http://api.weatherapi.com/v1/current.json';
        $response = Http::withoutVerifying()->get($url, [
            'key'=>'9068eeb9f8ef44b2a6a200748251709',
            'q'=>$city,
            'lang'=>'sr'
        ]);

        $data = $response->json();
        if(isset($data['error'])) echo $this->output->error('Ovaj grad ne postoji');
        else {
            dd($data);
        }
        /*
        if($response->status() !== 200) echo( "Greska");
        else {
            $data = $response->json();
            echo $data['location']['name'] . " " . $data['current']['temp_c'];
        }
        */
    }
}
