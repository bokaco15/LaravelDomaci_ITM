<?php

namespace App\Http\Controllers;

use App\Models\Temperatura;
use Illuminate\Http\Request;

class PrognozaController extends Controller
{
    public function show()
    {
        $temperature = Temperatura::all();
        return view('prognoza', ['temperature'=>$temperature]);
    }

    public function showCity(Temperatura $grad)
    {
//        dd($grad);

        return view('prikaziGrad', compact('grad'));
    }

    public function adminTableGradovi()
    {
        $gradovi=Temperatura::all();
        return view('adminGradovi', compact('gradovi'));
    }

    public function edit(Temperatura $grad)
    {
//        dd($grad);
        return view('editGrad', compact('grad'));
    }

    public function update(Request $request, Temperatura $grad)
    {
        $grad->city = $request->get('city');
        $grad->temperatura = $request->get('temperatura');
        $grad->save();

        return redirect()->route('adminTableGradovi')->with('success', "Uspesno ste izmenili grad {$grad->city}");
    }

    public function delete(Temperatura $grad)
    {
        $grad->delete();
        return redirect()->route('adminTableGradovi')->with('success', "Uspenso ste obrisali grad {$grad->city}");
    }
}
