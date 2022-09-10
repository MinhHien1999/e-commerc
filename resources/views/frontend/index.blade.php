@extends('frontend.layouts.master')
@section('content')
    <!-- Products Start -->
    <div class="container-fluid pt-5">
        <div class="text-center mb-4">
            <h2 class="section-title px-5"><span class="px-2">Top Sellers</span></h2>
        </div>
        <div class="row px-xl-5 pb-3">
            @foreach ($productTopSeller as $product)
                <div class="col-lg-3 col-md-6 col-sm-12 pb-1" value="{{$product->id}}">
                    <div class="card product-item border-0 mb-4">
                        <div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                            <img class="img-fluid w-100" src="{{asset('frontend')}}/img/product-1.jpg" alt="">
                        </div>
                        <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                            <h6 class="text-truncate mb-3">{{$product->title}}</h6>
                            <div class="d-flex justify-content-center">
                                <h6>{{number_format($product->price - ($product->price * $product->discount/100),0,',','.').'đ'}}</h6>
                                @if(!empty($product->discount) || $product->discount > 0 )
                                    <h6 class="text-muted ml-2"><del>{{number_format($product->price,0,',','.').'đ'}}</del></h6>
                                @endif
                            </div>
                        </div>
                        <div class="card-footer d-flex justify-content-between bg-light border">
                            <a href="{{route('product-detail',$product->slug)}}" class="btn btn-sm text-dark p-0"><i class="fas fa-eye text-primary mr-1"></i>View Detail</a>
                            <button class="btn btn-sm text-dark p-0 addCart"><i class="fas fa-shopping-cart text-primary mr-1"></i>Add To Cart</button>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
    </div>
    <!-- Products End -->
@endsection
