@extends('layouts.master')
@section('title')
    Dashboard
@endsection
@section('content')
 
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta name="description" content="Vuexy admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template with unlimited possibilities.">
    <meta name="keywords" content="admin template, Vuexy admin template, dashboard template, flat admin template, responsive admin template, web app">
    <meta name="author" content="PIXINVENT">
    <title>Dashboard ecommerce - Vuexy - Bootstrap HTML admin template</title>
    <link rel="apple-touch-icon" href="../app-assets/images/ico/apple-icon-120.png">
    <link rel="shortcut icon" type="image/x-icon" href="../app-assets/images/ico/favicon.ico">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;1,400;1,500;1,600" rel="stylesheet">

    <!-- BEGIN: Vendor CSS-->
    <link rel="stylesheet" type="text/css" href="../app-assets/vendors/css/vendors.min.css">
    <link rel="stylesheet" type="text/css" href="../app-assets/vendors/css/charts/apexcharts.css">
    <link rel="stylesheet" type="text/css" href="../app-assets/vendors/css/extensions/toastr.min.css">
    <!-- END: Vendor CSS-->

    <!-- BEGIN: Theme CSS-->
    <link rel="stylesheet" type="text/css" href="../app-assets/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="../app-assets/css/bootstrap-extended.css">
    <link rel="stylesheet" type="text/css" href="../app-assets/css/colors.css">
    <link rel="stylesheet" type="text/css" href="../app-assets/css/components.css">
    <link rel="stylesheet" type="text/css" href="../app-assets/css/themes/dark-layout.css">
    <link rel="stylesheet" type="text/css" href="../app-assets/css/themes/bordered-layout.css">
    <link rel="stylesheet" type="text/css" href="../app-assets/css/themes/semi-dark-layout.css">

    <!-- BEGIN: Page CSS-->
    <link rel="stylesheet" type="text/css" href="../app-assets/css/core/menu/menu-types/vertical-menu.css">
    <link rel="stylesheet" type="text/css" href="../app-assets/css/pages/dashboard-ecommerce.css">
    <link rel="stylesheet" type="text/css" href="../app-assets/css/plugins/charts/chart-apex.css">
    <link rel="stylesheet" type="text/css" href="../app-assets/css/plugins/extensions/ext-component-toastr.css">
    <!-- END: Page CSS-->

    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="../assets/css/style.css">
    <!-- END: Custom CSS-->

</head>
    <section class="section">
        <div class="section-body">
            <!-- <<<<<<< HEAD -->
      
      
            <div class="row">
                <div class="col-12 col-md-6 col-lg-12">
                    <div class="card">
                            @if (Auth::user()->role == 'mahasiswa')

                        <div class="card-header">
                            
                             
                                 <h4>Welcome To UKM Recruitment</h4>
                                <a href="{{ route('info-ukm.index') }}" class="btn btn-primary">Info UKM</a>
                               <div></div>
                               <div></div>
                               <div></div>
                               <div></div>
                               <div></div>
                               <div></div>
                               <div></div>
                               <div></div>
                               <div></div>
                               <div></div>
                               <div></div>
                               <div></div>
                               <div></div>
                               <div></div>
                               
                            
                        </div>
                        <div class="card-body">
                           
                            <img class="img-responsive thumbnail" src="{{ asset('/img/16291763087.png') }}" alt=""
                                height="100%" width="100%">
                        </div>
                        @else
                          </div>
                </div>
            </div>

                      <div class="row match-height">
                        <!-- Medal Card -->
                        <div class="col-xl-4 col-md-6 col-12">
                            <div class="card card-congratulation-medal">
                                <div class="card-body">
                                   <div class="media">
                                                <div class="avatar bg-light-primary mr-2">
                                                    <div class="avatar-content">
                                                        <i data-feather="user-plus" class="avatar-icon"></i>
                                                    </div>
                                                </div>
                                                <div class="media-body my-auto">
                                                    <h4 class="font-weight-bolder mb-0">{{$data_count}}</h4>
                                                    <p class="card-text font-small-3 mb-0">Jumlah Pendaftar</p>
                                                </div>
                                            </div>
                                    <!-- <button type="button" class="btn btn-primary">View Sales</button> -->
                                    <!-- <img src="/../app-assets/images/illustration/badge.svg" class="congratulation-medal" alt="Medal Pic" /> -->
                                </div>
                            </div>
                        </div>
                           <div class="col-xl-4 col-md-6 col-12">
                            <div class="card card-congratulation-medal">
                                <div class="card-body">
                                   <div class="media">
                                                <div class="avatar bg-light-danger mr-2">
                                                    <div class="avatar-content">
                                                        <i data-feather="user" class="avatar-icon"></i>
                                                    </div>
                                                </div>
                                                <div class="media-body my-auto">
                                                   <h4 class="font-weight-bolder mb-0">{{$data_count_accepted}}</h4>
                                                    <p class="card-text font-small-3 mb-0">Jumlah Anggota</p>
                                                </div>
                                            </div>
                                    <!-- <button type="button" class="btn btn-primary">View Sales</button> -->
                                    <!-- <img src="/../app-assets/images/illustration/badge.svg" class="congratulation-medal" alt="Medal Pic" /> -->
                                </div>
                            </div>
                        </div>
                           <div class="col-xl-4 col-md-6 col-12">
                            <div class="card card-congratulation-medal">
                                <div class="card-body">
                                  <div class="media">
                                                <div class="avatar bg-light-success mr-2">
                                                    <div class="avatar-content">
                                                        <i data-feather="user-check" class="avatar-icon"></i>
                                                    </div>
                                                </div>
                                                <div class="media-body my-auto">
                                                     <h4 class="font-weight-bolder mb-0">{{$data_count_demis}}</h4>
                                                    <p class="card-text font-small-3 mb-0">Jumlah Demis</p>
                                                </div>
                                            </div>
                                    <!-- <button type="button" class="btn btn-primary">View Sales</button> -->
                                    <!-- <img src="/../app-assets/images/illustration/badge.svg" class="congratulation-medal" alt="Medal Pic" /> -->
                                </div>
                            </div>
                        </div>

                        <!--/ Medal Card -->
       <div class="row justify-content-center">
            <div class="col-12 col-md-6 col-lg-10">
@include('layouts.message-flash')

                @foreach ($event as $row)
                <div class="card card-primary">
                    <div class="card-header">
                        <h4>{{$row->judul}}</h4>
                        <div class="card-header-action">
                            <!-- <a href="{{route('event.show', $row->id)}}" class="btn btn-primary">
                          <i class="fas fa-angle-double-right"></i>
                            </a>
                              -->

                        </div>
                    </div>
                    <div class="card-body">
                        <p>{{$row->keterangan}}</p>
                    </div>
                </div>
            </div>
        </div>
                @endforeach
                    </div>

                       @endif
                  
        </div>
    </section>
@endsection
