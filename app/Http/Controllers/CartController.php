<?php

namespace App\Http\Controllers;

use Session;
use App\Models\Product;
use App\Models\Coupon;
use Illuminate\Http\Request;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Cart;

class CartController extends Controller
{
    //
    public function store(Request $request)
    {
        // return Cart::content();
        try {
            $product = Product::getProductById($request->id);
        } catch (ModelNotFoundException $e) {
            return response()->json(['msg' => 'fail']);
        }

        foreach (Cart::content() as $key => $value) {
            if ($value->id == $request->id) {
                $qtyTemp = $value->qty + 1;
                // return $qtyTemp;
                if (Product::find($request->id)->stock < $qtyTemp) {
                    session()->flash('error', 'product ' . Product::find($request->id)->title . ' stock not sufficient!');
                    return response()->json(['error_stock' => 'product "' . Product::find($request->id)->title . '" stock not sufficient!']);
                }
            }
        }
        Cart::add(
            $product->id,
            $product->title,
            1,
            ($product->price - ($product->price * $product->discount / 100)),
            0,
            ['discount' => $product->discount, 'image' => $product->image]
        );

        $this->checkCoupon();
        return response()->json(['msg' => 'success']);
    }
    public function delete(Request $request)
    {
        $result = Cart::remove($request->id);

        if ($this->checkCoupon()) {
            if (Cart::count() == 0) {
                Session::forget('coupon');
            }
            return response()->json(['data' => [
                'count' => Cart::count(),
                'subtotal' => Cart::subtotal(0, '.', ',') . ' đ',
                'coupon' => '-' . number_format(session('coupon')['value'], 0, '', '.') . ' đ',
                'total' => number_format(round(intval(str_replace('.', '', Cart::subtotal()))) - session('coupon')['value'], 0, '', '.') . ' đ'
            ]]);
        }
        return response()->json(['data' => [
            'count' => Cart::count(),
            'subtotal' => Cart::subtotal(0, '.', ',') . ' đ',
            'total' => Cart::subtotal(0, '.', ',') . ' đ'
        ]]);
    }

    public function checkCoupon()
    {
        if (!empty(session('coupon'))) {
            $dataCoupon = Coupon::getCoupon(session('coupon')['code']);
            $total_price = round(intval(str_replace('.', '', Cart::subtotal())));
            session()->put('coupon', [
                'id' => $dataCoupon->id,
                'code' => $dataCoupon->code,
                'type' => $dataCoupon->type,
                'value' => $dataCoupon->discount($dataCoupon->value, $dataCoupon->type, $total_price)
            ]);
            return true;
        }
        return false;
    }
    public function update(Request $request)
    {
        // dd($request->all());

        if (!empty($request->coupon)) {
            try {
                $dataCoupon = Coupon::getCoupon($request->coupon);
                $total_price = round(intval(str_replace('.', '', Cart::subtotal())));
                session()->put('coupon', [
                    'id' => $dataCoupon->id,
                    'code' => $dataCoupon->code,
                    'type' => $dataCoupon->type,
                    'value' => $dataCoupon->discount($dataCoupon->value, $dataCoupon->type, $total_price)
                ]);
                return redirect()->route('cart')->with('message', 'Your coupon discount has been applied');
            } catch (ModelNotFoundException $e) {
                return redirect()->back()->with('error', 'Invalid Coupon');
            }
        }
        foreach ($request->id as $rId => $id) {
            if (Product::find($id)->stock > $request->qty[$rId]) {
                Cart::update($rId, $request->qty[$rId]);
            } else {
                // $name = Product::find($id)->name;
                return redirect()->route('cart')->with('error', 'product ' . Product::find($id)->title . ' stock not sufficient!');
            }
        }
        $this->checkCoupon();
        return redirect()->route('cart')->with('message', 'Update Your Cart Success');
    }
}