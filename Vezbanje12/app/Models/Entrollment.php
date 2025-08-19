<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Entrollment extends Model
{
    protected $table = 'enrollments';
    protected $fillable = ['student_id', 'course_id', 'grade'];
}
