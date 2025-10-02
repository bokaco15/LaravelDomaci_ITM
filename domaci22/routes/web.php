<?php

use App\Http\Controllers\ContactController;
use App\Http\Controllers\itemsController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\StudentController;
use App\Http\Middleware\AdminCheckMiddleware;
use App\Models\items;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::get("/", [App\Http\Controllers\OcenaController::class, 'ispisiOcene']);

Route::get("/dodaj-ocenu", function() {
    return view("dodajOcenu");
});

Route::post("/dodata-ocena", function(Request $request) {

    $request->validate([
        "predmet"=>"required|string",
        "ocena"=>"required|integer|max:5|min:1",
        "profesor"=>"required|string"
    ]);

    App\Models\Ocena::create([
        "predmet"=>$request->get("predmet"),
        "ocena"=>$request->get("ocena"),
        "profesor"=>$request->get("profesor")
    ]);

    return redirect("/dodaj-ocenu")->with("uspeh", "uspesno ste dodali polje u bazu");

});


Route::middleware(['auth', AdminCheckMiddleware::class])->prefix('admin')->group(function () {
    // uraditi prefix-e za /products
    Route::controller(ProductController::class)
        ->prefix('/products')
        ->group(function (){
            //prefix Name-ova
            Route::name('products.')->group(function () {
                Route::get('/add', 'index')->name('add');
                Route::get('/all', 'show')->name('all');
                Route::get('/delete/{product}', 'delete')->name('delete');
                Route::get('/edit/{id}', 'edit')->name('edit');
                Route::post('/add-to-db', 'addProductToDB')->name('add');
                Route::put('/update/{id}', 'update')->name('update');
            });
    });

    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    // uraditi prefix-e za /contact
    Route::controller(ContactController::class)
        ->prefix('/contacts')
        ->name('contacts.') // Ovo je drugi nacin za grupisanje po name-u -- I BOLJI
        ->group(function () {
            Route::view('/add', "addContact")->name('add');
            Route::get('', 'allContacts')->name('all');
            Route::get('/delete/{id}', 'deleteContact')->name('delete');
            Route::get('/edit/{id}', 'edit')->name('edit');
            Route::post('/dbAdd', 'addContact')->name('dbAdd');
            Route::post('/update/{id}', 'saveUpdate')->name('update');
    });

});

// uraditi prefix-e za /Students
Route::controller(StudentController::class)
    ->name('students.')
    ->prefix('/students')
    ->group(function () {
   Route::get('', 'show')->name('all');
   Route::get('/delete/{student}', 'remove')->name('delete');
   Route::get('/edit/{student}', 'edit')->name('edit');
   Route::post('/insert', 'insert')->name('dbAdd');
   Route::post('/update/{student}', 'update')->name('update');
   Route::view('/add', 'addStudent')->name('add');
});

// uraditi prefix-e za /items
Route::controller(itemsController::class)
    ->prefix('/items')
    ->name('items.')
    ->group(function () {
   Route::get('', 'show')->name('all');
   Route::get('/delete/{item}', 'deleteItem')->name('delete');
   Route::get('/edit/{item}', 'editItem')->name('edit');
   Route::post('/update/{item}', 'updateItem')->name('update');
   Route::post('/insert', 'addItem')->name('dbAdd');
   Route::view('/add', 'addItem')->name('add');
});


require __DIR__.'/auth.php';

//test za commit
