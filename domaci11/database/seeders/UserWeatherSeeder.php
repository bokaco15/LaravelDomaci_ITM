<?php

namespace Database\Seeders;

use App\Models\WeatherModel;
use Faker\Factory;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class UserWeatherSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //Progress Questions
        $numOfCity=$this->command->getOutput()->ask('Koliko gradova zelite da uneste');
        if(!$numOfCity) {$this->command->getOutput()->error('GRESKA!!!!'); return;}

        $faker = Factory::create(/*'sr_Latn_RS'*/);
//        dd($faker->city());
//        dd($faker->biasedNumberBetween(10, 35));

        //Pravljenje progressBara
        $this->command->getOutput()->progressStart($numOfCity);

        for($i=0;$i<$numOfCity;$i++)
        {
            $city = $faker->city();
//            dd($city);
            if(WeatherModel::where('city',$city)->exists()) {
                $this->command->getOutput()->error("Grad {$city} postoji");
                continue;
            }

            WeatherModel::create([
                'city'=>$city,
                'temperature'=>$faker->biasedNumberBetween('10','35')
            ]);

            //Brojac za progress bar
            $this->command->getOutput()->progressAdvance();
        }

            //kraj progress bara
            $this->command->getOutput()->progressFinish();

    }
}
