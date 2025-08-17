<?php

namespace Database\Seeders;

use App\Models\Cities;
use Faker\Factory;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class CitiesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {

        // 2. korak -> napraviti faker i pozvati klasu Factori i metodu Create za pravljenje fakera
        $faker = Factory::create();

        // 1. korak -> Napraviti komandu za broj gradova
        $numberOfCities = $this->command->getOutput()->ask('Koliko zelite da kreirate gradova?');
        if(!$numberOfCities) {
            $this->command->getOutput()->error('Greska!!! Uneiste broj gradova!');
            return;
        }

        $this->command->getOutput()->progressStart($numberOfCities);

        $counter = 0;

        //3. Korak napraviti da se upisuje grad u tabelu Cities
        for($i=0; $i<$numberOfCities; $i++) {
            $city = $faker->unique()->city();
            if(Cities::where('name', $city)->exists()) {
                $this->command->getOutput()->error("Greska!!, $city vec postoji");
                continue;
            }
                Cities::create([
                    'name'=>$city
                ]);

                $counter++;

                $this->command->getOutput()->progressAdvance();
        }

        $this->command->getOutput()->progressFinish();

        $this->command->getOutput()->success("Uspesno ste uneli {$counter} grada tabelu");

    }
}
