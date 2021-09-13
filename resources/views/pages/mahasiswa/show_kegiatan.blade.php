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
                        <h4>{{ $event->judul }}</h4>
                    </div>
                    <div class="card-body">
                        <div id="aniimated-thumbnials" class="list-unstyled row clearfix">
                            <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                                <a href="#" data-sub-html="Demo Description">
                                    <img class="img-responsive thumbnail" src="{{asset('img/'.$event->gambar)}}" alt="">
                                </a>
                            </div>
                            <div class="col-lg-8 col-md-4 col-sm-6 col-xs-12">
                                <p>
                                    {{$event->keterangan}}
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer text-right">
                        <a href="{{route('event.index')}}" class="btn btn-primary">Kembali</a>
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
