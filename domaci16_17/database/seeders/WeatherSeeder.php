<?php

namespace Database\Seeders;

use App\Models\Cities;
use App\Models\WeatherModel;
use Faker\Factory;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class WeatherSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        /*
        $prognoza = [
            'Beograd'    => 33,
            'Zagreb'     => 29,
            'Sarajevo'   => 27,
            'Podgorica'  => 35,
            'Skoplje'    => 32,
            'Priština'   => 31,
            'Sofija'     => 30,
            'Ljubljana'  => 28,
            'Split'      => 34,
            'Banja Luka' => 29,
        ];

        foreach ($prognoza as $city => $temp)
        {
            WeatherModel::create([
                'city'=>$city,
                'temperature'=>$temp
            ]);
        }
        */

        //UPDATE WEATHER SEEDERA

        $faker = Factory::create();
        $cities = Cities::all();
        $counter = 0;
        foreach ($cities as $city)
        {
            $cityWM = WeatherModel::where(['city_id'=>$city->id])->first();
            if(!$cityWM) {
                WeatherModel::create([
                    'city_id'=>$city->id,
                    'temperature'=>$faker->randomFloat(1, 10,40)
                ]);
                $counter++;
            }
        }

        $this->command->getOutput()->success("Uspijesno ste dodali {$counter} temperatura");

    }
}
