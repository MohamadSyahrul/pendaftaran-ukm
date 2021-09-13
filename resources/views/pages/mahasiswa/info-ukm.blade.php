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

            @foreach ($ukm as $item)
            <div class="col-10 col-md-10 col-lg-10">
                <div class="card">
                    <div class="card-header">
                        
                      
                    </div>
                    <div class="card-body">

                        <table width="100%">
                            <tr>   
                                <td width="30%">
                                    <img src="{{asset('img/'. $item->logo)}}" alt="logo" height="130px">
                                    &emsp;&emsp;&emsp;&emsp;&emsp;
                                </td>
                                <td width="70%">
                                    <h2>{{$item->ukm}}</h2>
                                    <p>
                                        {!! \Illuminate\Support\Str::limit($item->keterangan, 50, $end='...') !!}
                                    </p>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div align="right" class="pr-3">
                     
                                           <a href="{{route('info-ukm.show',$item->id)}}"  class="btn btn-primary mt-3">
                                                <i class="far fa-eye">
                                                            Lihat UKM
                                                </i> 
                                            </a>
                                   
                    </div>
                    <div class="card-footer">
                     
                    </div>
                </div>
        </div>
                @endforeach
        
    </div>
</section>
@endsection
