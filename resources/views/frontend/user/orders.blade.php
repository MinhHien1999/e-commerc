@extends('frontend.layouts.master')
@section('content')

<!-- Checkout Start -->
<div class="container-fluid pt-5">
    <form method="post" action ="{{route('order')}}"class="row px-xl-5">
        @csrf
        <div class="col-lg-4 nav-item dropdown">
            {{-- <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Pages</a> --}}
            {{-- <div class="dropdown-menu rounded-0 m-0"> --}}
                <a href="cart.html" class="dropdown-item" style="text-align:center">Shopping Cart</a>
                <a href="{{route('user.orders')}}" class="dropdown-item" style="text-align:center">Orders</a>
                <a href="{{route('user.address')}}" class="dropdown-item" style="text-align:center">Address</a>
            {{-- </div> --}}
        </div>
        <div class="col-lg-8">
            <table class="table table-bordered text-center mb-0">
                <thead class="bg-secondary text-dark">
                    <tr>
                        <th>Order</th>
                        <th>Date</th>
                        <th>Status</th>
                        <th>Total</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody class="align-middle">
                    @foreach(Cart::content() as $item)
                        <tr item="{{$item->rowId}}">
                            <td class="align-middle">
                                #123
                            </td>
                            <td class="align-middle">{{number_format($item->price,0,',','.').' đ'}}</td>
                            <td class="align-middle">
                                pending
                            </td>
                            <td class="align-middle">{{number_format($item->price * $item->qty,0,',','.').' đ'}}</td>
                            <td class="align-middle"><a class="btn btn-sm btn-primary deleteCart" data="{{$item->rowId}}"><i class="fa fa-times"></i></a></td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </form>
</div>
<!-- Checkout End -->

@endsection