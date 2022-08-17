<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Str;
use App\Models\Coupon;

class CouponController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $dataCoupon = Coupon::orderBy('id', 'DESC')->get();
        return view('backend.coupon.index', compact('dataCoupon'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('backend.coupon.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'code' => 'bail|required',
            'type' => 'bail|required|in:fixed,percent',
            'valueFixed' => 'bail|required|min:1|max:999999',
            'valuePercent' => 'bail|required|min:1|max:100',
            'status'=>'in:active,inactive',
        ]);

        $data = new Coupon();
        $data->code = $request->code;
        $data->type = $request->type;
        if($request->type == "percent"){
            $data->value = $request->valuePercent;
        }else{
            $data->value = $request->valueFixed;
        }
        $data->status = $request->status;
        $data->save();
        return redirect()->route('coupon.index')->with('message', 'successfully');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $dataCoupon = Coupon::find($id);
        return view('backend.coupon.edit',compact('dataCoupon'));
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
        $request->validate([
            'code' => 'bail|required',
            'type' => 'bail|required|in:fixed,percent',
            'valueFixed' => 'bail|required|min:1|max:999999',
            'valuePercent' => 'bail|required|min:1|max:100',
            'status'=>'in:active,inactive',
        ]);
        $coupon = Coupon::find($id);

        if($coupon){
            $coupon->code = $request->code;
            $coupon->type = $request->type;
            if($request->type == "percent"){
                $coupon->value = $request->valuePercent;
            }else{
                $coupon->value = $request->valueFixed;
            }
            $coupon->status = $request->status;
            $coupon->update();
            return redirect()->route('coupon.index')->with('message', 'successfully');
        }else{
            return back()->with('error', 'data not found');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $coupon = Coupon::find($id);
        if($coupon == true){
            $coupon->delete();
            return back()->with('message', 'successfully');
        }else{
            return back()->with('error', 'data not found');
        }
    }
    public function status(Request $request){
        if($request->check == 'true'){
            Coupon::findOrFail($request->id)->update(['status' => 'active']);
        }else{
            Coupon::findOrFail($request->id)->update(['status' => 'inactive']);
        }
        return response()->json(['message' => 'successfully']);
    }
}