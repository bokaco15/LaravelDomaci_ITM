<?php

namespace App\Http\Controllers;

use App\Models\Student;
use Illuminate\Http\Request;

class StudentController extends Controller
{
    public function show()
    {
        $students = Student::all();
        return view('showStudents', compact('students'));
    }

    public function remove(Student $student)
    {
        $student->delete();
        return redirect()->route('showStudents')->with("success", "Uspesno ste obrisali studenta {$student->name} {$student->surname}");
    }


    public function insert(Request $request)
    {
//        dd($request->all());
        $validated=$request->validate([
            'name'=>'required|string|max:64',
            'surname'=>'required|string|max:64',
            'noIndex'=>'required|string|max:32',
            'year'=>'integer|digits:4'
        ]);

        Student::create($validated);

        return redirect()->route('addStudent')->with('success', 'Uspesno ste dodali studenta');

    }

    public function edit(Student $student)
    {
        return view('editStudent', compact('student'));
    }

    public function update(Request $request, Student $student)
    {
//        dump($student);
//        dump($request->all());
        $student->name = $request->get('name');
        $student->surname = $request->get('surname');
        $student->noIndex = $request->get('noIndex');
        $student->year = $request->get('year');

        $student->save();

        return redirect()->route('showStudents')->with('success', "Upesno ste promenili podatke studenta {$student->name} {$student->surname}");

    }

}
