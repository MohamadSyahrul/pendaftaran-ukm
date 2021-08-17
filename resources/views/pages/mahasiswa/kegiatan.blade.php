@extends('layouts.master')
@section('title')
Kegiatan
@endsection
@section('content')
<section class="section">
    <div class="section-body">
        <div class="row justify-content-center">
            <div class="col-12 col-md-6 col-lg-10">
                @foreach ($item as $row)
                <div class="card card-primary">
                    <div class="card-header">
                        <h4>{{$row->judul}}</h4>
                        <div class="card-header-action">
                            <a href="{{route('event.show', $row->id)}}" class="btn btn-primary">
                                View
                            </a>
                            

                        </div>
                    </div>
                    <div class="card-body">
                        <p>{{$row->keterangan}}</p>
                    </div>
                    <div class="card-footer">
                        @if($row->pendaftaran_event->ukm_id == $row->ukm->id && $row->pendaftaran_event->event_id == $row->id)
                       <a href="#">
                            <button type="submit"
                               class="btn btn-primary btn-outline-primary mb-2 rounded">
                                <i class="fas fa-add">
                                   Telah Mendaftar
                                </i>
                            </button>
                      </a>
                        @else
                         <form method="POST" action="{{ route('event.store')}}"
                            >
                            @csrf
                            @method('POST')
                            <input type="hidden" value="{{$row->ukm->id}}" class="form-control" name="ukm_id">
                            <input type="hidden" value="{{$row->id}}" class="form-control" name="event_id">
                            <button type="submit"
                               class="btn btn-primary btn-outline-primary mb-2 rounded">
                                <i class="fas fa-add">
                                    Daftar
                                </i>
                            </button>
                        </form>
                        @endif
                    </div>

                </div>
                @endforeach
            </div>
        </div>
    </div>
</section>
@endsection
