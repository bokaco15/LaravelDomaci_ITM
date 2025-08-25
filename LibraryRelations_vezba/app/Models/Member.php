<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Member extends Model
{
    protected $table = 'members';
    protected $fillable = [
        'name',
        'email'
    ];

    public function loan()
    {
        return $this->hasMany(Loan::class, 'member_id', 'id');
    }

}
