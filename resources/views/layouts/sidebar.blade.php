<aside id="sidebar-wrapper">
    <div class="sidebar-brand">
      <a href="index.html"> <img alt="image" src="{{asset('assets/img/logo-poliwangi.png')}}" class="header-logo" /> <span
          class="logo-name">E-UKM</span>
      </a>
    </div>
    <ul class="sidebar-menu">
    @if(Auth::user()->role == 'admin')
      <li class="menu-header">UKM Recruitment</li>
      <li class="dropdown  {{ request()->routeIs('dashboard') ? 'active' : '' }}">
        <a href="{{route('dashboard')}}" class="nav-link"><i data-feather="monitor"></i><span>Dashboard</span></a>
      </li>
      <li class="dropdown {{ request()->routeIs('ukm-poliwangi.index') ? 'active' : '' }}">
        <a href="{{route('ukm-poliwangi.index')}}" class="nav-link"><i data-feather="archive"></i><span>UKM Poliwangi</span></a>
      </li>
      <li class="dropdown {{ request()->routeIs('pendaftaran.index') ? 'active' : '' }}">
        <a href="{{route('pendaftaran.index')}}" class="nav-link"><i data-feather="user-plus"></i><span>Pendaftaran</span></a>
      </li>
      <li class="dropdown {{ request()->routeIs('kegiatan.index') ? 'active' : '' }}">
        <a href="{{route('kegiatan.index')}}" class="nav-link"><i data-feather="trending-up"></i><span>Kegiatan</span></a>
      </li>
      @endif
      
      @if(Auth::user()->role == 'mahasiswa')
      <li class="menu-header">UKM Recruitment</li>
      <li class="dropdown  {{ request()->routeIs('dashboard') ? 'active' : '' }}">
        <a href="{{route('dashboard')}}" class="nav-link"><i data-feather="monitor"></i><span>Dashboard</span></a>
      </li>
      <li class="dropdown {{ request()->routeIs('ukmpoliwangi.index') ? 'active' : '' }}">
        <a href="{{route('ukmpoliwangi.index')}}" class="nav-link"><i data-feather="archive"></i><span>UKM Poliwangi</span></a>
      </li>
      <li class="dropdown {{ request()->routeIs('recruitment.index') ? 'active' : '' }}">
        <a href="{{route('recruitment.index')}}" class="nav-link"><i data-feather="check-square"></i><span>Pendaftaran</span></a>
      </li>
      <li class="dropdown {{ request()->routeIs('event.index') ? 'active' : '' }}">
        <a href="{{route('event.index')}}" class="nav-link"><i data-feather="gift"></i><span>Kegiatan</span></a>
      </li>
      @endif

      {{-- <li class="dropdown">
        <a href="#" class="menu-toggle nav-link has-dropdown"><i
            data-feather="briefcase"></i><span>Widgets</span></a>
        <ul class="dropdown-menu">
          <li><a class="nav-link" href="widget-chart.html">Chart Widgets</a></li>
          <li><a class="nav-link" href="widget-data.html">Data Widgets</a></li>
        </ul>
      </li>
      <li class="dropdown">
        <a href="#" class="menu-toggle nav-link has-dropdown"><i data-feather="command"></i><span>Apps</span></a>
        <ul class="dropdown-menu">
          <li><a class="nav-link" href="chat.html">Chat</a></li>
          <li><a class="nav-link" href="portfolio.html">Portfolio</a></li>
          <li><a class="nav-link" href="blog.html">Blog</a></li>
          <li><a class="nav-link" href="calendar.html">Calendar</a></li>
        </ul>
      </li> --}}

    </ul>
  </aside>