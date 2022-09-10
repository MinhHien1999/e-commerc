@extends('frontend.layouts.master')
@section('content')

<!-- Checkout Start -->
<div class="container-fluid pt-5">
    <form method="post" action ="{{route('order')}}"class="row px-xl-5">
        @csrf
        <div class="col-lg-4 nav-item dropdown">
            {{-- <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Pages</a> --}}
            {{-- <div class="dropdown-menu rounded-0 m-0"> --}}
                {{-- <a href="cart.html" class="dropdown-item" style="text-align:center">Shopping Cart</a> --}}
                <a href="{{route('user.orders',Auth::user()->id)}}" class="dropdown-item" style="text-align:center">Orders</a>
                {{-- <a href="{{route('user.address')}}" class="dropdown-item" style="text-align:center">Address</a> --}}
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
                    @foreach($Orders as $Order)
                        <tr item="{{$Order->id}}">
                            <td class="align-middle">
                                {{'#'.$Order->id}}
                            </td>
                            <td class="align-middle">{{date('d-m-Y H:i:s', strtotime($Order->created_at))}}</td>
                            <td class="align-middle" style="color: <?php if($Order->status == "processing") {echo "blue";} elseif($Order->status == "delivered") {echo "green";} else echo "black";?>">
                                {{ucfirst($Order->status)}}
                            </td>
                            <td class="align-middle">{{number_format($Order->total_amount,0,',','.').' đ'}}</td>
                            <td class="align-middle"><a class="btn btn-sm btn-primary deleteCart" data="{{$Order->id}}"><i class="fa fa-times"></i></a></td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </form>
</div>
<!-- Checkout End -->

@endsection