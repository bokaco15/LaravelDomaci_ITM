<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Symfony\Component\HttpFoundation\Response;

class AdminCheckMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {
        //1. User -> neki podatak da li je admin ili ne (baza polje)
            // Dodati polje 'role' u user tabelu
            // Bonus: Default tog polja = 'user'
        //2. User -> da li je korisniku upisan da li je admin ili ne (if)
        $role = Auth::user()->role; // vraca iz tabele users polje role
//        dd($role);

        if($role != 'admin')
        {
            return redirect('/'); // Ako nisi admin vrati me na pocetnu
        }
        return $next($request); //Nastavi dalje
    }
}
