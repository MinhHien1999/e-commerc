<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Cviebrock\EloquentSluggable\Sluggable;

class Coupon extends Model
{

    public $timestamps = true;

    protected $fillable = [
        'code', 'type', 'value', 'status'
    ];

}