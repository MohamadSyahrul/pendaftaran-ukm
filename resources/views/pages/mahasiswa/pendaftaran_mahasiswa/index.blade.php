@extends('layouts.master')
@section('title')
Profil {{ Auth::user()->name }}
@endsection
    @push('plugin-style')
    <link rel="stylesheet" href="{{asset('assets/bundles/datatables/datatables.min.css')}}">
    <link rel="stylesheet" href="{{asset('assets/bundles/datatables/DataTables-1.10.16/css/dataTables.bootstrap4.min.css')}}">
    @endpush
@section('content')
@include('layouts.message-flash')

 @foreach($data as $item)
    <div class="section-body">
        <div class="row d-flex justify-content-center">
            <div class="col-12 col-sm-12 col-lg-8">
                <div class="card author-box card-primary">
                 
                    <div class="card-body">
                        <div class="author-box-left">
                          @if($item != null)
                            <img alt="image" src="{{asset('img/'.$item->foto)}}"
                                class="rounded-circle author-box-picture">

                            <div class="clearfix"></div>
                            <a href="{{ route('recruitment.create')}}"
                                class="btn btn-primary mt-3">Sertifikat</a>
                                        
                        </div>

                        <div class="author-box-details">
                          <div class="author-box-name">
                            <!-- <a href="#">{{ Auth::user()->name }}</a> -->
                          </div>
                          <div class="author-box-job">{{ Auth::user()->role }}</div>
                          <div class="author-box-description">
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
                                @if($item == null)
                                <td> - </td>
                                @else
                                <td><a href="#" disabled
                                class="btn btn-primary mt-1 rounded">{{ $item->status }}</a></td>
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
  
        @endif 
         @endforeach
@endsection
@push('plugin-script')

<script src="{{asset('assets/bundles/datatables/datatables.min.js')}}"></script>
<script src="{{asset('assets/bundles/datatables/DataTables-1.10.16/js/dataTables.bootstrap4.min.js')}}"></script>
<script src="{{asset('assets/bundles/jquery-ui/jquery-ui.min.js')}}"></script>
<!-- Page Specific JS File -->
<script src="{{asset('assets/js/page/datatables.js')}}"></script>
@endpush
