<?php

namespace App\Repositories;

use App\Models\Student;

class StudentRepository
{
    private $studentModel;

    public function __construct()
    {
        $this->studentModel = new Student();
    }

    public function addStudent($request)
    {
        $this->studentModel->create([
           'name'=>$request->get('name'),
           'surname'=>$request->get('surname'),
           'noIndex'=>$request->get('noIndex'),
           'year'=>$request->get('year'),
        ]);
    }

    public function updateStudent($request, $student)
    {
        $student->name = $request->get('name');
        $student->surname = $request->get('surname');
        $student->noIndex = $request->get('noIndex');
        $student->year = $request->get('year');
        $student->save();
    }

}
