@if((session('message')))
    <div class="alert alert-success" style="text-align: center">
    <strong>Success!</strong> {{session('message')}}
    </div>
@endif

@if((session('error')))
    <div class="alert alert-danger" style="text-align: center">
        {{-- <strong>Danger!</strong>  --}}
        {{session('error')}}
    </div>
@endif

@if ($errors->any())
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li style="text-align: center">{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif

@push('scripts')
    <script>
        setTimeout(function (){
            $('.alert').fadeOut();
        },5000);
    </script>
@endpush