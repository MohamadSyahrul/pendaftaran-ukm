@extends('layouts.master')
@section('title')
Pendaftaran
@endsection

    @push('plugin-style')
    <link rel="stylesheet" href="{{asset('assets/bundles/datatables/datatables.min.css')}}">
    <link rel="stylesheet" href="{{asset('assets/bundles/datatables/DataTables-1.10.16/css/dataTables.bootstrap4.min.css')}}">
    @endpush

@section('content')
<section class="section">
    <div class="section-body">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h4>Manajemen User UKM</h4>
                          <!-- <button type="button" class="btn btn-outline-primary mb-2" data-toggle="modal"
                data-target="#TambahData">Tambah
                Data</button> -->
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-striped" id="table-1">
                                <thead>
                                    <tr class="text-center">
                                        <th>
                                            <th>
                                                #
                                            </th>
                                            
                                        </th>
                                        <th>Nama UKM</th>
                                        <th>Foto UKM</th>
                                        <th>Email UKM</th>
                                        <th>Password UKM</th>
                                        <th>Action</th>
                       
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach($item as $key=> $item)
                                    
                                    <tr class="text-center">
                                        <td>
                                            <td>{{$key+1}}</td>
                                        </td>
                                        <td>{{$item->role}}</td>
                                        @if($item->desk_ukm  != null)
                                        <td>
                                            <img src="{{asset('img/'. $item->desk_ukm->logo)}}" alt="logo" height="70px">
                                        </td>
                                        @else
                                        <td></td>
                                        @endif
                                        <td>{{ $item->email }}</td>
                                        <td> ******** </td>
                                          <td class="flex" style="margin-top: 1em;">
                                        <button
                                           class="btn btn-outline-primary mb-2">
                                            <a href="{{ route('management-user.edit',$item->id) }}">
                                                <i class="fas fa-edit">
                                                    Edit
                                                </i>
                                            </a>
                                        </button>

                                        <form method="POST" action="{{ route('management-user.destroy', $item->id)}}"
                                            onclick="deleteData('{{$item->id}}', this)">
                                            @csrf
                                            @method('DELETE')
                                            <button type="submit"
                                               class="btn btn-outline-primary mb-2">
                                                <i class="fas fa-trash">
                                                    Delete
                                                </i>
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
</section>

<script type="text/javascript">
        function editData(id) {
            console.log(id);
        }

        function deleteData(id, event) {
            Swal.fire({
                title: 'Apakah yakin menghapus data ini ?',
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Ya, Hapus aja!'
            }).then((result) => {
                if (result.value) {
                    event.submit();

                }
            })
        }
        $(function () {
            $("#date").datepicker({
                dateFormat: 'yy'
            });
        });​

</script>
<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
@endsection

@push('plugin-script')

<script src="{{asset('assets/bundles/datatables/datatables.min.js')}}"></script>
<script src="{{asset('assets/bundles/datatables/DataTables-1.10.16/js/dataTables.bootstrap4.min.js')}}"></script>
<script src="{{asset('assets/bundles/jquery-ui/jquery-ui.min.js')}}"></script>
<!-- Page Specific JS File -->
<script src="{{asset('assets/js/page/datatables.js')}}"></script>
@endpush