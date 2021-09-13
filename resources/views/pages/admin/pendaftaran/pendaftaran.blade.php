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
    <div class="section-body">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                      
                    </div>
                    <div class="card-body">
                        <p class="p-0 m-0 text-center">Pendaftar : {{ $data_count }}</p>


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
                                        <th>Status</th>
                                        <!-- <th>Status Keterangan</th> -->
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
                                          <!--   @if ($item->status == 'Diterima')
                                                <td><button type="submit" class="btn btn-outline-primary mb-2"> <a
                                                            href="{{ route('pendaftaran.show', $item->id) }}"> AKHIRI
                                                            JABATAN </a> </button></td>
                                            @elseif($item->status == 'EX Anggota')
                                                <td> Demisioner </td>
                                            @else
                                                <td> {{ $item->status }} </td>
                                            @endif -->
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
