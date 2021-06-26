@extends('layouts.master')
@section('title')
Tambah Data
@endsection
@section('content')
<section class="section">
    <div class="section-body">
        <div class="row">
            <div class="col-12 col-md-6 col-lg-12">
                <div class="card">
                    <div class="card-header">
                        <h4>UNIT KEGIATAN MAHASISWA GENIWANGI</h4>
                    </div>
                    <div class="card-body">
                        <div class="form-group">
                            <label>Deskripsi</label>
                            <textarea class="form-control"></textarea>
                        </div>
                        <div class="form-group">
                            <label>Upload Foto</label>
                            <input type="file" class="form-control">
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
