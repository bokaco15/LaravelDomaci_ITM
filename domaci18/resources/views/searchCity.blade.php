@php use App\Functions\Functions; @endphp
@extends('layout')
@section('title')<title>Dashboard</title>@endsection
@section('content')
    {{-- Ako korisnik nije ulogovan --}}
    @if(session('loginError'))
        <div class="container alert alert-warning text-center">
            {{ session('loginError') }}
        </div>
        <div class="text-center mb-4">
            <a href="/login" class="btn btn-primary">Uloguj se</a>
        </div>
        <br>
    @endif


    <div class="d-flex flex-wrap container mt-5">
        @foreach($cities as $city)
            <div class="d-flex align-items-center m-2">
                @if(in_array($city->id, $userFavorites))
                    <a href="{{route('city.delete.favorite', ['city'=>$city->id])}}" class="btn btn-primary me-1">
                        <i class="fa-solid fa-trash text-white"></i>
                    </a>
                @else
                    <a href="{{route('city.favorite', ['city'=>$city->id])}}" class="btn btn-primary me-1">
                        <i class="fa-regular fa-heart"></i>
                    </a>
                @endif
                <a class="btn btn-primary text-white" href="{{ route('forecastShow', ['city'=>$city->name]) }}">
                    <i class="{{ Functions::whatIsWeatherType($city->todayForecast->weather_type) }} text-white me-1"></i>
                    {{$city->name}}
                </a>
            </div>
        @endforeach


    </div>
@endsection
