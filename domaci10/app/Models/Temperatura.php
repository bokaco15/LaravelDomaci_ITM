<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Temperatura extends Model
{
    protected $table = 'temperatura';
    protected $fillable = [
        'city',
        'temperatura'
    ];
}
