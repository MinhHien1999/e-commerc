@extends('backend.layouts.master')
@section('content')
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1><a href="{{route('banner.index')}}" style="text-decoration: none; color: white;">{{ucfirst(request()->segment(2))}}</a></h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="{{route('admin')}}">Home</a></li>
              <li class="breadcrumb-item active">Add {{ucfirst(request()->segment(2))}}</li>
            </ol>
          </div>
          @include('backend.layouts.notification')
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <!-- left column -->
          <div class="col-md-12">
            <!-- general form elements -->
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Add</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form method="post" action="{{route('coupon.update',$dataCoupon->id)}}" enctype="multipart/form-data">
                @csrf
                @method('PATCH')
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputTitle">Code</label>
                    <input type="text" name="code" class="form-control" placeholder="Code" value="{{$dataCoupon->code}}">
                  </div>
                  <div class="form-group" id="type">
                    <label>Type</label>
                    <select class="custom-select" name="type">
                      <option value="fixed" {{$dataCoupon->type == "fixed" ? "selected":""}}>Fixed</option>
                      <option value="percent" {{$dataCoupon->type == "percent" ? "selected":""}}>Percent</option>
                    </select>
                  </div>
                  <div class="form-group">
                    <label for="exampleInputTitle">Value</label>
                    <input type="{{$dataCoupon->type == "fixed" ? "number":"hidden"}}" name="valueFixed" id="CouponFixed" class="form-control" min="1" max="999999"placeholder="Value 1-999999" value="{{$dataCoupon->type == "fixed" ? number_format($dataCoupon->value,0,',','.') : "1"}}" {{$dataCoupon->type == "percent" ? "readonly":""}}>
                    <input type="{{$dataCoupon->type == "percent" ? "number":"hidden"}}" name="valuePercent" id="CouponPercent" class="form-control" min="1" max="100" placeholder="Value 1-100%" value="{{$dataCoupon->type == "percent" ? number_format($dataCoupon->value,0,',','.') : "1"}}" {{$dataCoupon->type == "fixed" ? "readonly":""}}>
                  </div>
                  <div class="form-group">
                    <label for="exampleInputstatus">Status</label>
                    <select name="status" class="form-control">
                      <option {{$dataCoupon->status == "active" ? "selected":""}} value="active">Active</option>
                      <option {{$dataCoupon->status == "inactive" ? "selected":""}} value="inactive">Inactive</option>
                    </select>
                  </div>
                </div>

                <div class="card-footer">
                  <button type="submit" class="btn btn-primary">Update</button>
                </div>
              </form>
            </div>
          </div>
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
@endsection

@push('scripts')
  <!-- bs-custom-file-input -->
  <script src="{{asset('backend/plugins/bs-custom-file-input/bs-custom-file-input.min.js')}}"></script>
  <!-- AdminLTE App -->
  <script src="{{asset('backend/dist/js/adminlte.min.js')}}"></script>
  <script>
    $('#type').change(function(e){
      e.preventDefault();
      let check = $('#type option:selected').val();
      console.log(check);
      if(check == "percent"){
        $('#CouponPercent').attr("type", "number");
        $('#CouponPercent').removeAttr("readonly");
        $('#CouponPercent').attr("min", "1");
        $('#CouponPercent').attr("max", "100");
        $('#CouponPercent').attr("placeholder", "Percent 1-100%");
        $('#CouponFixed').attr("type", "hidden");
        $('#CouponFixed').attr("readonly", true);
        $('#CouponFixed').attr("value", "1");
      }else{
        $('#CouponFixed').attr("type", "number");
        $('#CouponFixed').removeAttr("readonly");
        $('#CouponFixed').attr("min", "1");
        $('#CouponFixed').attr("max", "999999");
        $('#CouponFixed').attr("placeholder", "1-999999");
        $('#CouponPercent').attr("type", "hidden");
        $('#CouponPercent').attr("readonly", true);
        $('#CouponPercent').attr("value", "1");
      }
    })
  </script>
@endpush
