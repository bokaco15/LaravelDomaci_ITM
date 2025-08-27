@php use App\Models\Cities;use App\Models\WeatherModel; @endphp
    <!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Document</title>
</head>
<body>

<form action="/admin/weather/update" method="POST">
    @csrf
    <input type="number" placeholder="unesite temperaturu" name="temp">
    <select name="city_id">
        @foreach(Cities::all() as $city)
            <option value='{{$city->id}}'>{{$city->name}}</option>
        @endforeach
    </select>
    <button>Klik</button>
</form>

@foreach(WeatherModel::all() as $forecast)
    <p>{{$forecast->city->name}} - {{ $forecast->temperature }}</p>
@endforeach
</body>
</html>
