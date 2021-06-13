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
                        <div class="form-group">
                            <label>NIM</label>
                            <input type="number" value="" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Nama</label>
                            <input type="text" value="" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Email</label>
                            <input type="email" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Alamat</label>
                            <input type="text" value="" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>No.Telp</label>
                            <input type="number" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>File</label>
                            <input type="file" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Angkatan</label>
                            <input type="text" value="" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Devisi</label>
                            <input type="text" value="" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Password</label>
                            <input type="password" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Konfirmasi Password</label>
                            <input type="password" class="form-control">
                        </div>
                    </div>
                    <div class="card-footer text-right">
                        <button class="btn btn-primary mr-1" type="submit">Submit</button>
                        <button class="btn btn-secondary" type="reset">Reset</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

@endsection