@extends('layout')
@section('title')<title>Stranica za prikaz studenata</title>@endsection
@section('content')
    <div class="container">
        <h2>Studenti:</h2> <hr><br>
        <table class="table table-striped text-center">
            <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">Name</th>
                <th scope="col">Surname</th>
                <th scope="col">No.Index</th>
                <th scope="col">Year start</th>
                <th scope="col">Actions</th>
            </tr>
            </thead>
            <tbody>

            @foreach($students as $student)

                <tr>
                    <th scope="row">{{$student['id']}}</th>
                    <td>{{$student['name']}}</td>
                    <td>{{$student['surname']}}</td>
                    <td>{{$student['noIndex']}}</td>
                    <td>{{$student['year']}}</td>
                    <td>
                        <a class="btn btn-danger" href="{{route('deleteStudent', ['student'=>$student->id])}}">Delete</a>
                        <a class="btn btn-primary" href="{{route('student.edit', ['student'=>$student->id])}}">Edit</a>
                    </td>
                </tr>

            @endforeach

            </tbody>
        </table>
        <br>

        @if(session('success'))
            <p class="text-success">{{session('success')}}</p>
        @endif
    </div>
@endsection
