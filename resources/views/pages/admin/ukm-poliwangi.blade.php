@extends('layouts.master')
@section('title')
    UKM POLIWANGI
@endsection
@section('content')
<section class="section">
    <div class="section-body">
      <div class="row">
        <div class="col-12 col-md-6 col-lg-12">
            <div class="card">
              <div class="card-header">
                <img src="{{asset('assets/img/logo/logo.png')}}" alt="logo" height="70px">
                &emsp;
                <h4>UNIT KEGIATAN MAHASISWA GENIWANGI</h4>
              </div>
              <div class="card-body">
                <img class="rounded" src="{{asset('assets/img/logo/UKM-Geniwangi.jpeg')}}" alt="logo" height="90px">
                &emsp;
                <img class="rounded" src="{{asset('assets/img/logo/UKM-Geniwangi.jpeg')}}" alt="logo" height="90px">
                <br>
                <p>
                  This is some text within a card body.
                </p>    
              </div>
              <div class="card-footer">
                <a href="{{route('ukm-poliwangi.create')}}" class="btn btn-primary">Tambah Data</a>
              </div>
            </div>
          </div>
      </div>
    </div>
</section>
@endsection