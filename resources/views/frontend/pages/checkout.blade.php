@extends('frontend.layouts.master')
@section('content')

<!-- Checkout Start -->
<div class="container-fluid pt-5">
    <form method="post" action ="{{route('order')}}"class="row px-xl-5">
        @csrf
        <div class="col-lg-8">
            <div class="mb-4">
                <h4 class="font-weight-semi-bold mb-4">Billing Address</h4>
                <div class="row">
                    <div class="col-md-6 form-group">
                        <label>Name</label>
                        <input class="form-control" type="text" placeholder="John" name="name">
                    </div>
                    <div class="col-md-6 form-group">
                        <label>E-mail</label>
                        <input class="form-control" type="email" placeholder="example@email.com" name="email">
                    </div>
                    <div class="col-md-6 form-group">
                        <label>Phone</label>
                        <input class="form-control" type="number" placeholder="+123 456 789" name="phone">
                    </div>
                    @if(Auth()->check())                    
                        <input class="form-control" type="hidden" name="user" placeholder="" value="{{Auth::user()->id}}">
                    @endif
                    <div class="col-md-6 form-group">
                        <label>Address Line 1</label>
                        <input class="form-control" type="text" placeholder="Street 1" name="address1">
                    </div>
                    <div class="col-md-6 form-group">
                        <label>Address Line 2</label>
                        <input class="form-control" type="text" placeholder="Street 2" name="address2">
                    </div>
                    <div class="col-md-12 form-group">
                        <label>Note</label>
                        <textarea name="note" class="form-control">
                            
                        </textarea>
                    </div>
                    {{-- <div class="col-md-12 form-group">
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="newaccount">
                            <label class="custom-control-label" for="newaccount">Create an account</label>
                        </div>
                    </div>
                    <div class="col-md-12 form-group">
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="shipto">
                            <label class="custom-control-label" for="shipto"  data-toggle="collapse" data-target="#shipping-address">Ship to different address</label>
                        </div>
                    </div> --}}
                </div>
            </div>
            {{-- <div class="collapse mb-4" id="shipping-address">
                <h4 class="font-weight-semi-bold mb-4">Shipping Address</h4>
                <div class="row">
                    <div class="col-md-6 form-group">
                        <label>First Name</label>
                        <input class="form-control" type="text" placeholder="John">
                    </div>
                    <div class="col-md-6 form-group">
                        <label>Last Name</label>
                        <input class="form-control" type="text" placeholder="Doe">
                    </div>
                    <div class="col-md-6 form-group">
                        <label>E-mail</label>
                        <input class="form-control" type="text" placeholder="example@email.com">
                    </div>
                    <div class="col-md-6 form-group">
                        <label>Mobile No</label>
                        <input class="form-control" type="text" placeholder="+123 456 789">
                    </div>
                    <div class="col-md-6 form-group">
                        <label>Address Line 1</label>
                        <input class="form-control" type="text" placeholder="123 Street">
                    </div>
                    <div class="col-md-6 form-group">
                        <label>Address Line 2</label>
                        <input class="form-control" type="text" placeholder="123 Street">
                    </div>
                    <div class="col-md-6 form-group">
                        <label>Country</label>
                        <select class="custom-select">
                            <option selected>United States</option>
                            <option>Afghanistan</option>
                            <option>Albania</option>
                            <option>Algeria</option>
                        </select>
                    </div>
                    <div class="col-md-6 form-group">
                        <label>City</label>
                        <input class="form-control" type="text" placeholder="New York">
                    </div>
                    <div class="col-md-6 form-group">
                        <label>State</label>
                        <input class="form-control" type="text" placeholder="New York">
                    </div>
                    <div class="col-md-6 form-group">
                        <label>ZIP Code</label>
                        <input class="form-control" type="text" placeholder="123">
                    </div>
                </div>
            </div> --}}
        </div>
        <div class="col-lg-4">
            <div class="card border-secondary mb-5">
                <div class="card-header bg-secondary border-0">
                    <h4 class="font-weight-semi-bold m-0">Order Total</h4>
                </div>
                <div class="card-body">
                    <h5 class="font-weight-medium mb-3">Products</h5>
                    {{-- @dd(Cart::content()) --}}
                    @foreach(Cart::content() as $items)
                        <div class="d-flex justify-content-between">
                            <p>{{$items->name. ' (x'.$items->qty.')'}}</p>
                            <p>{{number_format($items->price * $items->qty,0,',','.').' đ'}}</p>
                        </div>
                    @endforeach
                    <hr class="mt-0">
                    <div class="d-flex justify-content-between mb-3 pt-1">
                        <h6 class="font-weight-medium">Subtotal</h6>
                        <h6 class="font-weight-medium">{{Cart::subtotal(0,',','.'). ' đ'}}</h6>
                    </div>
                    @if(!empty(session('coupon')))
                        <div class="d-flex justify-content-between">
                            <h6 class="font-weight-medium">Coupon</h6>
                            <h6 class="font-weight-medium">
                                {{'-'.number_format(session('coupon')['value'], 0, '', '.').' đ'}}
                            </h6>
                        </div>
                    @endif
                </div>
                <div class="card-footer border-secondary bg-transparent">
                    <div class="d-flex justify-content-between mt-2">
                        <h5 class="font-weight-bold">Total</h5>
                        <h5 class="font-weight-bold">
                            @if (!empty(session('coupon')))
                            {{-- {{session('coupon')['value']}} --}}
                                @if(session('coupon')['value'] > round(intval(str_replace('.', '', Cart::subtotal()))))
                                    {{'0 đ'}}
                                @else
                                {{number_format(round(intval(str_replace('.', '', Cart::subtotal()))) - session('coupon')['value'], 0, '', '.').' đ'}}
                                @endif
                            @else
                                {{Cart::subtotal(0,',','.').' đ'}}
                            @endif
                        </h5>
                        {{-- <h5 class="font-weight-bold">{{Cart::subtotal(0,',','.'). ' đ'}}</h5> --}}
                    </div>
                </div>
            </div>
            <div class="card border-secondary mb-5">
                <div class="card-header bg-secondary border-0">
                    <h4 class="font-weight-semi-bold m-0">Payment</h4>
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <div class="custom-control custom-radio">
                            <input type="radio" class="custom-control-input" name="payment" id="paypal" value="paypal">
                            <label class="custom-control-label" for="paypal">Paypal</label>
                        </div>
                    </div>
                    {{-- <div class="form-group">
                        <div class="custom-control custom-radio">
                            <input type="radio" class="custom-control-input" name="payment" id="directcheck" value="momo">
                            <label class="custom-control-label" for="directcheck">Momo</label>
                        </div>
                    </div> --}}
                </div>
                <div class="card-footer border-secondary bg-transparent">
                    <button class="btn btn-lg btn-block btn-primary font-weight-bold my-3 py-3">Place Order</button>
                </div>
            </div>
        </div>
    </form>
</div>
<!-- Checkout End -->

@endsection