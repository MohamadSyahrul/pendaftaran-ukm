<!DOCTYPE html>
<html lang="en">
<head>
  <title>@yield('title')</title>
  @include('layouts.style')
  
  @stack('plugin-style')
</head>

<body style="text-transform: uppercase;">
  <div class="loader"></div>
  <div id="app">
    <div class="main-wrapper main-wrapper-1">
      <div class="navbar-bg"></div>
      <nav class="navbar navbar-expand-lg main-navbar sticky">
        @include('layouts.navbar')
      </nav>

      <div class="main-sidebar sidebar-style-2">
        @include('layouts.sidebar')
      </div>
      <!-- Main Content -->
      <div class="main-content">
        
        @yield('content')
      </div>

      {{-- <footer class="main-footer">
        <div class="footer-left">
          <a href="#"><b>Pendaftaran UKM POLIWANGI</b></a>
        </div>
        <div class="footer-right">
        </div>
      </footer> --}}
    </div>
  </div>
@include('layouts.script')

@stack('plugin-script')
</body>
</html>