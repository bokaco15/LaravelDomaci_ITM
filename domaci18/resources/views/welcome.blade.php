@php use App\Functions\Functions;use Illuminate\Support\Facades\Auth; @endphp
@extends('layout')
@section('title')
    <title>Dashboard</title>
@endsection
@section('content')
    <div class="p-5">
        <form action="{{route('searchCity')}}" method="get" class="mx-auto w-50">
            <div class="d-flex align-items-center">
                <span class="me-4"><i class="fa-solid fa-house"></i> Unesite naziv grada:</span>
                <input type="text" name="city" class="form-control me-5 w-50">
                <button class="btn btn-success">Pronadji grad</button>
            </div>
        </form>
        @if(session('error'))
            <p class="text-center text-danger pt-3 pb-0">{{session('error')}}</p>
        @endif

        @if(Auth::check())
            <h3 class="text-center">Lajkovani gradovi</h3>
            <div class="conteiner d-flex flex-wrap mt-2">
                @foreach($userFavorites as $userFavorite)
                    <a href="{{route('forecastShow', ['city'=>$userFavorite->city->name])}}" class="btn btn-primary m-2">
                        <i class="{{Functions::whatIsWeatherType($userFavorite->city->todayForecast->weather_type)}}"></i>
                        {{$userFavorite->city->todayForecast->temperature}}°C | {{$userFavorite->city->name}}
                    </a>
                @endforeach
            </div>
        @endif

    </div>
@endsection
