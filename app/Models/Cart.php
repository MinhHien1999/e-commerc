<?php

namespace App\Models;

use Cviebrock\EloquentSluggable\Sluggable;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Cart extends Model
{
    use SoftDeletes;
    
    public $timestamps = true;

    protected $fillable = [
        'product_id', 'order_id', 'price', 'status','quantity','amount'
    ];

    public function product(){
        return $this->hasOne('App\Models\Product', 'id', 'product_id');
    }
    public function order(){
        return $this->hasOne('App\Models\Order', 'id', 'order_id');
    }

    public static function getAllProductOrder($order_id){
        return Cart::with('product')->where('order_id', $order_id)->get();
    }
}