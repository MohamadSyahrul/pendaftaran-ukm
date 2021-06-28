@extends('layouts.master')
@section('title')
Detail Kegiatan
@endsection
@push('plugin-style')
<link rel="stylesheet" href="{{asset('assets/bundles/chocolat/dist/css/chocolat.css')}}">
@endpush
@section('content')
<section class="section">
    <div class="section-body">
        <div class="row clearfix justify-content-center">
            <div class="col-12 col-md-6 col-lg-10">
                <div class="card">
                    <div class="card-header">
                        <h4>UKM Ikatan Mahasiswa Muslim</h4>
                    </div>
                    <div class="card-body">
                        <div id="aniimated-thumbnials" class="list-unstyled row clearfix">
                            <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                              <a href="{{asset('assets/img/image-gallery/1.png')}}" data-sub-html="Demo Description">
                                <img class="img-responsive thumbnail" src="{{asset('assets/img/image-gallery/thumb/thumb-1.png')}}" alt="">
                              </a>
                            </div>
                            <div class="col-lg-8 col-md-4 col-sm-6 col-xs-12">
                               <p>
                                Unit Kegiatan Mahasiswa adalah wadah aktivitas kemahasiswaan luar kelas untuk mengembangkan minat, bakat dan keahlian tertentu. 
                               </p>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer text-right">
                        <a href="#" class="btn btn-primary">edit</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection
@push('plugin-script')
<script src="{{asset('assets/bundles/chocolat/dist/js/jquery.chocolat.min.js')}}"></script>
<script src="{{asset('assets/bundles/jquery-ui/jquery-ui.min.js')}}"></script>
@endpush