<!-- Vendor Start -->
<div class="container-fluid py-5">
    <div class="row px-xl-5">
        <div class="col">
            <div class="owl-carousel vendor-carousel">
                @foreach(App\Models\Brand::orderBy('id', 'DESC')->where(['status' => 'active'])->limit(8)->get() as $brand)
                <div class="vendor-item border p-4">
                    <img src="{{URL('upload/brand/'.$brand->image)}}" alt="">
                </div>
                @endforeach
            </div>
        </div>
    </div>
</div>
<!-- Vendor End -->
