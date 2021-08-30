@extends('layouts.master')
@section('title')
Pendaftaran
@endsection

    @push('plugin-style')
    <link rel="stylesheet" href="{{asset('assets/bundles/datatables/datatables.min.css')}}">
    <link rel="stylesheet" href="{{asset('assets/bundles/datatables/DataTables-1.10.16/css/dataTables.bootstrap4.min.css')}}">
    @endpush

@section('content')
    <div class="section-body">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
<!--                         <h4>Pendaftar     : {{  $data_count }}</h4>
                        <h4>Anggota Yang Telah Diterima     : {{  $data_count_accepted }}</h4> -->
                        <!-- <a href="#" class="btn btn-primary">Cetak</a> -->
                    </div>
                    <div class="card-body">
                        <p class="p-0 m-0 text-center">Pendaftar     : {{  $data_count }}</p>
                        <p class="p-0 m-0 text-center">Anggota Yang Telah Diterima     : {{  $data_count_accepted }}</p>

                        <div class="table-responsive">
                            <table class="table table-striped" id="table-1">
                                <thead>
                                    <tr>
                                        <th class="text-center">
                                            #
                                        </th>
                                        <th>NIM</th>
                                        <th>Nama</th>
                                        <th>Foto</th>
                                        <th>Jurusan</th>
                                        <th>UKM</th>
                                        <th>Status</th>
                                        <!-- <th>Action</th> -->
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach($data as $index => $item)
                                    <tr>
                                        <td>
                                            {{$index+1}}
                                        </td>
                                        <td> {{$item->nim}} </td>
                                        <td>
                                            {{$item->nama}}
                                        </td>
                                        <td>
                                            <img alt="image" src="{{asset('img/'.$item->foto)}}"
                                            class="rounded-circle author-box-picture" width="35px">
                                        </td>
                                        <td>{{$item->prodi}}</td>
                                        <td>{{ $item->ukm->ukm }}</td>
                                        @if($item->status != "Diterima")
                                       <td><button type="submit" class="btn btn-outline-primary mb-2"> <a href="{{route('pendaftaran.show',$item->id)}}" > TERIMA </a> </button></td>
                                        <td>
                                         @else
                                         <td><button type="submit" class="btn btn-outline-primary mb-2">
                                             <i data-feather="check"></i>
                                         </button></td>
                                        <td>
                                         @endif
                                    
                                  <!--   <form action="{{ route('pendaftaran.destroy',$item->id) }}" method="post"
                                        class="d-inline" onsubmit="return confirm('Yakin hapus data ?')">
                                        @method('delete')
                                        @csrf
                                        <button type="submit" class="dropdown-item has-icon text-danger">
                                            <i class="fa fa-trash"></i>
                                            Delete
                                        </button>
                                    </form> -->
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
@endsection
@push('plugin-script')
<script src="{{asset('assets/bundles/datatables/datatables.min.js')}}"></script>
<script src="{{asset('assets/bundles/datatables/DataTables-1.10.16/js/dataTables.bootstrap4.min.js')}}"></script>
<script src="{{asset('assets/bundles/jquery-ui/jquery-ui.min.js')}}"></script>
<!-- Page Specific JS File -->
<script src="{{asset('assets/js/page/datatables.js')}}"></script>
@endpush