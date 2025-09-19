<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\Http;

class GetForecastApi extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'weather:forecast-api {city}';

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
        $city = $this->argument('city');
            // Uzimanje API URL-a
        $url = env('WEATHER_API_URL').'v1/forecast.json';
            // uzimanje podataka i odgovora
        $response = Http::withoutVerifying()->get($url, [
            'key' => env('WEATHER_API_KEY'),
            'q' => $city,
            'days' => '5'
        ]);

            //provjera da li grad postoji
        $data = $response->json();

        if(isset($data['error'])) echo $this->output->error($data['error']['message']);
        else dd($data);


    }
}
