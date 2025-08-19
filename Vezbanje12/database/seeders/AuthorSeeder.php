<?php

namespace Database\Seeders;

use App\Models\Author;
use Faker\Factory;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class AuthorSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Factory::create('sr_Latn_RS');
        $this->command->getOutput()->progressStart(50);


        for($i=0; $i<50; $i++)
        {
            Author::create([
                'name'=>$faker->name()
            ]);
            $this->command->getOutput()->progressAdvance();
        }

        $this->command->getOutput()->progressFinish();
        $this->command->getOutput()->success('Uspesno ste dodali 50 autora');

    }
}
