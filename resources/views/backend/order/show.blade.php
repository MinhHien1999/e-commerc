@extends('backend.layouts.master')
@section('content')

<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>{{ucfirst(request()->segment(2))}}</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="{{route('admin')}}">Home</a></li>
              <li class="breadcrumb-item active">{{ucfirst(request()->segment(2))}} Detail</li>
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
          <div class="col-12">
            <!-- Main content -->
            <div class="invoice p-3 mb-3">
              <!-- title row -->
              <div class="row">
                <div class="col-12">
                  <h4>
                    <i class="fas fa-globe"></i> AdminLTE, Inc.
                    <small class="float-right">Date: {{date('d-m-Y', strtotime($orderData->created_at))}}</small>
                  </h4>
                </div>
                <!-- /.col -->
              </div>
              <!-- info row -->
              <div class="row invoice-info">
                <div class="col-sm-4 invoice-col">
                  <address>
                    Name:
                    <strong>{{$orderData->name}}</strong><br>
                    @if(!empty($orderData->user_id))
                      User ID:
                      <strong>{{$orderData->user_id}}</strong><br>
                    @endif
                    Address1: {{$orderData->address1}}<br>
                    Address2: {{$orderData->address2}}<br>
                    Phone: {{$orderData->phone}}<br>
                    Email: {{$orderData->email}}
                  </address>
                </div>
                <!-- /.col -->
                <div class="col-sm-4 invoice-col">
                  {{-- <b>Invoice #007612</b><br> --}}
                  {{-- <br> --}}
                  <b>Order ID:</b> {{$orderData->id}}<br>
                  <b>Payment Method:</b> {{$orderData->payment_method}}<br>
                  <b>Payment Status:</b> {{$orderData->payment_status}}<br>
                  <b>Order Status:</b> {{$orderData->status}}
                </div>
                <!-- /.col -->
              </div>
              <!-- /.row -->

              <!-- Table row -->
              <div class="row">
                <div class="col-12 table-responsive">
                  <table class="table table-striped">
                    <thead>
                    <tr>
                      <th style="text-align: center;">name</th>
                      <th style="text-align: center;">quantity</th>
                      <th style="text-align: center;">price</th>
                      <th style="text-align: center;">Amount</th>
                    </tr>
                    </thead>
                    <tbody>
                    @foreach ($cartData as $cart)
                      <tr style="text-align: center;color:white">
                        <td>{{$cart->product->title}}</td>
                        <td>{{$cart->quantity}}</td>
                        <td>{{number_format($cart->price, 0, '', '.') . ' đ'}}</td>
                        <td>{{number_format($cart->amount, 0, '', '.') . ' đ'}}</td>
                      </tr>
                    </tbody>
                    @endforeach
                  </table>
                </div>
                <!-- /.col -->
              </div>
              <!-- /.row -->

              <div class="row">
                <!-- accepted payments column -->
                <div class="col-6">
                  <p class="lead">Note:</p>
                  <p class="text-muted well well-sm shadow-none" style="margin-top: 10px;color: white">
                    {{$orderData->note}}
                  </p>
                </div>
                <!-- /.col -->
                <div class="col-6">
                  <p class="lead">Amount Due 2/22/2014</p>

                  <div class="table-responsive">
                    <table class="table">
                      <tr>
                        <th style="width:50%">Subtotal:</th>
                        <td>{{number_format($orderData->sub_total, 0, '', '.') . ' đ'}}</td>
                      </tr>
                      <tr>
                        <th>Discount</th>
                        <td>{{empty($orderData->discount) ? 0 : '- '.number_format($orderData->discount, 0, '', '.') . ' đ'}}</td>
                      </tr>
                      {{-- <tr>
                        <th>Shipping:</th>
                        <td>$5.80</td>
                      </tr> --}}
                      <tr>
                        <th>Total:</th>
                        <td>{{number_format($orderData->total_amount, 0, '', '.') . ' đ'}}</td>
                      </tr>
                    </table>
                  </div>
                </div>
                <!-- /.col -->
              </div>
              <!-- /.row -->

              <!-- this row will not appear when printing -->
              <div class="row no-print">
                <div class="col-12">
                  @if($orderData->status != "delivered")
                    <button type="button" class="btn btn-success float-right" id="delivered" data-order="{{$orderData->id}}"><i class="far fa-credit-card"></i> Delivered
                    </button>
                  @endif
                  {{-- <button type="button" class="btn btn-primary float-right" style="margin-right: 5px;">
                    <i class="fas fa-download"></i> Generate PDF
                  </button> --}}
                </div>
              </div>
              <div class="row no-print">
                <div class="col-12">
                  <strong>Note: </strong>{{$orderData->note}}
                </div>
              </div>
            </div>
            <!-- /.invoice -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div>
      <!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>

@endsection

@push('styles')
    <!-- DataTables -->
    <link rel="stylesheet" href="{{asset('backend/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css')}}">
    <link rel="stylesheet" href="{{asset('backend/plugins/datatables-responsive/css/responsive.bootstrap4.min.css')}}">
    <link rel="stylesheet" href="{{asset('backend/plugins/datatables-buttons/css/buttons.bootstrap4.min.css')}}">
    <style>
      button.fas.fa-trash-alt{
        -webkit-text-size-adjust: 100%;
        -webkit-tap-highlight-color: transparent;
        --blue: #007bff;
        --indigo: #6610f2;
        --purple: #6f42c1;
        --pink: #e83e8c;
        --red: #dc3545;
        --orange: #fd7e14;
        --yellow: #ffc107;
        --green: #28a745;
        --teal: #20c997;
        --cyan: #17a2b8;
        --white: #fff;
        --gray: #6c757d;
        --gray-dark: #343a40;
        --primary: #007bff;
        --secondary: #6c757d;
        --success: #28a745;
        --info: #17a2b8;
        --warning: #ffc107;
        --danger: #dc3545;
        --light: #f8f9fa;
        --dark: #343a40;
        --breakpoint-xs: 0;
        --breakpoint-sm: 576px;
        --breakpoint-md: 768px;
        --breakpoint-lg: 992px;
        --breakpoint-xl: 1200px;
        --font-family-sans-serif: "Source Sans Pro",-apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif,"Apple Color Emoji","Segoe UI Emoji","Segoe UI Symbol";
        --font-family-monospace: SFMono-Regular,Menlo,Monaco,Consolas,"Liberation Mono","Courier New",monospace;
        font-size: 1rem;
        text-align: left;
        word-wrap: break-word;
        border-collapse: separate !important;
        border-spacing: 0;
        color: #007bff;
        box-sizing: border-box;
        -webkit-font-smoothing: antialiased;
        display: inline-block;
        font-style: normal;
        font-variant: normal;
        text-rendering: auto;
        line-height: 1;
        font-family: "Font Awesome 5 Free";
        font-weight: 900;
      }
    </style>
@endpush

@push('scripts')
<!-- DataTables  & Plugins -->
    <script src="{{asset('backend/plugins/datatables/jquery.dataTables.min.js')}}"></script>
    <script src="{{asset('backend/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js')}}"></script>
    <script src="{{asset('backend/plugins/datatables-responsive/js/dataTables.responsive.min.js')}}"></script>
    <script src="{{asset('backend/plugins/datatables-responsive/js/responsive.bootstrap4.min.js')}}"></script>
    <script src="{{asset('backend/plugins/datatables-buttons/js/dataTables.buttons.min.js')}}"></script>
    <script src="{{asset('backend/plugins/datatables-buttons/js/buttons.bootstrap4.min.js')}}"></script>
    <script src="{{asset('backend/plugins/jszip/jszip.min.js')}}"></script>
    <script src="{{asset('backend/plugins/pdfmake/pdfmake.min.js')}}"></script>
    <script src="{{asset('backend/plugins/pdfmake/vfs_fonts.js')}}"></script>
    <script src="{{asset('backend/plugins/datatables-buttons/js/buttons.html5.min.js')}}"></script>
    <script src="{{asset('backend/plugins/datatables-buttons/js/buttons.print.min.js')}}"></script>
    <script src="{{asset('backend/plugins/datatables-buttons/js/buttons.colVis.min.js')}}"></script>
    <!-- AdminLTE App -->
    <script src="{{asset('backend/dist/js/adminlte.min.js')}}"></script>
    <!-- SweetAlert -->
    <script src="{{asset('backend/plugins/sweetalert.min.js')}}"></script>
    <!-- Page specific script -->
    <script>
        $(function () {
          $("#example1").DataTable({
            "responsive": true, "lengthChange": false, "autoWidth": false,
            // "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
          }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
          $('#example2').DataTable({
            "paging": true,
            "lengthChange": false,
            "searching": false,
            "ordering": true,
            "info": true,
            "autoWidth": false,
            "responsive": true,
          });
        });
    </script>
    <script>
      $('button#delivered').click(function () {
        var id = $(this).attr('data-order');
        console.log(id);
        $.ajax({
          url: "{{route('order.status')}}",
          type: 'POST',
          data: {
            _token: '{{csrf_token()}}',
            id: id
          },
          success: function(response) {
            console.log(response.msg);
            location.reload();
         }
        })
      })

      $('a[name=deleteBanner]').click(function() {
        var id = $(this).attr('value');
        var form = document.getElementById(`delete-${id}`);
        swal({
          title: "Are you sure?",
          text: "Once deleted, you will not be able to recover this imaginary file!",
          icon: "warning",
          buttons: true,
          dangerMode: true,
        })
        .then((willDelete) => {
          if (willDelete) {
            form.submit();
            swal("Poof! Your imaginary Banner has been deleted!", {
              icon: "success",
            });
          } else {
            swal("Your imaginary Banner is safe!");
          }
        });
      });

    </script>
@endpush
