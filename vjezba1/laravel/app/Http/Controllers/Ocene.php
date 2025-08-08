<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class Ocene extends Controller
{
    public function showOcene()
    {
//        echo "Ovo su moje ocene";
        $ocene = \App\Models\Ocene::all();
        return view("prikaziOcene", compact("ocene"));
    }
}
