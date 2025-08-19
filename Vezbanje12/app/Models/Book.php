<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Book extends Model
{
    protected $table = 'books';
    protected $fillable = [
      'author_id',
      'author_name',
      'title',
      'published_at'
    ];
}
