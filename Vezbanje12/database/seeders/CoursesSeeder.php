<?php

namespace Database\Seeders;

use App\Models\Course;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory;

class CoursesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Factory::create();
        $noCourses = (int)$this->command->getOutput()->ask('koliko kurseva zelis da uneses');

        $this->command->getOutput()->progressStart($noCourses);
        $counter = 0;

        for ($i=0;$i<$noCourses;$i++)
        {
            Course::create([
                'name' => $faker->unique()->jobTitle() . " course",
                'credits' => $faker->numberBetween(1, 100)
            ]);

            $counter++;
            $this->command->getOutput()->progressAdvance();
        }

        $this->command->getOutput()->progressFinish();
        $this->command->getOutput()->success("Uspijesno ste unijeli $counter kurseva");
    }
}
