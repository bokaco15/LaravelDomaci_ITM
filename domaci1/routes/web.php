<?php

use Illuminate\Support\Facades\Route;

Route::view("/", "welcome");

Route::get("/contact", function() {
    return view("contact");
});

Route::get("/shop", function() {
    return view("shop");
});

Route::view("/about", "about");