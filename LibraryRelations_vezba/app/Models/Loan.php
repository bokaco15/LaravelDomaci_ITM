<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Loan extends Model
{
    protected $table = 'loans';
    protected $fillable = [
        'book_id',
        'member_id',
        'loan_date',
        'return_date'
    ];

    public function book()
    {
        return $this->belongsTo(Books::class, 'book_id', 'id');
    }

    public function member()
    {
        return $this->belongsTo(Member::class, 'member_id', 'id');
    }

}
