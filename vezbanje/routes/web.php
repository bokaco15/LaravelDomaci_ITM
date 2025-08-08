<?php

use Illuminate\Support\Facades\Route;
use \App\Models\Ocene;
use App\Http\Controllers\OcenaController;

Route::get('/', function () {
    $ocene=Ocene::all();
    // dd($ocene);
    return view('welcome', compact("ocene"));
});

Route::get('/dodaj-ocenu', function () {
    return view('dodajocenu');
});
//dodaj ocenu
Route::post("/dodajocenuform", [OcenaController::class, 'dodajOcenu']);
