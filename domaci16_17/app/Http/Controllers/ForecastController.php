<?php

namespace App\Http\Controllers;

use App\Models\Cities;
use App\Models\Forecast;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ForecastController extends Controller
{
    public function index()
    {
        $cities = Cities::all();
        return view('admin.forecasts', compact('cities'));
    }
    public function create(Request $request)
    {
//        dd($request->all());
        $request->validate([
            'city_id'=>'required|exists:cities,id',
            'temp'=>'required|numeric',
            'date'=>'required',
            'weather_type'=>'required|string|in:sunny,rainy,snowy',
            'probabbility'=>'nullable|integer:strict|min:0|max:100'
        ]);

//        dd($request->all());

        Forecast::create([
            'city_id'=>$request->get('city_id'),
            'temperature'=>$request->get('temp'),
            'date'=>$request->get('date'),
            'weather_type'=>$request->get('weather_type'),
            'probabbility'=>$request->get('probabbility')
        ]);

        $city = Cities::find($request->get('city_id'))->name;

        return redirect()->route('forecasts.view')->with('success', "Uspesno ste dodali temperaturu za grad {$city}");

    }

    public function search(Request $request)
    {
        $searchParam = $request->get('city');
        $cities = Cities::with('todayForecast')->where('name', 'LIKE', '%'.$searchParam.'%')->get();

        if(count($cities) > 0) {
            $userFavorites=[];
            if(Auth::check()) {
                $userFavorites = Auth::user()->cityFavorites();
                $userFavorites = $userFavorites->pluck('city_id')->toArray();
//            dd($userFavorites);

            }
            return view('searchCity', compact('cities', 'userFavorites'));
        } else {
            return redirect('/')->with('error', 'Greska! Grad sto ste trazili ne postoji!');
        }
    }
}
