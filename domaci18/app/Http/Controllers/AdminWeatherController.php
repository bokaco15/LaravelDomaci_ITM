<?php

namespace App\Http\Controllers;

use App\Models\Cities;
use App\Models\WeatherModel;
use Illuminate\Http\Request;

class AdminWeatherController extends Controller
{
    public function update(Request $request)
    {
        $city=WeatherModel::where('city_id', $request->get('city_id'))->first();
//        dd($request->all());
        $request->validate([
            'temp' => 'required',
            'city_id' => 'required|exists:cities,id'
        ]);

        $city->temperature = $request->get('temp');
        $city->save();
        return back();
    }
}
