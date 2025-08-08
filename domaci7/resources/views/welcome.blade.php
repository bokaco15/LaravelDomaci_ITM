@extends('layout')
@section('title')<title>Home</title>@endsection
@section('content')
    <h1>ispis ocena</h1>

    @foreach ($ocene as $ocena)
        <p>Predmet: {{$ocena->predmet}}</p>
        <p>ocena: {{$ocena->ocena}}</p>
        <p>profesor: {{$ocena->profesor}}</p>
        <hr>
    @endforeach
@endsection
