<!DOCTYPE html>
<html lang="en">


<!-- auth-login.html  21 Nov 2019 03:49:32 GMT -->
<head>
  <title>@yield('title')</title>
@include('layouts.auth.head')
</head>

<body>
  <div class="loader"></div>
  <div id="app">
    <section class="section">
        @yield('content')
    </section>
  </div>
  @include('layouts.auth.script')
</body>
</html>