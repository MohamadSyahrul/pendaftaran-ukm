@extends('layouts.master')
@section('title')
UKM POLIWANGI
@endsection
@push('plugin-style')
<link rel="stylesheet" href="{{asset('assets/bundles/summernote/summernote-bs4.css')}}">
<link rel="stylesheet" href="{{asset('assets/bundles/codemirror/lib/codemirror.css')}}">
<link rel="stylesheet" href="{{asset('assets/bundles/codemirror/theme/duotone-dark.css')}}">
<link rel="stylesheet" href="{{asset('assets/bundles/jquery-selectric/selectric.css')}}">
@endpush
@section('content')
<section class="section">
    <div class="section-body">
        <div class="row">

            @foreach ($ukm as $item)
            <div class="col-12 col-md-12 col-lg-12">
                <div class="card">
                    <div class="card-header">
                        <img src="{{asset('img/'. $item->logo)}}" alt="logo" height="70px">
                        &emsp;&emsp;&emsp;&emsp;&emsp;
                        <h4>{{$item->ukm}}</h4>
                    </div>
                    <div class="card-body">
                        <img class="rounded" src="{{asset('img/'. $item->foto)}}" alt="logo" height="90px">
                        &emsp;
                        <img class="rounded" src="{{asset('img/'. $item->foto1)}}" alt="logo" height="90px">
                        <br>
                        <p>
                            {!!$item->keterangan!!}
                        </p>
                    </div>
                    <div class="card-footer">
                        <div align="left" class="pr-3">
                                          <form method="POST" action="{{ route('recruitment.store')}}"
                                            >
                                            @csrf
                                            @method('POST')
                                            <input type="hidden" value="{{$item->id}}" class="form-control" name="ukm_id">
                                            <button type="submit"
                                               class="btn btn-primary btn-outline-primary mb-2 rounded">
                                                <i class="fas fa-add">
                                                    Daftar
                                                </i>
                                            </button>
                                        </form>
                                   
                    </div>
                     
                    </div>
                </div>
                @endforeach
        </div>
    </div>
</section>
@endsection
