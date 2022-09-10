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
        <div class="col-lg-8">
            <div class="mb-4">
                <h4 class="font-weight-semi-bold mb-4">Info</h4>
                <div class="row">
                    <div class="col-md-12 form-group">
                        <label>Name: </label>
                        <p style="color: blue">dsad</p>
                    </div>
                    <div class="col-md-12 form-group">
                        <label>Phone</label>
                        <p style="color: blue">+123 456 789</p>
                    </div>
                    <div class="col-md-12 form-group">
                        <label>Address Line 1</label>
                        <p style="color: blue">123 Street</p>
                    </div>
                    <div class="col-md-12 form-group">
                        <input class="btn btn-block btn-primary my-3 py-3" type="submit" value="Edit Address" id="userAddress" style="background-color:red">
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Checkout End -->

@endsection

@push('scripts')

<script>
    $(document).ready(function (){
        $('input#userAddress').click(function() {
            window.location.href = "{{route('user.address-edit')}}";
        })
    })
</script>
@endpush