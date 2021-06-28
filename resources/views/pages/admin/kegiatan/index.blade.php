@extends('layouts.master')
@section('title')
Kegiatan
@endsection
@section('content')
<section class="section">
    <div class="section-body">
        <div class="row justify-content-center">
            <div class="col-12 col-md-6 col-lg-10">
                <div class="card card-primary">
                    <div class="card-header">
                        <h4>UKM IMAM</h4>
                        <div class="card-header-action">
                            <a href="{{route('kegiatan.create')}}" class="btn btn-primary">
                                View All
                            </a>
                            <div class="dropdown">
                                <a href="#" data-toggle="dropdown" class="btn btn-warning dropdown-toggle">Options</a>
                                <div class="dropdown-menu">
                                    <a href="#" class="dropdown-item has-icon"><i class="far fa-edit"></i> Edit</a>
                                    <a href="#" class="dropdown-item has-icon text-danger"><i
                                            class="far fa-trash-alt"></i>
                                        Delete</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <p>UKM Imam Melaksanakan Webinar Serentak</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection
