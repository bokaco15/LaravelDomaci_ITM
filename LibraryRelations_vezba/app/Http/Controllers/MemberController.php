<?php

namespace App\Http\Controllers;

use App\Models\Loan;
use App\Models\Member;
use Illuminate\Http\Request;

class MemberController extends Controller
{
    public function haveBooks()
    {
        $loans = Loan::all();
        return view('have-books', compact('loans'));
    }
}
