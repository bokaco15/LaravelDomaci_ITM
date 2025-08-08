<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Ocena extends Model
{
    protected $table = "ocena";
    protected $fillable=[
        'predmet', 'ocena', 'profesor', 'user_id'
    ];
}
