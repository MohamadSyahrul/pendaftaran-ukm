@extends('layouts.master')
@section('title')
Dashboard
@endsection
@section('content')
{{-- <section class="section">
    <div class="section-body">
        <h2 class="text-info">Welcome To UKM Recruitment
            @if(Auth::user()->role == 'mahasiswa')
            <a href="{{route('info-ukm.index')}}" class="btn btn-primary">Info UKM</a>
@endif
</h2>
<img class="img-responsive thumbnail" src="{{asset('assets/img/5217.jpg')}}" alt="" height="100%" width="100%">
</div>
</section> --}}

<section class="section">
    <div class="section-body">
        <div class="row">
            <div class="col-12 col-md-6 col-lg-12">
                <div class="card">
                    <div class="card-header">
                        <h4>Welcome To UKM Recruitment</h4>
                        @if(Auth::user()->role == 'mahasiswa')
                        <a href="{{route('info-ukm.index')}}" class="btn btn-primary">Info UKM</a>
                        @endif
                      </div>
                      <div class="card-body">
                        <img class="img-responsive thumbnail" src="{{asset('/img/16291763087.png')}}" alt=""
                            height="100%" width="100%">
                    </div>
                    {{-- <div class="card-footer">
                      Footer Card
                  </div> --}}
                </div>
            </div>
        </div>
    </div>
</section>
@endsection
