@extends('layouts.master')
@section('title')
Edit Kegiatan
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
                        <h4>Edit Data</h4>
                    </div>
                    <form class="form form-horizontal" action="{{route('kegiatan.update',$item->id)}}" method="post"
                        enctype="multipart/form-data">
                        @csrf
                        @method('put')
                        <div class="card-body">
                            <div class="form-group">
                                <label>Judul</label>
                                <input id="judul" name="judul" type="text" class="form-control" value="{{$item->judul}}">
                            </div>
                            <div class="form-group">
                                <label>Gambar</label>
                                <input id="gambar" name="gambar" type="file" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Keterangan</label>
                                <input id="keterangan" name="keterangan" type="text" class="form-control" value="{{$item->keterangan}}">
                            </div>
                        </div>
                        <div class="card-footer text-right">
                            <button type="reset" class="btn btn-light mr-3">Cancel</button>
                            <button type="submit" class="btn btn-primary">Tambah</button>
                        </div>
                    </form>
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
