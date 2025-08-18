<?php

namespace Database\Seeders;

use App\Models\Student;
use Faker\Factory;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class StudentsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $noStudents = (int)$this->command->getOutput()->ask('Koliko studenata zelite da unesete');
        $faker = Factory::create();

        $this->command->getOutput()->progressStart($noStudents);
        $counter = 0;

        for($i=0; $i<$noStudents; $i++)
        {
            Student::create([
               'name' => $faker->name(),
                'email' => $faker->unique()->email(),
                'enrollment_date'=>$faker->date()
            ]);

            $counter++;

            $this->command->getOutput()->progressAdvance();
        }

        $this->command->getOutput()->progressFinish();
        $this->command->getOutput()->success("Uspjeso ste dodali $counter studenata");

    }
}
