@extends('layouts.master')
@section('title')
    Anggota
@endsection

@push('plugin-style')
    <link rel="stylesheet" href="{{ asset('assets/bundles/datatables/datatables.min.css') }}">
    <link rel="stylesheet"
        href="{{ asset('assets/bundles/datatables/DataTables-1.10.16/css/dataTables.bootstrap4.min.css') }}">
@endpush

@section('content')
    @include('layouts.message-flash')

    <div class="section-body">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                      
                    </div>
                    <div class="card-body">
                        <p class="p-0 m-0 text-center">Anggota : {{ $data_count_accepted }}</p>
                        <p class="p-0 m-0 text-center">Demisioner : {{ $data_count_demis }}</p>

                        <div class="table-responsive">
                            <table class="table table-striped" id="table-1">
                                <thead class="text-center">
                                    <tr>
                                        <th>
                                            #
                                        </th>
                                        <th>NIM</th>
                                        <th>Nama</th>
                                        <th>Foto</th>
                                        <th>Jurusan</th>
                                        <th>UKM</th>
                                        <th>Jabatan</th>
                                        <th>Status Keanggotaan</th>
                                        <th>Status Keterangan</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody class="text-center">
                                    @foreach ($data as $index => $item)
                                        <tr>
                                            <td>
                                                {{ $index + 1 }}
                                            </td>
                                            <td> {{ $item->nim }} </td>
                                            <td>
                                                {{ $item->nama }}
                                            </td>
                                            <td>
                                                <img alt="image" src="{{ asset('img/' . $item->foto) }}"
                                                    class="rounded-circle author-box-picture" width="35px">
                                            </td>
                                            <td>{{ $item->prodi }}</td>
                                            <td>{{ $item->ukm->ukm }}</td>
                                             @if ($item->devisi == null)
                                                <td><button type="submit" class="btn btn-outline-primary mb-2" data-toggle="modal"
                                                data-target="#TambahData{{$item->id_user}}">  TAMBAH JABATAN                                                   
                                            </button></td>
                                            @else
                                                <td class="text-center">
                                                 {{ $item->devisi }}
                                                </td>
                                            @endif
                                            @if ($item->status == 'Belum Diterima')
                                                <td><button type="submit" class="btn btn-outline-primary mb-2"> <a
                                                            href="{{ route('pendaftaran.show', $item->id) }}"> TERIMA
                                                        </a>
                                                    </button></td>
                                            @elseif($item->status == "Diterima")
                                                <td class="text-center">
                                                    <i data-feather="user"></i>
                                                </td>
                                            @else
                                                <td class="text-center">
                                                    <i data-feather="user-check"></i>
                                                </td>
                                            @endif
                                            @if ($item->status == 'Diterima')
                                                <td><button type="submit" class="btn btn-outline-primary mb-2"> <a
                                                            href="{{ route('pendaftaran.show', $item->id) }}"> AKHIRI
                                                            JABATAN </a> </button></td>
                                            @elseif($item->status == 'EX Anggota')
                                                <td> Demisioner </td>
                                            @else
                                                <td> {{ $item->status }} </td>
                                            @endif
                                            <td>
                                                <form action="{{ route('pendaftaran.destroy', $item->id) }}"
                                                    method="post" class="d-inline"
                                                    onsubmit="return confirm('Yakin hapus data ?')">
                                                    @method('delete')
                                                    @csrf
                                                    <button type="submit" class="dropdown-item has-icon text-danger">
                                                        <i class="fa fa-trash"></i>
                                                        Delete
                                                    </button>
                                                </form>
                                            </td>
                                        </tr>
                                    <div class="modal fade" id="TambahData{{$item->id_user}}" tabindex="-1" role="dialog" aria-labelledby="formModal" aria-hidden="true">
                                            <div class="modal-dialog" role="document">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title" id="formModal">Tambah Jabatan</h5>
                                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                <span aria-hidden="true">&times;</span>
                                                            </button>
                                                        </div>
                                                        <div class="modal-body">
                                                            <form class="" action="{{route('keanggotaan.update',$item->id_user)}}" method="POST" enctype="multipart/form-data">
                                                                @csrf
                                                                @method('put')
                                                                <div class="form-group">
                                                                    <label>Jabatan</label>
                                                                    <div class="input-group">
                                                                        <div class="input-group-prepend">
                                                                            <div class="input-group-text">
                                                                                <i class="fas fa-align-center"></i>
                                                                            </div>
                                                                        </div>
                                                                        <input type="text" class="form-control" name="nama_devisi">
                                                                    </div>
                                                                </div>
                                                                <button type="submit" class="btn btn-primary m-t-15 waves-effect">Submit</button>
                                                            </form>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>

@endsection
@push('plugin-script')
    <script src="{{ asset('assets/bundles/datatables/datatables.min.js') }}"></script>
    <script src="{{ asset('assets/bundles/datatables/DataTables-1.10.16/js/dataTables.bootstrap4.min.js') }}"></script>
    <script src="{{ asset('assets/bundles/jquery-ui/jquery-ui.min.js') }}"></script>
    <!-- Page Specific JS File -->
    <script src="{{ asset('assets/js/page/datatables.js') }}"></script>
@endpush
