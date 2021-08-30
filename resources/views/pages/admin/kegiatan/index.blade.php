@extends('layouts.master')
@section('title')
Kegiatan
@endsection
@section('content')
<section class="section">
    <div class="section-body">
        <a href="{{route('kegiatan.create')}}" class="btn btn-primary">
        Add Event
        </a>
        <div class="row justify-content-center">
            <div class="col-12 col-md-6 col-lg-10">
                @foreach ($item as $row)
                <div class="card card-primary">
                    <div class="card-header">
                        <h4>{{$row->judul}}</h4>
                        <div class="card-header-action">
                            <a href="{{route('kegiatan.show', $row->id)}}" class="btn btn-primary">
                                View
                            </a>
                            <div class="dropdown">
                                <a href="#" data-toggle="dropdown" class="btn btn-warning dropdown-toggle">Options</a>
                                <div class="dropdown-menu">
                                    <a href="{{route('kegiatan.edit',$row->id)}}" class="dropdown-item has-icon"><i class="far fa-edit"></i> Edit</a>
                                    <a href="{{ route('list_mahasiswa_join_event.show',$row->id) }}" class="dropdown-item has-icon"><i class="fas fa-sign-in-alt"></i>Registrant</a>
                                    <form action="{{ route('kegiatan.destroy',$row->id) }}" method="post" class="d-inline" onsubmit="return confirm('Yakin hapus data ?')">
                                        @method('delete')
                                        @csrf
                                        <button type="submit" class="dropdown-item has-icon text-danger">
                                          <i class="fas fa-trash"></i>
                                          Delete
                                      </button>
                                  </form>

                              </div>
                          </div>
                      </div>
                  </div>
                  <div class="card-body">
                    <p>{{$row->keterangan}}</p>

                </div>
            </div>
            @endforeach
        </div>
    </div>
</div>
</section>

@endsection
