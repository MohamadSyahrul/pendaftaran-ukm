@extends('layouts.master')
@section('title')
Edit Profil
@endsection
@section('content')
<section class="section">
    <div class="section-body">
        <div class="row d-flex justify-content-center">
            <div class="col-12 col-md-6 col-lg-6">
                <div class="card">
                    <div class="card-header">
                        <h4>Edit Profil</h4>
                    </div>
                    <div class="card-body">
                        <form action="{{route('profile.update', ['profile' => $user->id])}}" method="POST">
                            @csrf
                            @method('put')
                            <div class="form-group">
                                <label>NIM</label>
                                <input type="number" name="nim" value="{{$user->nim}}"  placeholder="Masukan NIM" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Nama</label>
                                <input type="text" name="nama" value="{{$user->nama}}" placeholder="Masukan Nama" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Alamat</label>
                                <input type="text" name="alamat" value="{{$user->alamat}}" placeholder="Masukan Alamat" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>No.Telp</label>
                                <input type="number" name="no_tlp" value="{{$user->no_tlp}}" placeholder="contoh: 085473238594" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Angkatan</label>
                                <input type="text" name="angkatan" value="{{$user->angkatan}}" placeholder="Masukan Angkatan Anda" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Program Studi</label>
                                <input type="text" name="prodi" value="{{$user->prodi}}" placeholder="Masukan Program Studi" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Foto Profil</label>
                                <input type="file" name="foto" class="form-control">
                            </div>
                            <div class="card-footer text-right">
                                <button class="btn btn-primary mr-1" type="submit">Submit</button>
                                <button class="btn btn-secondary" type="reset">Reset</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

@endsection
