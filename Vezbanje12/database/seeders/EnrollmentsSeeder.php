<?php

namespace Database\Seeders;

use App\Models\Course;
use App\Models\Entrollment;
use App\Models\Student;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class EnrollmentsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $students = Student::all();
        $counter = 0;

        foreach ($students as $student) {
            $rndNumEnrollment = mt_rand(3,5);
            $courses = Course::inRandomOrder()->take($rndNumEnrollment)->get();
            foreach ($courses as $course) {
                if(Entrollment::where(['student_id'=>$student->id, 'course_id'=>$course->id])->exists()) {
                    $this->command->getOutput()->error("Student {$student->name} je vec upisan na kurs {$course->name}");
                    continue;
                }
                    Entrollment::create([
                        'student_id' => $student->id,
                        'course_id' => $course->id,
                        'grade' => mt_rand(1, 5)
                    ]);

                $counter++;
            }
        }

        $this->command->getOutput()->success("Uspesno ste dodali $counter polja u tabelu enrollments");

    }
}
