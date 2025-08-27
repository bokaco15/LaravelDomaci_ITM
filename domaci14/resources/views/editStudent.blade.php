@extends('layout')
@section('title')<title>Edit studenta</title>@endsection
@section('content')

    <div class="container">
        <h2>Edit studenta: </h2> <hr> <br>

        <form action="{{route('student.update', ['student'=>$student->id])}}" method="post">
            @csrf
            <div class="form-group">
                <label for="exampleInputPassword1">Name</label>
                <input type="text" name="name" class="form-control" value="{{$student->name}}" id="exampleInputPassword1" placeholder="Name">
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">Surname</label>
                <input type="text" name="surname" class="form-control" value="{{$student->surname}}" id="exampleInputPassword1" placeholder="Surname">
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">No. Index</label>
                <input type="text" name="noIndex" class="form-control" value="{{$student->noIndex}}" id="exampleInputPassword1" placeholder="No. Index">
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">Year Start</label>
                <input type="number" name="year" class="form-control" value="{{$student->year}}"  id="exampleInputPassword1" placeholder="Year Start">
            </div>
            <br>
            <button class="btn btn-success">Add student</button> <br> <br>
        </form>

        @if($errors->any())
            <p class="text-danger">{{$errors->first()}}</p>
        @endif
        @if(session('success'))
            <p class="text-success">{{session('success')}}</p>
        @endif

    </div>

{{--    {{$student}}--}}

@endsection
