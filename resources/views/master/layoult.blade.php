<html lang="eng">
<head>
    {{--@include('partials.analytics')--}}

    @include('partials.head')

    @include('partials.css')

    @yield('css')
</head>
<body>

{{--@include('partials.nav')--}}

<div>
    @yield('content')
</div>

@include('partials.notice')

@include('partials.footer')

@include('partials.scripts')

@yield('scripts')
</body>
</html>