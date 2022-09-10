<!-- Navbar Start -->
<div class="container-fluid mb-5">
    <div class="row border-top px-xl-5">
        <div class="col-lg-3 d-none d-lg-block">
            <a class="btn shadow-none d-flex align-items-center justify-content-between bg-primary text-white w-100" data-toggle="collapse" href="#navbar-vertical" style="height: 65px; margin-top: -1px; padding: 0 30px;">
                <h6 class="m-0">Categories</h6>
                <i class="fa fa-angle-down text-dark"></i>
            </a>
            <nav class="collapse show navbar navbar-vertical navbar-light align-items-start p-0 border border-top-0 border-bottom-0" id="navbar-vertical">
                <div class="navbar-nav w-100 overflow-hidden" style="height: 410px">
                        <?php
                            $categorys = \App\Models\Category::getStatusActive();
                        ?>
                    @foreach($categorys as $category)
                        @if(count(\App\Models\Category::getChildStatusActive($category->id)) > 0)
                            <div class="nav-item dropdown" id="cat-{{$category->id}}">
                                <a href="{{route('product-cat',$category->slug)}}" class="nav-link" data-toggle="dropdown">{{$category->title}}
                                    <i class="fa fa-angle-down float-right mt-1">
                                    </i>
                                </a>
                                {{-- <a href="{{route('product-cat',$cat_child->slug)}}" class="dropdown-item" >{{$cat_child->title}}</a> --}}
                                <div class="dropdown-menu position-absolute bg-secondary border-0 rounded-0 w-100 m-0" style="float: left">
                                    @foreach(\App\Models\Category::getChildStatusActive($category->id) as $cat_child)
                                        <a href="{{route('product-cat',$cat_child->slug)}}" class="dropdown-item" >{{$cat_child->title}}</a>
                                    @endforeach
                                </div>
                            </div>
                        @else
                            <a href="{{route('product-cat',$category->slug)}}" id="cat-{{$category->id}}" class="nav-item nav-link">{{$category->title}}</a>
                        @endif
                    @endforeach
                </div>
            </nav>
        </div>
        <div class="col-lg-9">
            <nav class="navbar navbar-expand-lg bg-light navbar-light py-3 py-lg-0 px-0">
                <a href="" class="text-decoration-none d-block d-lg-none">
                    <h1 class="m-0 display-5 font-weight-semi-bold"><span class="text-primary font-weight-bold border px-3 mr-1">E</span>Shopper</h1>
                </a>
                <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                    <div class="navbar-nav mr-auto py-0">
                        <a href="{{route('home')}}" class="nav-item nav-link active">Home</a>
                    </div>
                    <div class="navbar-nav ml-auto py-0">
                        {{-- @dd(Auth::check()) --}}
                        @if(!Auth::check())
                            <a href="{{route('user.login')}}" class="nav-item nav-link">Login</a>
                            <a href="{{route('user.register')}}" class="nav-item nav-link">Register</a>
                        @else
                            <div>
                                <button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    {{Auth::user()->name}}
                                </button>
                                <div class="dropdown-menu dropdown-menu-right">
                                    <a href="{{route('user.orders')}}" class="dropdown-item" type="button">My Order</a>
                                <div class="dropdown-divider"></div>
                                    <a href="{{route('user.logout')}}" class="dropdown-item" type="button">Logout</a>
                                </div>
                            </div>
                        @endif
                    </div>
                </div>
            </nav>
            @if(request()->segment(1) == null)
                @include('frontend.layouts.slider')
            @endif
        </div>
    </div>
</div>
<!-- Navbar End -->
