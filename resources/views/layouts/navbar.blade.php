<div class="form-inline mr-auto">
    <ul class="navbar-nav mr-3">
        <li><a href="#" data-toggle="sidebar" class="nav-link nav-link-lg
                              collapse-btn"> <i data-feather="align-justify"></i></a></li>
        <li><a href="#" class="nav-link nav-link-lg fullscreen-btn">
                <i data-feather="maximize"></i>
            </a></li>

    </ul>
</div>
<ul class="navbar-nav navbar-right">
    {{-- <li class="dropdown dropdown-list-toggle mr-3">
      <a href="#" class="btn btn-primary">Info UKM</a>
    </li> --}}

    <li class="dropdown dropdown-list-toggle"><a href="#" data-toggle="dropdown"
            class="nav-link notification-toggle nav-link-lg"><i data-feather="bell" class="bell"></i>
        </a>
        <div class="dropdown-menu dropdown-list dropdown-menu-right pullDown">
            <div class="dropdown-header">
                Notifications
                <div class="float-right">
                    <a href="#">Mark All As Read</a>
                </div>
            </div>
            <div class="dropdown-list-content dropdown-list-icons">
                <a href="#" class="dropdown-item dropdown-item-unread"> <span
                        class="dropdown-item-icon bg-primary text-white"> <i class="fas
                                          fa-code"></i>
                    </span> <span class="dropdown-item-desc"> Template update is
                        available now! <span class="time">2 Min
                            Ago</span>
                    </span>
                </a> <a href="#" class="dropdown-item"> <span class="dropdown-item-icon bg-info text-white"> <i class="far
                                          fa-user"></i>
                    </span> <span class="dropdown-item-desc"> <b>You</b> and <b>Dedik
                            Sugiharto</b> are now friends <span class="time">10 Hours
                            Ago</span>
                    </span>
                </a> <a href="#" class="dropdown-item"> <span class="dropdown-item-icon bg-success text-white"> <i
                            class="fas
                                          fa-check"></i>
                    </span> <span class="dropdown-item-desc"> <b>Kusnaedi</b> has
                        moved task <b>Fix bug header</b> to <b>Done</b> <span class="time">12
                            Hours
                            Ago</span>
                    </span>
                </a> <a href="#" class="dropdown-item"> <span class="dropdown-item-icon bg-danger text-white"> <i
                            class="fas fa-exclamation-triangle"></i>
                    </span> <span class="dropdown-item-desc"> Low disk space. Let's
                        clean it! <span class="time">17 Hours Ago</span>
                    </span>
                </a> <a href="#" class="dropdown-item"> <span class="dropdown-item-icon bg-info text-white"> <i class="fas
                                          fa-bell"></i>
                    </span> <span class="dropdown-item-desc"> Welcome to Otika
                        template! <span class="time">Yesterday</span>
                    </span>
                </a>
            </div>
            <div class="dropdown-footer text-center">
                <a href="#">View All <i class="fas fa-chevron-right"></i></a>
            </div>
        </div>
    </li>
    <li class="dropdown">
        <a href="#" data-toggle="dropdown" class="nav-link dropdown-toggle nav-link-lg nav-link-user">
            @if(Auth::user()->profileUser  != null && Auth::user()->role == 'mahasiswa')
            <img alt="image" src="{{asset('img/'.Auth()->user()->profileUser->foto)}}" class="user-img-radious-style">
            @elseif(Auth::user()->desk_ukm  != null  && Auth::user()->role != 'mahasiswa' && Auth::user()->role != 'admin')
            <img alt="image" src="{{asset('img/'.Auth()->user()->desk_ukm->logo)}}" class="user-img-radious-style">            @elseif(Auth::user()->role == 'admin')
            <img alt="image" src="{{asset('/img/super_admin/logo_super_admin.jpg')}}" class="user-img-radious-style">
            @else
            <img alt="image" src="{{asset('assets/img/logo-poliwangi.png')}}" class="user-img-radious-style">
            @endif
            <span class="d-sm-none d-lg-inline-block"></span>
        </a>
        <div class="dropdown-menu dropdown-menu-right pullDown">
            <div class="dropdown-title">{{ Auth::user()->username }}</div>
            @if(Auth::user()->role == 'mahasiswa')
           <!--  <a href="{{route('profile.index')}}" class="dropdown-item has-icon"> <i class="far
                    fa-user"></i> Profile
<<<<<<< HEAD
            </a> -->
            <a href="{{route('change_password.index')}}" class="dropdown-item has-icon"> <i class="far
                    fa-user"></i> Change Password
=======
            </a>
            <a href="{{route('change_password.index')}}" class="dropdown-item has-icon"> 
                <i class="fas fa-lock"></i> Change Password
>>>>>>> 8f24cac677cdae5e26da0ec0cbabf8b577ebe238
            </a>
            @endif
            @if(Auth::user()->role == 'admin')
            <a href="{{route('change_password.index')}}" class="dropdown-item has-icon"> <i class="far
                    fa-user"></i> Profile
            </a>
            @endif
            @if(Auth::user()->role != 'mahasiswa' && Auth::user()->role != 'admin')
            <a href="{{route('change_password.index')}}" class="dropdown-item has-icon"> <i class="far
                    fa-user"></i> Profile
            </a>
            @endif
            <div class="dropdown-divider"></div>
            <form method="POST" action="{{ route('logout') }}">
                @csrf
                <button type="submit" class="dropdown-item has-icon text-danger">
                    Logout
                </button>
            </form>
        </div>
    </li>
</ul>
