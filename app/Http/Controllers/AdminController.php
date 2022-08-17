<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\Controller;
use App\Models\Admin;
use Session;

class AdminController extends Controller
{

    public function index()
    {
        return view('backend.index');
    }
    // public function __construct()
    // {
    //     $this->middleware('guest:admin')->except('logout');
    // }
    public function guard()
    {
        return Auth::guard('admin');
    }
    public function showLoginForm()
    {
        // if (Auth::guard('admin')::check()) {
        //     return redirect()->back();
        // }
        return view('backend.login');
    }

    public function login(Request $request)
    {
        $credentials = $request->only('email', 'password');

        if (Auth::guard('admin')->attempt($credentials)) {
            return redirect()->intended('admin')->with('success', 'Successfully Login');
        } else {
            request()->session()->flash('error', 'Invalid email and password pleas try again!');
            return redirect()->back()->withInput($request->only('email'));
        }
    }
    public function logout()
    {
        Auth::guard('admin')->logout();
        return redirect('/admin');
    }
}