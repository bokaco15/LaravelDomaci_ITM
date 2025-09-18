<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\Http;

class GetSingleUserAPI extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'user:get-single-user';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Test command for get single user from regres.in';

    /**
     * Execute the console command.
     */
    public function handle()
    {
        $url = 'https://reqres.in/api/users/2';
        $request = Http::withHeaders([
            'x-api-key'=>'reqres-free-v1'
        ])->withoutVerifying()->get($url);
        dd($request->json()['data']);
    }
}
