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
    public static function getCoupon($code)
    {
        return Coupon::where(['code' => $code, 'status' => 'active'])->firstOrFail();
    }

    public static function discount($valueCoupon, $typeCoupon, $totalPrice)
    {
        if ($typeCoupon == "fixed") {
            return intval($valueCoupon);
        } elseif ($typeCoupon == "percent") {
            // return $totalPrice;
            return round($totalPrice * ($valueCoupon / 100));
        } else {
            return 0;
        }
    }
}