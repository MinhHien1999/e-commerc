<?php

namespace App\Http\Controllers;

use App\Models\Banner;
use App\Models\Category;
use App\Models\Product;
use App\Models\Cart as Carts;
use App\Models\Order;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Http\Requests\SignupRequest;
use Illuminate\Support\Facades\Hash;
use App\User;
use Cart;
use Session;
use Mail;
use App\Mail\MailNotify;
use Illuminate\Database\Eloquent\ModelNotFoundException;

class OrderController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // $dataOrder = Order::orderBy('id', 'DESC')->get();
        $dataOrder = Order::getAllOrder();
        // return $dataOrder;
        return view('backend.order.index', compact('dataOrder'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($order_id)
    {
        $cartData = Carts::getAllProductOrder($order_id);
        $orderData = Order::where('id', $order_id)->first();
        // return $orderData;
        return view('backend.order.show', compact('cartData', 'orderData'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

    public function order(Request $request)
    {
        $data = $request->all();
        $order = new Order();
        if (Auth::check()) {
            $order->user_id = Auth::id();
        }
        // return dd(Auth::id());
        // $cart->shipping_id
        $order->name = $request->name;
        $order->email = $request->email;
        $order->phone = $request->phone;
        $order->note = $request->note;
        $order->address1 = $request->address1;
        $order->address2 = $request->address2;
        $order->sub_total = round(intval(str_replace('.', '', Cart::subtotal())));
        $order->quantity = Cart::count();
        $order->total_amount = round(intval(str_replace('.', '', Cart::subtotal()))) - session('coupon')['value'];
        $order->payment_method = $request->payment;

        if (!empty(session('coupon'))) {
            $order->discount = session('coupon')['value'];
            if (session('coupon')['value'] > round(intval(str_replace('.', '', Cart::subtotal())))) {
                $order->total_amount = 0;
            }
        }

        if ($order->save()) {
            foreach (Cart::content() as $item) {
                $cart = new Carts();
                $cart->product_id = $item->id;
                $cart->order_id = $order->id;
                $cart->price = round(intval($item->price));
                $cart->quantity = $item->qty;
                $cart->amount = round(intval($item->subtotal));
                $cart->save();

                $product = Product::find($item->id);
                if ($product->stock == $item->qty) {
                    $product->stock = 0;
                    $product->status = 'inactive';
                }
                if ($product->stock > $item->qty) {
                    $product->stock = $product->stock - $item->qty;
                }
                $product->update();
            }
            $OrderData = Order::find($order->id);
            $OrderDetailData = Carts::with('product')->where('order_id', $order->id)->get();
            Mail::to($order->email)->send(new MailNotify($OrderData, $OrderDetailData));
            Cart::destroy();
        }
        return redirect()->route('home')->with('message', 'Buy successfully');
    }
    public function status(Request $request)
    {
        $data_id = $request->id;
        // $order = Order::where('id', $data_id)->firstOrFail();
        // return $order;
        try {
            $order = Order::where('id', $data_id)->firstOrFail();
            $order->status = 'Delivered';
            $order->update();
            return response()->json(['msg' => 'success']);
        } catch (ModelNotFoundException $e) {
            return response()->json(['msg' => 'fail']);
        }
    }
}