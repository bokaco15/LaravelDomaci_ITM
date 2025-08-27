@extends('layout')
@section('title')<title>Forecasts page</title>@endsection

@section('content')
    <div class="container">
        <form action="{{route('forecasts.create')}}" method="POST">
            @csrf
            <select name="city_id">
                @foreach($cities as $city)
                    <option value="{{$city->id}}">{{$city->name}}</option>
                @endforeach
            </select>
            <input type="text" name="temp" placeholder="Unesite temperaturu">
            <select name="weather_type">
                <option value="sunny" selected>sunny</option>
                <option value="rainy">rainy</option>
                <option value="snowy">snowy</option>
            </select>
            <input type="number" name="probabbility" placeholder="Unesite sanse za padavine">
            <input type="date" name="date">
            <button class="btn btn-sm btn-success">Dodaj temperaturu</button>
        </form>
        <br>
        @if($errors->any())
            @foreach($errors->all() as $error)
                <p class="text-danger">{{$error}}</p>
            @endforeach
        @endif
        <p class="text-success">{{ session('success') ?? '' }}</p>

        <hr>

        @foreach($cities as $k=>$city)
            <p>{{($k+1) . ": " . $city->name}}</p>
            <ul>
            @foreach($city->forecasts as $forecast)
                <li>{{$forecast->date}} - <b>{{$forecast->temperature}}°C</b> | Sanse za padavine: {{$forecast->probabbility ?? '0'}}% | {{$forecast->weather_type}}</li>
            @endforeach
            </ul>
        @endforeach

    </div>
@endsection
