<?php

use App\Models\Ocene;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

Route::view("/dodaj-ocene", "dodaj-ocene");

Route::post("/dodaj-ocenu", function(Request $request) {
    $request->validate([
        "predmet"=>"required|string|max:64",
        "ocena"=>"integer|required|min:1|max:5",
        "profesor"=>"required|string|max:64"
    ]);

    Ocene::create([
        "predmet"=>$request->get("predmet"),
        "ocena"=>$request->get("ocena"),
        "profesor"=>$request->get("profesor"),
    ]);

    return redirect("/dodaj-ocene")->with("success", "Uspesno ste dodali ocene");

});


Route::get("/prikaziOcene", [\App\Http\Controllers\Ocene::class, 'showOcene']);
