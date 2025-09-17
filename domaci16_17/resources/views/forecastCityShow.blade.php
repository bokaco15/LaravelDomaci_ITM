@extends('layout')
@section('title') <title></title> @endsection
@section('content')

    @foreach($city->forecasts as $forecast)
        <p>Datum: {{$forecast->date}}: {{$forecast->temperature}} stepeni</p>
    @endforeach

@endsection
