@extends('layouts.master')
@section('title')
    Edit UKM
@endsection
@push('plugin-style')
    <link rel="stylesheet" href="{{ asset('assets/bundles/chocolat/dist/css/chocolat.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/bundles/summernote/summernote-bs4.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/bundles/codemirror/lib/codemirror.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/bundles/codemirror/theme/duotone-dark.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/bundles/jquery-selectric/selectric.css') }}">
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
                        <form class="form form-horizontal" action="{{ route('ukm-poliwangi.update', $item->id) }}"
                            method="post" enctype="multipart/form-data">
                            @csrf
                            @method('put')
                            <div class="card-body">
                                <div class="form-group">
                                    <label>Logo</label>

                                    <input type="file" class="form-control" name="logo">

                                </div>
                                <div class="form-group">
                                    <label>Title</label>


                                    <select name="ukm" class="form-control form-control-sm mb-3">
                                        <option value="{{ $list_ukm->nama_ukm }}">
                                            {{ $list_ukm->nama_ukm }}
                                        </option>
                                    </select>

                                </div>
                                <div class="form-group">
                                    <label>Keterangan</label>


                                    <textarea class="summernote-simple" name="keterangan">
                                                        {{ $item->keterangan }}
                                                    </textarea>

                                </div>
                                <div class="form-group">
                                    <label>Gambar 1</label>


                                    <input type="file" class="form-control" name="foto">

                                </div>
                                <div class="form-group">
                                    <label>Gambar 2</label>


                                    <input type="file" class="form-control" name="foto1">

                                </div>
                            </div>
                            <div class="card-footer text-right">
                                <button type="reset" class="btn btn-light mr-3">Cancel</button>
                                <button type="submit" class="btn btn-primary">Submit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
@push('plugin-script')
    <script src="{{ asset('assets/bundles/chocolat/dist/js/jquery.chocolat.min.js') }}"></script>
    <script src="{{ asset('assets/bundles/jquery-ui/jquery-ui.min.js') }}"></script>
    <script src="{{ asset('assets/js/page/ckeditor.js') }}"></script>
    <script src="{{ asset('assets/bundles/summernote/summernote-bs4.js') }}"></script>
@endpush
