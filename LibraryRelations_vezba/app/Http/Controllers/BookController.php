<?php

namespace App\Http\Controllers;

use App\Models\Books;
use Illuminate\Http\Request;

class BookController extends Controller
{
    public function book(Books $book)
    {
        return view('book', compact('book'));
    }
}
