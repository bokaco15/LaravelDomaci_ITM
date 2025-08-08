<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use \App\Models\Ocene;

class OcenaController extends Controller
{
    public function dodajOcenu(Request $request) 
    {
        /* $validate=*/$request->validate([
            'predmet'=>'required|string|max:64',
            'ocena'=>'required|integer|min:1|max:5',
            'profesor'=>'required|string|max:64'
        ]);

        Ocene::create(/*$validate*/[
            'predmet'=>$request->get('predmet'),
            'ocena'=>$request->get('ocena'),
            'profesor'=>$request->get('profesor'),
            'user_id'=>1
        ]);

        return redirect("/dodaj-ocenu")->with("uspeh", "uspesno ste dodali ocjenu");
    }
}
