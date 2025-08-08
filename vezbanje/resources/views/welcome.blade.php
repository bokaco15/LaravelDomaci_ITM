@extends('layout')

@section('title')
    <title>Sve ocene</title>
@endsection

@section('body')
    <h1>Ovo je prikaz stranice svih ocjena</h1>   
    <hr>
    
    @foreach ($ocene as $ocena)
        <p><b>{{$ocena['predmet']}}</b>: <i><b>{{$ocena['ocena']}}</b>, {{$ocena['profesor']}}</i> | USER ID: {{$ocena['user_id']}}</p> 
    @endforeach
@endsection