<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Http\Request;
use App\Models\Ocene;

Route::get("/", [App\Http\Controllers\Ocene::class, 'showOcene']);

Route::view("/dodaj-ocene", "dodajOcene");

Route::post("/dodaj-ocenu", function(Request $request) {
    $request->validate([
        "predmet" => "required|string|max:64",
        "ocena"=>"required|integer|min:1|max:5",
        "profesor"=>"required|string"
    ]);

    Ocene::create([
        "predmet" => $request->get("predmet"),
        "ocena" => $request->get("ocena"),
        "profesor" => $request->get("profesor"),
        "user_id" => 1
    ]);

    return redirect("/dodaj-ocene")->with("uspeh", "uspesno ste dodali ocenu");

});
