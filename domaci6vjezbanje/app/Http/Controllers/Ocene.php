<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class Ocene extends Controller
{
    public function showOcene() 
    {
        $ocene = \App\Models\Ocene::all();

        return view("welcome", ["ocjene" => $ocene]);
    }
}
