<?php

namespace App\Http\Controllers;

use App\Models\Author;
use Illuminate\Http\Request;

class AuthorController extends Controller
{
    public function showAuthors()
    {
        $authors=Author::all();
        return view('authors', compact('authors'));
    }
}
