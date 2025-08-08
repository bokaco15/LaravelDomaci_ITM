<?php

use App\Http\Controllers\ContactController;
use App\Http\Controllers\ProductController;
use Illuminate\Support\Facades\Route;
use Illuminate\Http\Request;

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


Route::get('/admin/add-product', [ProductController::class, 'index'])
->name('dodajProizvod');
Route::post("/admin/addProductToDb", [ProductController::class, 'addProductToDB']);


Route::get("/admin/show-products", [ProductController::class, 'show'])->name('showAllProducts');
Route::get("/admin/delete-products/{product}", [ProductController::class, 'delete']);


//Contact route
Route::view('/admin/add-contact', "addContact");
Route::post("/admin/addContactToDB", [ContactController::class, 'addContact']);

//Pravljenje strnaice /admin/all-contacts

Route::get('/admin/all-contacts', [ContactController::class, 'allContacts'])->name('allcontacts');
Route::get('/admin/delete-contact/{id}', [ContactController::class, 'deleteContact'])->name('contact.delete');



//Update contact
Route::get('/admin/contact/{id}/edit', [ContactController::class, 'edit'])->name('contact.edit'); //stranica za prikaz forme za edit kontakta
//Pravljenje stranice za update kontakta u formi
Route::post('/admin/contact/{id}', [ContactController::class, 'saveUpdate'])->name('contact.update');

//Update Product

    /* 1. Pravim rutu koja ce pokazati formu za update korisnika!
     * 2. U kontroleru za product uzimam id producta, ako posotji da me prosledi na stranicu za edit proizvoda, ako ne postoji da vrati 404 error
     * 3. Pravim rutu za update
     */

Route::get('/admin/product/{id}/edit', [ProductController::class, 'edit'])->name('editProduct');
Route::put('/admin/product/{id}', [ProductController::class, 'update'])->name('updateProduct');
