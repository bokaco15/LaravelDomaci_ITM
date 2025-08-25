<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Books extends Model
{
    protected $table = 'books';
    protected $fillable = [
        'title',
        'published_year',
        'author_id'
    ];

    public function author()
    {
        return $this->belongsTo(Author::class, 'author_id', 'id');
    }

    public function loan()
    {
        return $this->hasMany(Loan::class, 'book_id', 'id');
    }

}
