<?php

namespace App\Http\Controllers;

use App\Models\WeatherModel;
use Illuminate\Http\Request;
use Psy\Util\Str;

class WeatherController extends Controller
{
    /*
     *  Napravio rutu /prognoza
     *  Napravio controller za vreme
     *  Napravio view za prikaz podataka
     *
     */
    public function index()
    {
        /*
        $prognoza = [
            'Beograd'    => 33,
            'Zagreb'     => 29,
            'Sarajevo'   => 27,
            'Podgorica'  => 35,
            'Skoplje'    => 32,
            'Priština'   => 31,
            'Sofija'     => 30,
            'Ljubljana'  => 28,
            'Split'      => 34,
            'Banja Luka' => 29,
        ];
        */

        $prognoza = WeatherModel::orderByDesc('id')->paginate(15, ['*'], 'temperaturePage');

        if($prognoza->isEmpty()) {
            return redirect()->route('prognoza');
        }

        return view('weather', compact('prognoza'));
    }

    public function forecastShow($city)
    {
        $forecasts = [
          "Belgrade"=>[12,43,12,41,11],
          "Novi Sad"=>[3,44,1,12,57],
          "Nis"=>[11,33,44,55,66],
          "Kragujevac"=>[31,44,55,66,66],
        ];


        if(isset($forecasts[$city])) {
            $cityNameWithTemp = $forecasts[$city];
            return view('forecastCityShow', compact('cityNameWithTemp', 'city'));
        } else {
            abort(404);
        }
    }


}
