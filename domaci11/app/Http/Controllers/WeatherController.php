<?php

namespace App\Http\Controllers;

use App\Models\WeatherModel;
use Illuminate\Http\Request;

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
}
