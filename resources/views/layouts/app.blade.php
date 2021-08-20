<!DOCTYPE html>
<html dir="rtl">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>@yield('page-title')</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="site_url" content="{{url('/dashboard/')}}">
    <meta name="asset" content="{{asset('storage').'/'}}">


    <!-- Theme style -->
    <link rel="stylesheet" href="{{asset('css/app.css')}}">
    <!-- Google Font: Source Sans Pro -->
    <style>
        * {
            text-align: right;
        }
    </style>
    @yield('css')

</head>


<body class="hold-transition sidebar-mini">
<!-- Site wrapper -->
<div class="wrapper" id="app">
    <!-- Navbar -->
    <nav class="main-header navbar navbar-expand bg-white navbar-light border-bottom">
        <!-- Left navbar links -->
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" data-widget="pushmenu" href="#"><i class="fa fa-bars"></i></a>
            </li>

        </ul>

        <!-- SEARCH FORM -->


        <!-- Right navbar links -->
        <ul class="navbar-nav mr-auto">

        </ul>
    </nav>
    <!-- /.navbar -->

    <!-- Main Sidebar Container -->
    <aside class="main-sidebar sidebar-dark-primary elevation-4">
        <!-- Brand Logo -->
        <a href="{{route('members.index')}}" class="brand-link">
            <img src="{{asset('images/avatar.png')}}" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
                 style="opacity: .8">
            <span class="brand-text font-weight-light">لوحة التحكم</span>
        </a>

        <!-- Sidebar -->
  @include('layouts.menu')
    <!-- /.sidebar -->
    </aside>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">

                    <div class="col-sm-12">
                        <ol class="breadcrumb ">
                            <li class="breadcrumb-item"><a href="{{url('/')}}">الرئيسية</a></li>
                            @yield('bread')
                        </ol>
                    </div>
                </div>
            </div><!-- /.container-fluid -->
        </section>

        <!-- Main content -->
        <section class="content">

            <!-- Default box -->
        @yield('content')
        <!-- /.card -->

        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->

    <footer class="main-footer">
        <strong>CopyRight &copy; {{date('Y')}} <a href="{{url('/')}}">مهند الشامي</a>.</strong>
    </footer>

    <!-- Control Sidebar -->
    <aside class="control-sidebar control-sidebar-dark">
        <!-- Control sidebar content goes here -->
    </aside>
    <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="{{asset('js/app.js')}}"></script>
<!-- Bootstrap 4 -->
@yield('js')
@if(session('success'))
    <script>
        Toast.fire({
            icon: 'success',
            title: '{{session('success')}}'
        })
    </script>
@endif




</body>
</html>
