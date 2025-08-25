<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Author extends Model
{
    protected $table = 'authors';
    protected $fillable = [
      'name',
      'birth_year'
    ];

    public function books()
    {
        return $this->hasMany(Books::class, 'author_id', 'id');
    }

}
