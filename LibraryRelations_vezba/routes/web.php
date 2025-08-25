<?php

use App\Http\Controllers\AuthorController;
use App\Http\Controllers\BookController;
use App\Http\Controllers\MemberController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/authors', [AuthorController::class, 'showAuthors']);

Route::get('/book/{book}', [BookController::class, 'book']);
Route::get('/have-books', [MemberController::class, 'haveBooks']);
