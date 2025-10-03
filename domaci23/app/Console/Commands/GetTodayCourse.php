<?php

namespace App\Console\Commands;

use App\Models\ExchangeRates;
use Carbon\Carbon;
use Illuminate\Console\Command;
use Illuminate\Support\Facades\Http;

class GetTodayCourse extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'CashCourse:getToday {value}';

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
        $code = $this->argument('value');

        $response = Http::withoutVerifying()->get('https://kurs.resenje.org/api/v1/currencies/'.$code.'/rates/today');
        $data = $response->json();

        if(!isset($data['message']))
        {
            $todayCurrency = ExchangeRates::getCurrencyForToday($data['code']);
            if($todayCurrency !== null) {
                $this->info('Ovaj zapis vec postoji');
                return;
            }
                ExchangeRates::create(['currency' => $data['code'], 'value' => $data['exchange_middle']]);
                $this->info('Upijesno ste dodali valutu u tabelu');

        } else {
            $this->output->error($data['message']);
        }
    }
}
