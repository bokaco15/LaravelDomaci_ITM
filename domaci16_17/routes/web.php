<?php

use App\Http\Controllers\AdminWeatherController;
use App\Http\Controllers\ContactController;
use App\Http\Controllers\ForecastController;
use App\Http\Controllers\itemsController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\StudentController;
use App\Http\Controllers\UserCitiesController;
use App\Http\Controllers\WeatherController;
use App\Http\Middleware\AdminCheckMiddleware;
use App\Models\items;
use App\Models\UserCities;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

Route::get('/', function (){

    $userFavorites = [];

    if(Auth::user()) {
        $userFavorites = UserCities::where('user_id', Auth::user()->id)->with('city')->get();
    }
    return view('welcome', compact('userFavorites'));

});

Route::get('/forecasts/search', [ForecastController::class, 'search'])->name('searchCity');

Route::get("/dodaj-ocenu", function() {
    return view("dodajOcenu");
});

Route::get('/prognoza', [WeatherController::class, 'index'])->name('prognoza');

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

/*
 * User cities
 * */

Route::get('/user-cities/favorite/{city}', [UserCitiesController::class, 'favorite'])->name('city.favorite');
Route::get('/user-cities/delete-favorite/{city}', [UserCitiesController::class, 'deleteFavorite'])->name('city.delete.favorite');

Route::middleware(['auth', AdminCheckMiddleware::class])->prefix('admin')->group(function () {

    Route::get('/add-product', [ProductController::class, 'index'])
//    ->middleware('auth')
        ->name('dodajProizvod');

    Route::post("/addProductToDb", [ProductController::class, 'addProductToDB'])
//    ->middleware('auth')
        ->name('dodajProizvod');


    Route::get("/show-products", [ProductController::class, 'show'])
//    ->middleware('auth')
        ->name('showAllProducts');

    Route::get("/delete-products/{product}", [ProductController::class, 'delete']);


//Contact route
    Route::view('/add-contact', "addContact");
    Route::post("/addContactToDB", [ContactController::class, 'addContact']);

//Pravljenje strnaice /all-contacts

    Route::get('/all-contacts', [ContactController::class, 'allContacts'])
//    ->middleware('auth')
        ->name('allcontacts');


    Route::get('/delete-contact/{id}', [ContactController::class, 'deleteContact'])
//    ->middleware('auth')
        ->name('contact.delete');



//Update contact
    Route::get('/contact/{id}/edit', [ContactController::class, 'edit'])
//    ->middleware('auth')
        ->name('contact.edit'); //stranica za prikaz forme za edit kontakta
//Pravljenje stranice za update kontakta u formi
    Route::post('/contact/{id}', [ContactController::class, 'saveUpdate'])
//    ->middleware('auth')
        ->name('contact.update');

//Update Product

    /* 1. Pravim rutu koja ce pokazati formu za update korisnika!
     * 2. U kontroleru za product uzimam id producta, ako posotji da me prosledi na stranicu za edit proizvoda, ako ne postoji da vrati 404 error
     * 3. Pravim rutu za update
     */

    Route::get('/product/{id}/edit', [ProductController::class, 'edit'])
//    ->middleware('auth')
        ->name('editProduct');
    Route::put('/product/{id}', [ProductController::class, 'update'])
//    ->middleware('auth')
        ->name('updateProduct');


    Route::view('/weather', 'admin.weather');
    Route::post('/weather/update', [AdminWeatherController::class, 'update']);


    /*
     * Domaci 14 *
    */

    Route::get('/forecasts', [ForecastController::class, 'index'])->name('forecasts.view');
    Route::post('/forecasts/create', [ForecastController::class, 'create'])->name('forecasts.create');


    //KRAJ MIDDLEWARE GROUP-A


});




//Rute za vezbanje za student stranicu
//prikazi i obrisi studenta
Route::get('/students', [StudentController::class, 'show'])->name('showStudents');
Route::get('/student-remove/{student}', [StudentController::class, 'remove'])->name('deleteStudent');
//Prikaz svih studenata
Route::view('/add-student', 'addStudent')->name('addStudent');
//insert studenta u bazu
Route::post('/insert-student', [StudentController::class, 'insert'])->name('student.insert');
//prikaz edit stranice studenta (id)
Route::get('student/edit/{student}', [StudentController::class, 'edit'])->name('student.edit');
//str za form-update studenata
Route::post('/student/update/{student}', [StudentController::class, 'update'])->name('student.update');

// priakz items-a
Route::get('/items', [itemsController::class, 'show'])
    ->name('allItems');
Route::get('/item/{item}/delete', [itemsController::class, 'deleteItem'])->name('deleteItem');

Route::get('/item/{item}/edit', [itemsController::class, 'editItem'])->name('editItem');
Route::post('/item/{item}/update', [itemsController::class, 'updateItem'])->name('updateItem');

Route::view('/add-items', 'addItem')->name('addItems');
Route::post('/add-item', function (Request $request) {
    $request->validate([
        'item'=>'required|string'
    ]);

    items::create([
        'item'=>$request->get('item')
    ]);

    redirect()->route('allItems');
});


// Ruta forecast/city
Route::get('/forecast/{city:name}', [WeatherController::class, 'forecastShow'])->name('forecastShow');


require __DIR__.'/auth.php';

//test za commit
