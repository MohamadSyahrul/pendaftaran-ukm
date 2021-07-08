@extends('layouts.master')
@section('title')
UKM POLIWANGI
@endsection
@push('plugin-style')
<link rel="stylesheet" href="{{asset('assets/bundles/summernote/summernote-bs4.css')}}">
<link rel="stylesheet" href="{{asset('assets/bundles/codemirror/lib/codemirror.css')}}">
<link rel="stylesheet" href="{{asset('assets/bundles/codemirror/theme/duotone-dark.css')}}">
<link rel="stylesheet" href="{{asset('assets/bundles/jquery-selectric/selectric.css')}}">
@endpush
@section('content')
<section class="section">
    <div class="section-body">
        <div class="row">
            <div class="col-12 col-md-6 col-lg-12">
                <div class="card">
                    @foreach ($ukm as $item)
                    <div class="card-header">
                        <img src="{{asset('assets/img/logo/logo.png')}}" alt="logo" height="70px">
                        &emsp;
                        <h4>{{$item->ukm}}</h4>
                    </div>
                    <div class="card-body">
                        <img class="rounded" src="{{asset('assets/img/logo/UKM-Geniwangi.jpeg')}}" alt="logo"
                            height="90px">
                        &emsp;
                        <img class="rounded" src="{{asset('assets/img/logo/UKM-Geniwangi.jpeg')}}" alt="logo"
                            height="90px">
                        <br>
                        <p>
                            {{$item->keterangan}}
                        </p>
                    </div>
                    @endforeach
                    <div class="card-footer">
                        @if($ukm->count() > 0)
                        <button type="button" class="btn btn-outline-primary" data-toggle="modal"
                            data-target="#UbahData">Ubah
                            Data</button>

                        @else
                        <button type="button" class="btn btn-outline-primary" data-toggle="modal"
                            data-target="#TambahData">Tambah
                            Data</button>

                        @endif
                        {{-- <a href="{{route('ukm-poliwangi.create')}}" class="btn btn-primary">Tambah Data</a> --}}
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

@if($ukm->count() > 0)

<div class="modal fade" id="UbahData" tabindex="-1" role="dialog" aria-labelledby="formModal" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="formModal">Ubah Data</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form class="">
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
                            <input type="text" class="form-control" name="ukm">
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
                                    <i class=""></i>
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
              <form class="">
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
                          <input type="text" class="form-control" name="ukm">
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

@endif
@endsection

@push('plugin-script')
<script src="{{asset('assets/js/page/ckeditor.js')}}"></script>
<script src="{{asset('assets/bundles/summernote/summernote-bs4.js')}}"></script>
@endpush