<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class AdminRole extends Model
{
    use SoftDeletes;

    protected $fillable = [
        'level', 'name', 'description',
    ];
    public $timestamps = true;
}