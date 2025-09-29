<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\Http;

class GetTodayCourse extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'CashCourse:getToday';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'This command getting todays cash course from RSD to EUR and USD';

    /**
     * Execute the console command.
     */
    public function handle()
    {
        $response = Http::withoutVerifying()->get(env('TODAY_CASH_COURSE_API_URL'));
        $data = $response->json();
        //dolar 38, eur 14

        $dolar = $data['rates'][38];
        $eur = $data['rates'][14];

        $dolarName=$dolar['code'];
        $dolarCourse=$dolar['exchange_middle'];

        $eurName=$eur['code'];
        $eurCourse=$eur['exchange_middle'];

        $this->info("{$dolarName}: {$dolarCourse} RSD\n{$eurName}: {$eurCourse} RSD");
    }
}
