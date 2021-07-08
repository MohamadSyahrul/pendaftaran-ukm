@extends('layouts.master')
@section('title')
ERROR - 404
@endsection
@section('content')
<section class="section">
    <div class="container mt-5">
        <div class="page-error">
            <div class="page-inner">
                <h1>404</h1>
                <div class="page-description">
                    Oops. This page has gone missing !!
                </div>
                <div class="page-search">
                    <div class="mt-3">
                        <a href="{{route('login')}}">Back to Home</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection
