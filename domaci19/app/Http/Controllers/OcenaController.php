<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Ocena;

class OcenaController extends Controller
{
public function ispisiOcene()
{
    $ocene = Ocena::all();
    // dd($ocene);
    return view("welcome", compact("ocene"));
}

}
