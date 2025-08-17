@extends('layout')
@section('title') <title>{{$city}}</title> @endsection
@section('content')
    <h2>Grad: {{$city}}</h2>
    <p>Prognoza za sledecih 5 dana u {{$city}}:
    @foreach($cityNameWithTemp as $t)
         {{$t}}
    @endforeach
    </p>
@endsection
