<?php

namespace App\Http\Controllers;

use App\Http\Requests\AddStudentRequest;
use App\Models\Student;
use App\Repositories\StudentRepository;
use Illuminate\Http\Request;

class StudentController extends Controller
{
    private $studentRepo;

    public function __construct()
    {
        $this->studentRepo = new StudentRepository();
    }

    public function show()
    {
        $students = Student::all();
        return view('showStudents', compact('students'));
    }

    public function remove(Student $student)
    {
        $student->delete();
        return redirect()->route('students.all')->with("success", "Uspesno ste obrisali studenta {$student->name} {$student->surname}");
    }


    public function insert(AddStudentRequest $request)
    {
        $this->studentRepo->addStudent($request);
        return redirect()->route('students.add')->with('success', 'Uspesno ste dodali studenta');
    }

    public function edit(Student $student)
    {
        return view('editStudent', compact('student'));
    }

    public function update(Request $request, Student $student)
    {
        $this->studentRepo->updateStudent($request, $student);
        return redirect()->route('students.all')->with('success', "Upesno ste promenili podatke studenta {$student->name} {$student->surname}");
    }

}
