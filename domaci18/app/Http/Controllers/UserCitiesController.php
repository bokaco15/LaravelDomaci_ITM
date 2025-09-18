<?php

namespace App\Http\Controllers;

use App\Models\UserCities;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class UserCitiesController extends Controller
{
    public function favorite(Request $request, $city)
    {
        $user = Auth::user();
        if($user === null) {
            return redirect()->back()->with('loginError', 'Morate se ulogovati da biste lajkovali grad');
        }

        UserCities::create([
            'city_id' => $city,
            'user_id' => $user->id
        ]);

        return redirect()->back();
    }

    public function deleteFavorite($city)
    {
        UserCities::where('city_id', $city)->where('user_id', Auth::user()->id)->delete();
        return redirect()->back();
    }

}
