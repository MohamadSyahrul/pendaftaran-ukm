@extends('layouts.master')
@section('title')
Dashboard
@endsection
@section('content')
<section class="section">
    <div class="section-body">
        @if(Auth::user()->role == 'mahasiswa')

      <h2 class="text-info">Welcome To UKM Recruitment
          <a href="{{route('info-ukm.index')}}" class="btn btn-primary">Info UKM</a>
      </h2>
        @endif
      
      <img class="img-responsive thumbnail" src="{{asset('assets/img/5217.jpg')}}" alt="" height="100%" width="100%">
    </div>
</section>
@endsection

