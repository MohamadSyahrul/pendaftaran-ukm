@extends('layouts.master')
@section('title')
    UKM POLIWANGI
@endsection
@push('plugin-style')
    <link rel="stylesheet" href="{{ asset('assets/bundles/summernote/summernote-bs4.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/bundles/codemirror/lib/codemirror.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/bundles/codemirror/theme/duotone-dark.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/bundles/jquery-selectric/selectric.css') }}">
@endpush
@section('content')
    <section class="section">
        <div class="section-body">
            <div class="row">
                @if ($list_ukm != null)
                    @if ($item == null)
                        <button type="button" class="btn btn-outline-primary mb-2" data-toggle="modal"
                            data-target="#TambahData">Add
                            </button>
                    @else


                        <a href="{{ route('ukm-poliwangi.edit', $item->id) }}">
                            <button type="button" class="btn btn-outline-primary mb-2">Edit
                                </button></a>

                        <div class="col-12 col-md-12 col-lg-12">
                            <div class="card">
                                <div class="card-header">
                                    <img src="{{ asset('img/' . $item->logo) }}" alt="logo" height="70px">
                                    &emsp;
                                    <h4>{{ $item->desk_ukm->name }}</h4>
                                </div>
                                <div class="card-body">
                                    <img class="rounded" src="{{ asset('img/' . $item->foto) }}" alt="logo"
                                        height="90px">
                                    &emsp;
                                    <img class="rounded" src="{{ asset('img/' . $item->foto1) }}" alt="logo"
                                        height="90px">
                                    <br>
                                    <p>
                                        {!! $item->keterangan !!}
                                    </p>

                                </div>
                                {{-- <div class="card-footer">
                                    <div class="dropdown dropright">
                                        <a href="#" data-toggle="dropdown"
                                            class="btn btn-warning dropdown-toggle">Options</a>
                                        <div class="dropdown-menu">
                                            <a href="{{route('ukm-poliwangi.edit',$item->id)}}" class="dropdown-item has-icon"><i
                                    class="far fa-edit"></i> Edit</a>

                                            <form action="{{ route('ukm-poliwangi.destroy', $item->id) }}" method="post"
                                                class="d-inline" onsubmit="return confirm('Yakin hapus data ?')">
                                                @method('delete')
                                                @csrf
                                                <button type="submit" class="dropdown-item has-icon text-danger">
                                                    <i class="fa fa-trash"></i>
                                                    Delete
                                                </button>
                                            </form>

                                        </div>
                                    </div> --}}
                                {{-- <a href="{{route('ukm-poliwangi.create')}}" class="btn btn-primary">Tambah Data</a> --}}
                            </div>
                        </div>
            </div>
            @endif
        </div>
        </div>
    </section>

    <div class="modal fade" id="TambahData" tabindex="-1" role="dialog" aria-labelledby="formModal" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="formModal">Tambah Data</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form class="___class_+?25___" action="{{ route('ukm-poliwangi.store') }}" method="POST"
                        enctype="multipart/form-data">
                        @csrf
                        <div class="form-group">
                            <label>Logo</label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <div class="input-group-text">
                                        <i class="far fa-laugh"></i>
                                    </div>
                                </div>
                                <input type="file" class="form-control" name="logo">
                            </div>
                        </div>
                        <div class="form-group">
                            <label>Title</label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <div class="input-group-text">
                                        <i class="fas fa-align-center"></i>
                                    </div>
                                </div>
                                <select name="ukm" class="form-control form-control-sm mb-3">
                                    <option value="{{ $list_ukm->nama_ukm }}">
                                        {{ $list_ukm->nama_ukm }}
                                    </option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label>Keterangan</label>
                            <div class="input-group">

                                <textarea class="summernote-simple" name="keterangan"></textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <label>Gambar 1</label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <div class="input-group-text">
                                        <i class="far fa-image"></i>
                                    </div>
                                </div>
                                <input type="file" class="form-control" name="foto">
                            </div>
                        </div>
                        <div class="form-group">
                            <label>Gambar 2</label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <div class="input-group-text">
                                        <i class="far fa-image"></i>
                                    </div>
                                </div>
                                <input type="file" class="form-control" name="foto1">
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary m-t-15 waves-effect">Submit</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
@else
    <div class="alert alert-danger alert-block">
        <strong>Data UKM Belum Ada, Mohon Konfirmasi Ke ADMIN untuk ditambahkan</strong>
    </div>

    @endif

@endsection

@push('plugin-script')
    <script src="{{ asset('assets/js/page/ckeditor.js') }}"></script>
    <script src="{{ asset('assets/bundles/summernote/summernote-bs4.js') }}"></script>
@endpush
