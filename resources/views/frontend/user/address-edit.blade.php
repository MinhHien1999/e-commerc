@extends('frontend.layouts.master')
@section('content')

<!-- Checkout Start -->
<div class="container-fluid pt-5">
    <div class="row px-xl-5">
        <div class="col-lg-4 nav-item dropdown">
            <a href="cart.html" class="dropdown-item" style="text-align:center">Shopping Cart</a>
            <a href="{{route('user.orders',Auth::user()->id)}}" class="dropdown-item" style="text-align:center">Orders</a>
            <a href="{{route('user.address')}}" class="dropdown-item" style="text-align:center">Address</a>
        </div>
        <form method="post" action="{{route('order')}}" class="col-lg-8">
            @csrf
            <div class="mb-4">
                <h4 class="font-weight-semi-bold mb-4">Info</h4>
                <div class="row">
                    <div class="col-md-12 form-group">
                        <label>Name</label>
                        <input class="form-control" type="text" placeholder="John" name="name">
                    </div>
                    <div class="col-md-12 form-group">
                        <label>Phone</label>
                        <input class="form-control" type="text" placeholder="+123 456 789" name="phone">
                    </div>
                    <div class="col-md-12 form-group">
                        <label>Address Line 1</label>
                        <input class="form-control" type="text" placeholder="123 Street">
                    </div>
                    <div class="col-md-12 form-group">
                        <input class="btn btn-block btn-primary my-3 py-3" type="submit" value="Update"
                            style="background-color:red">
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
<!-- Checkout End -->

@endsection