@extends('layouts.master')
@section('title')
    Profil {{ Auth::user()->name }}
@endsection
@push('plugin-style')
    <link rel="stylesheet" href="{{ asset('assets/bundles/datatables/datatables.min.css') }}">
    <link rel="stylesheet"
        href="{{ asset('assets/bundles/datatables/DataTables-1.10.16/css/dataTables.bootstrap4.min.css') }}">
@endpush
@section('content')
    @include('layouts.message-flash')

    @foreach ($data as $item)
        <div class="section-body">
            <div class="row d-flex justify-content-center">
                <div class="col-12 col-sm-12 col-lg-8">
                    <div class="card author-box card-primary">

                        <div class="card-body">
                            <div class="author-box-left">
                                @if ($item != null)
                                    <img alt="image" src="{{ asset('img/' . $item->foto) }}"
                                        class="rounded-circle author-box-picture">

                                    <div class="clearfix"></div>
                                    @if ($item->status == 'EX Anggota')
                                        <a href="{{ route('cetak', $item->id) }}"
                                            class="btn btn-primary mt-3">Sertifikat</a>
                                    @else
                                    @endif
                            </div>

                            <div class="author-box-details">
                                <div class="author-box-name">
                                    <!-- <a href="#">{{ Auth::user()->name }}</a> -->
                                </div>
                                <!-- <div class="author-box-job">{{ Auth::user()->role }}</div> -->
                                <div class="author-box-description" style="margin-top: -1em">
                                    <table>
                                        <tr>
                                            <th>Nama :</th>
                                            <td> {{ $item->nama }}</td>
                                        </tr>
                                        <tr>
                                            <th>NIM :</th>
                                            <td> {{ $item->nim }}</td>
                                        </tr>
                                        <tr>
                                            <th>Nomor Tlp : </th>
                                            <td> 0{{ $item->no_tlp }}</td>
                                        </tr>
                                        <tr>
                                            <th>Alamat :</th>
                                            <td> {{ $item->alamat }}</td>
                                        </tr>
                                        <tr>
                                            <th>Prodi :</th>
                                            <td> {{ $item->prodi }}</td>
                                        </tr>
                                        <tr>
                                            <th>UKM :</th>
                                            <td> {{ $item->ukm->ukm }}</td>
                                        </tr>
                                        <tr>
                                            <th>Status :</th>
                                            @if ($item->status == 'Diterima')
                                                <td><a href="#" disabled class="btn btn-primary mt-1 rounded">Anggota</a>
                                                </td>
                                            @elseif($item->status == 'Belum Diterima')
                                                <td><a href="#" disabled class="btn btn-primary mt-1 rounded">Belum
                                                        Diterima</a></td>
                                            @else
                                                <td><a href="#" disabled class="btn btn-primary mt-1 rounded">Demisioner</a>
                                                </td>
                                            @endif
                                        </tr>

                                    </table>
                                </div>
                                <div class="w-100 d-sm-none"></div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    @else
        <button type="button" class="btn btn-outline-primary mb-2" data-toggle="modal" data-target="#TambahData">Tambahkan
            Data
            Profil</button>
        <div class="modal fade" id="TambahData" tabindex="-1" role="dialog" aria-labelledby="formModal"
            aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="formModal">Tambah Data</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form action="{{ route('profile.store') }}" method="POST" enctype="multipart/form-data">
                            @csrf
                            @method('POST')
                            <div class="form-group">
                                <label>NIM</label>
                                <input type="number" name="nim" value="" placeholder="Masukan NIM" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Nama</label>
                                <input type="text" name="nama" value="" placeholder="Masukan Nama" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Alamat</label>
                                <input type="text" name="alamat" value="" placeholder="Masukan Alamat"
                                    class="form-control">
                            </div>
                            <div class="form-group">
                                <label>No.Telp</label>
                                <input type="number" name="no_tlp" value="" placeholder="contoh: 085473238594"
                                    class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Angkatan</label>
                                <input type="text" name="angkatan" required value="" placeholder="Masukan Angkatan Anda"
                                    class="form-control">
                            </div>
                            {{-- <div class="form-group">
                                <label>Program Studi</label>
                                <input type="text" name="prodi" value="" placeholder="Masukan Program Studi"
                                    class="form-control">
                            </div> --}}

                            <div class="form-group">
                                <label>Foto Profil</label>
                                <input type="file" required name="foto" class="form-control">
                            </div>
                            <div class="card-footer text-right">
                                <button class="btn btn-primary mr-1" type="submit">Tambah</button>
                                <button class="btn btn-secondary" type="reset">Reset</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    @endif
    @endforeach
@endsection
@push('plugin-script')

    <script src="{{ asset('assets/bundles/datatables/datatables.min.js') }}"></script>
    <script src="{{ asset('assets/bundles/datatables/DataTables-1.10.16/js/dataTables.bootstrap4.min.js') }}"></script>
    <script src="{{ asset('assets/bundles/jquery-ui/jquery-ui.min.js') }}"></script>
    <!-- Page Specific JS File -->
    <script src="{{ asset('assets/js/page/datatables.js') }}"></script>
@endpush
