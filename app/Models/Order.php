<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Order extends Model
{
    use SoftDeletes;

    public $timestamps = true;

    protected $fillable = [
        'user_id', 'shipping_id', 'name', 'email', 'phone', 'address1',
        'address2', 'sub_total', 'discount', 'quantity', 'total_amount',
        'status', 'payment_method', 'payment_status', 'note'
    ];

    public function cart()
    {
        return $this->hasMany('App\Models\Cart', 'order_id', 'id');
    }
    public function shipping()
    {
        return $this->hasOne('App\Models\Shipping', 'shipping_id', 'id');
    }
    public function user()
    {
        return $this->hasOne('App\User', 'user_id', 'id');
    }

    public static function getOrderUser($id_user)
    {
        return Order::with('cart')->where('user_id', $id_user)->orderBy('id', 'DESC')->get();
    }
    public static function getAllOrder()
    {
        return Order::with('cart')->orderBy('id', 'DESC')->get();
    }
}