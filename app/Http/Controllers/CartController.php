<?php

namespace App\Http\Controllers;

use Session;
use App\Models\Product;
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
        
        foreach (Cart::content() as $key => $value){
            if($value->id == $request->id){
                $qtyTemp = $value->qty+1;
                // return $qtyTemp;
                if(Product::find($request->id)->stock < $qtyTemp){
                    session()->flash('error','product ' .Product::find($request->id)->title. ' stock not sufficient!');
                    return response()->json(['error_stock' => 'product "' .Product::find($request->id)->title. '" stock not sufficient!']);
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

        return response()->json(['msg' => 'success']);
    }
    public function delete(Request $request)
    {
        $result = Cart::remove($request->id);
        return response()->json(['data' => [
            'count' => Cart::count(),
            'subtotal' => Cart::subtotal(0, '.', ',') . ' đ',
        ]]);
    }
    public function update(Request $request)
    {
        // dd($request->qty);
        foreach ($request->id as $rId => $id) {
            if (Product::find($id)->stock > $request->qty[$rId]) {
                Cart::update($rId, $request->qty[$rId]);
            } else {
                // $name = Product::find($id)->name;
                return redirect()->route('cart')->with('error', 'product ' .Product::find($id)->title. ' stock not sufficient!');
            }
        }
        // foreach($request->qty as $rowId => $value){
        //     Cart::update($rowId, $value);
        // }
        return redirect()->route('cart');
    }
}