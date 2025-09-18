<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\Http;

class GetRealWeather extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'weather:get-real';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Ovo je opis get-real weather komande';

    /**
     * Execute the console command.
     */
    public function handle()
    {
//        echo "Pozdrav svima ja sam Cile";
        /*
        $url = 'http://reqres.in/api/users?page=2';
        $response = Http::withoutVerifying()->get($url);
        $odg = $response->json();
        dd($odg['data'][0]['email']);
        */
        $url = 'https://reqres.in/api/create';
        $response = Http::withHeaders([
            'x-api-key'=>'reqres-free-v1'
        ])->withoutVerifying()->post($url,[
           'name'=>'Borislav',
           'job'=>'IT Specialist'
        ]);
        dd($response->json());
    }
}
