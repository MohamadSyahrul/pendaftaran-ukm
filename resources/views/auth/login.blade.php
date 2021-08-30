@extends('auth.master')
@section('title')
    Login
@endsection
@section('content')

<section class="row flexbox-container">
    <div class="col-xl-8 col-11 d-flex justify-content-center">
        <div class="card bg-authentication rounded-0 mb-0">
            <div class="row m-0">
                <div class="col-lg-6 d-lg-block d-none text-center align-self-center px-1 py-0">
                    <img src="{{asset('vuexy/app-assets/images/pages/custom.jpg')}}" alt="branding logo">
                </div>
                <div class="col-lg-6 col-12 p-0">
                    <div class="card rounded-0 mb-0 px-2">
                        <div class="card-header pb-1">
                            <div class="card-title">
                                <h4 class="mb-0">Login</h4>
                            </div>
                        </div>
                        <p class="px-2">Selamat datang, Silakan Login ke akun Anda.</p>
                        <div class="card-content">
                            <div class="card-body pt-1">
                                <form method="POST" action="{{ route('login') }}">
                                    @csrf
                                    <fieldset class="form-label-group form-group position-relative has-icon-left">
                                        <input type="text" class="form-control" id="user-name" name="username" placeholder="Email" required>
                                        
                                        <label for="user-name">Email</label>
                                    </fieldset>

                                    <fieldset class="form-label-group position-relative has-icon-left">
                                        <input type="password" class="form-control" id="user-password" name="password" placeholder="Password" required>
                                        
                                        <label for="user-password">Password</label>
                                    </fieldset>
                             <!--        <div class="form-group d-flex justify-content-between align-items-center">
                                        <div class="text-left">
                                            <fieldset class="checkbox">
                                                <div class="vs-checkbox-con vs-checkbox-primary">
                                                    <input type="checkbox">
                                                    <span class="vs-checkbox">
                                                        <span class="vs-checkbox--check">
                                                            <i class="vs-icon feather icon-check"></i>
                                                        </span>
                                                    </span>
                                                    <span class="">Ingatkan Saya</span>
                                                </div>
                                            </fieldset>
                                        </div>
                                    </div> -->
                                   
                                    <button type="submit" class="btn btn-primary float-right btn-inline">Login</button>
                                </form>
                            </div>
                        </div>
                        <div class="login-footer">
                            <div class="divider">
                            </div>
                            <div class="footer-btn d-inline">
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
<!-- >>>>>>> 8f24cac677cdae5e26da0ec0cbabf8b577ebe238 -->
        </div>
    </div>
</section>
@endsection