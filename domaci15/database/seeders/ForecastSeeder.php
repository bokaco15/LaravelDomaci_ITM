<?php

namespace Database\Seeders;

use App\Models\Cities;
use App\Models\Forecast;
use Faker\Factory;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Arr;

class ForecastSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //dodavanje fakera
        $faker = Factory::create();
        $cities = Cities::all();

        if($cities->isEmpty()) return;
//        $date = $faker->date('Y-m-d', strtotime("+1 days"));
//        dd($date);

        $this->command->getOutput()->progressStart(count($cities) * 5);
        $counter = 0;

        foreach ($cities as $city)
        {

            for($i=0; $i<5; $i++)
            {
                $date = date('Y-m-d', strtotime("+$i days"));
                $weather_type = Forecast::WEATHERS[rand(0,3)];
                $forecast = Forecast::where(['city_id'=>$city->id, 'date'=>$date])->first();

                if(!$forecast)
                {

                    $temperature = null;

                    switch ($weather_type)
                    {
                        case "sunny":
                            $temperature = rand(-50,50);
                            break;
                        case "cloudy":
                            $temperature = rand(-50, 15);
                            break;
                        case "rainy":
                            $temperature = rand(-10,50);
                            break;
                        case "snowy":
                            $temperature = rand(-50,1);
                            break;
                    }


                    Forecast::create([
                       'city_id' => $city->id,
                       'temperature' => $temperature,
                        'date'=>$date,
                        'weather_type' => $weather_type,
                        'probabbility' => mt_rand(0, 100)
                    ]);
                    $counter++;
                    $this->command->getOutput()->progressAdvance();
                }
                else
                {
                    $this->command->getOutput()->error('Greska!!!');
                }
            }
        }

        $this->command->getOutput()->progressFinish();
        $this->command->getOutput()->success("Uspesno ste dodali {$counter} temperatura!!!");

    }
}
