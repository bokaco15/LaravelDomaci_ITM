<?php

use App\Http\Controllers\ProfileController;
use App\Http\Controllers\PrognozaController;
use App\Http\Middleware\isAdminMiddleware;
use App\Models\Temperatura;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    if(Auth::check())
    {
        return redirect('/dashboard');
    }
    else
    {
        return view('auth.login');
    }
});

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

Route::middleware(['auth', isAdminMiddleware::class])->prefix('admin')->group(function (){

    Route::get('/prognoza', [PrognozaController::class, 'show'])->name('prognoza');
    Route::view('/dodaj-grad', 'dodajgrad')->name('dodajGrad');
    Route::post('/dodaj-grad-u-bazu', function (Request $request) {
        $validated=$request->validate([
            'city'=>'required|string',
            'temperatura'=>'required|integer'
        ]);
        Temperatura::create($validated);

        return redirect()->route('prognoza')->with('success','Uspesno ste dodali grad');

    })->name('dodaj-grad-db');

    Route::get('/grad/{grad}', [PrognozaController::class, 'showCity'])->name('showCity');
    Route::get('/upravljaj-gradovima', [PrognozaController::class, 'adminTableGradovi'])->name('adminTableGradovi');

    Route::get('/grad/{grad}/edit', [PrognozaController::class, 'edit'])->name('editGrad');

    Route::post('/grad/{grad}/update', [PrognozaController::class, 'update'])->name('updateGrad');
    Route::get('/grad/{grad}/delete', [PrognozaController::class, 'delete'])->name('deleteGrad');

});

require __DIR__.'/auth.php';
