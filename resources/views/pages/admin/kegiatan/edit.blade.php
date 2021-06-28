@extends('layouts.master')
@section('title')
Edit Kegiatan
@endsection
@section('content')
<section class="section">
    <div class="section-body">
        <div class="row mt-sm-4 justify-content-center">
            <div class="col-12 col-md-12 col-lg-6">
                <div class="card author-box">
                    <div class="card-body">
                        <div class="author-box-center">
                            <img alt="image" src="{{asset('assets/img/users/user-1.png')}}"
                                class="rounded-circle author-box-picture">
                            <div class="clearfix"></div>
                            <div class="author-box-name">
                                <a href="#">SHINTA MAHARANI</a>
                            </div>
                            <div class="author-box-job">
                                <a href="#"><b>
                                    Sertifikat</b></a>
                            </div>

                        </div>
                        <div class="text-center">
                            <div class="author-box-description">
                                <div class="py-1">
                                    <p class="clearfix">
                                        <span class="float-left">
                                            NIM
                                        </span>
                                        <span class="float-right text-muted">
                                            361855401128
                                        </span>
                                    </p>
                                    <p class="clearfix">
                                        <span class="float-left">
                                            Email
                                        </span>
                                        <span class="float-right text-muted">
                                            shinta@example.com
                                        </span>
                                    </p>
                                    <p class="clearfix">
                                        <span class="float-left">
                                            Alamat
                                        </span>
                                        <span class="float-right text-muted">
                                            Plampangrejo, Cluring
                                        </span>
                                    </p>
                                    <p class="clearfix">
                                        <span class="float-left">
                                            No.telp
                                        </span>
                                        <span class="float-right text-muted">
                                            (0123)123456789
                                        </span>
                                    </p>
                                    <p class="clearfix">
                                        <span class="float-left">
                                            Angkatan
                                        </span>
                                        <span class="float-right text-muted">
                                            2018
                                        </span>
                                    </p>
                                    <p class="clearfix">
                                        <span class="float-left">
                                            Devisi
                                        </span>
                                        <span class="float-right text-muted">
                                            Tari Modern
                                        </span>
                                    </p>
                                </div>
                            </div>
                            <div class="w-100 d-sm-none"></div>
                        </div>
                    </div>
                </div>
            
            </div>
        </div>
    </div>
</section>
@endsection
