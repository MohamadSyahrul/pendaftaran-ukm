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
@include('layouts.message-flash')

<section class="section">
    <div class="section-body">
        <div class="row">
            @foreach ($ukm as $key => $item)
            <div class="col-12 col-md-12 col-lg-12">
                <div class="card">
                    <div class="card-header">
                        <img src="{{asset('img/'. $item->logo)}}" alt="logo" height="70px">
                        &emsp;&emsp;&emsp;&emsp;&emsp;
                        <h4>{{$item->ukm}}</h4>
                    </div>
                    <div class="card-body">
                        <img class="rounded" src="{{asset('img/'. $item->foto)}}" alt="logo" height="90px">
                        &emsp;
                        <img class="rounded" src="{{asset('img/'. $item->foto1)}}" alt="logo" height="90px">
                        <br>
                        <p>
                            {!!$item->keterangan!!}
                        </p>
                    </div>
                    <div class="card-footer">
                        <div align="left" class="pr-3">
                             <button type="button" class="btn btn-outline-primary mb-2" data-toggle="modal"
                data-target="#TambahData{{$item->id}}">Register</button>
                                         <!--  <form method="POST" action="{{ route('recruitment.store')}}"
                                            >
                                            @csrf
                                            @method('POST')
                                            <input type="hidden" value="{{$item->id}}" class="form-control" name="ukm_id">
                                            <button type="submit"
                                               class="btn btn-primary btn-outline-primary mb-2 rounded">
                                                <i class="fas fa-add">
                                                    Daftar
                                                </i>
                                            </button>
                                        </form> -->
                                   
                    </div>
                     
                    </div>
                </div>
                @endforeach
        </div>
    </div>

</section>

<div class="modal fade" id="TambahData{{$item->id}}" tabindex="-1" role="dialog" aria-labelledby="formModal" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="formModal"> Register </h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form class="" action="{{route('recruitment.store')}}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <input type="hidden" value="{{$item->id}}" class="form-control" name="ukm_id">
                    <div class="form-group">
                                <label>NIM</label>
                                <input type="number" name="nim" value="{{Auth::user()->username}}"  placeholder="Masukan NIM" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Nama</label>
                                <input type="text" name="nama" value="" placeholder="Masukan Nama" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Alamat</label>
                                <input type="text" name="alamat" value="" placeholder="Masukan Alamat" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>No.Telp</label>
                                <input type="number" name="no_tlp" value="" placeholder="contoh: 085473238594" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Angkatan</label>
                                <input type="text" name="angkatan" value="" placeholder="Masukan Angkatan Anda" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Program Studi</label>
                                <input type="text" name="prodi" value="" placeholder="Masukan Program Studi" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Foto Profil</label>
                                <input type="file" name="foto" class="form-control">
                            </div>
                    <button type="submit" class="btn btn-primary m-t-15 waves-effect">Submit</button>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection
