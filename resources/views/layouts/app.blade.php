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
    <meta name="sound" content="{{asset('assets/sounds/').'/'}}">
    <meta name="userId" content="{{auth()->id()}}">
    <meta name="countryId" content="{{auth()->user()->country_id}}">
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
            <!--            <li class="nav-item d-none d-sm-inline-block">
                            <a href="index3.html" class="nav-link">خانه</a>
                        </li>
                        <li class="nav-item d-none d-sm-inline-block">
                            <a href="#" class="nav-link">تماس</a>
                        </li>-->
        </ul>

        <!-- SEARCH FORM -->
        <!--        <form class="form-inline ml-3">
                    <div class="input-group input-group-sm">
                        <input class="form-control form-control-navbar" type="search" placeholder="جستجو" aria-label="Search">
                        <div class="input-group-append">
                            <button class="btn btn-navbar" type="submit">
                                <i class="fa fa-search"></i>
                            </button>
                        </div>
                    </div>
                </form>-->

        <!-- Right navbar links -->
        <ul class="navbar-nav mr-auto">
            <!-- Messages Dropdown Menu -->
<!--            <li class="nav-item dropdown">
                <a class="nav-link" data-toggle="dropdown" href="#">
                    <i class="fa fa-comments-o"></i>
                    <span class="badge badge-danger navbar-badge">3</span>
                </a>
                <div class="dropdown-menu dropdown-menu-lg dropdown-menu-left">
                    <a href="#" class="dropdown-item">
                        &lt;!&ndash; Message Start &ndash;&gt;
                        <div class="media">
                            <img src="{{asset('images/avatar.png')}}" alt="User Avatar"
                                 class="img-size-50 ml-3 img-circle">
                            <div class="media-body">
                                <h3 class="dropdown-item-title">
                                    {{auth()->user()->username}}
                                    <span class="float-left text-sm text-danger"><i class="fa fa-star"></i></span>
                                </h3>
                                <p class="text-sm">با من تماس بگیر لطفا...</p>
                                <p class="text-sm text-muted"><i class="fa fa-clock-o mr-1"></i> 4 ساعت قبل</p>
                            </div>
                        </div>
                        &lt;!&ndash; Message End &ndash;&gt;
                    </a>
                    <div class="dropdown-divider"></div>
                    <a href="#" class="dropdown-item">
                        &lt;!&ndash; Message Start &ndash;&gt;
                        <div class="media">
                            <img src="{{asset('images/avatar.png')}}" alt="User Avatar"
                                 class="img-size-50 img-circle ml-3">
                            <div class="media-body">
                                <h3 class="dropdown-item-title">
                                    پیمان احمدی
                                    <span class="float-left text-sm text-muted"><i class="fa fa-star"></i></span>
                                </h3>
                                <p class="text-sm">من پیامتو دریافت کردم</p>
                                <p class="text-sm text-muted"><i class="fa fa-clock-o mr-1"></i> 4 ساعت قبل</p>
                            </div>
                        </div>
                        &lt;!&ndash; Message End &ndash;&gt;
                    </a>
                    <div class="dropdown-divider"></div>
                    <a href="#" class="dropdown-item">
                        &lt;!&ndash; Message Start &ndash;&gt;
                        <div class="media">
                            <img src="{{asset('images/avatar.png')}}" alt="User Avatar"
                                 class="img-size-50 img-circle ml-3">
                            <div class="media-body">
                                <h3 class="dropdown-item-title">
                                    سارا وکیلی
                                    <span class="float-left text-sm text-warning"><i class="fa fa-star"></i></span>
                                </h3>
                                <p class="text-sm">پروژه اتون عالی بود مرسی واقعا</p>
                                <p class="text-sm text-muted"><i class="fa fa-clock-o mr-1"></i>4 ساعت قبل</p>
                            </div>
                        </div>
                        &lt;!&ndash; Message End &ndash;&gt;
                    </a>
                    <div class="dropdown-divider"></div>
                    <a href="#" class="dropdown-item dropdown-footer">مشاهده همه پیام‌ها</a>
                </div>
            </li>-->
            <!-- Notifications Dropdown Menu -->
            <notify-count-component></notify-count-component>
            <!--            <li class="nav-item">
                            <a class="nav-link" data-widget="control-sidebar" data-slide="false" href="#"><i
                                    class="fa fa-th-large"></i></a>
                        </li>-->
        </ul>
    </nav>
    <!-- /.navbar -->

    <!-- Main Sidebar Container -->
    <aside class="main-sidebar sidebar-dark-primary elevation-4">
        <!-- Brand Logo -->
        <a href="index3.html" class="brand-link">
            <img src="{{asset('storage/')}}" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
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
<script type="text/javascript">
    @auth
        window.Permissions = {!! json_encode(Auth::user()->allPermissions, true) !!};
    @else
        window.Permissions = [];
    @endauth
</script>
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
