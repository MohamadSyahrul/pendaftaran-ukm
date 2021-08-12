@extends('layouts.master')
@section('title')
Dashboard
@endsection
@section('content')
<section class="section">
    <div class="section-body">
      <h2 class="text-info">Welcome To UKM Recruitment
        @if(Auth::user()->role == 'mahasiswa')
          <a href="{{route('info-ukm.index')}}" class="btn btn-primary">Info UKM</a>
        @endif
      </h2>
      <img class="img-responsive thumbnail" src="{{asset('assets/img/5217.jpg')}}" alt="" height="100%" width="100%">
    </div>
</section>
@endsection

