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
                </div>
                @endforeach
            </div>
        </div>
    </div>
</section>
@endsection
