@extends('auth.auth')
@section('page-title')
    تسجيل الدخول
@stop
@section('content')

    <div class="login-box">
        <div class="login-logo">
            <b>تسجيل الدخول</b>
        </div>
        <!-- /.login-logo -->
        <div class="card">
            <div class="card-body login-card-body">
                <p class="login-box-msg">إملأ النموذج للدخول</p>

                <form action="{{ route('login') }}" method="post">
                    @csrf
                    <div class="input-group mb-3">
                        <input type="email" name="email" class="form-control  @error('email') is-invalid @enderror" placeholder=" البريد الإلكتروني">
                        <div class="input-group-append">
                            <span class="fa fa-envelope input-group-text"></span>
                        </div>
                        @error('email')
                        <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                        @enderror
                    </div>
                    <div class="input-group mb-3">
                        <input type="password" name="password" class="form-control @error('email') is-invalid @enderror" placeholder="كلمة المرور">
                        <div class="input-group-append">
                            <span class="fa fa-lock input-group-text"></span>
                        </div>
                        @error('password')
                        <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                        @enderror
                    </div>
                    <div class="row">
                        <div class="col-8">
                            <div class="checkbox icheck text-right">
                                <label>
                                    <input type="checkbox" name="remember"> تذكرني
                                </label>
                            </div>
                        </div>
                        <!-- /.col -->
                        <div class="col-4">
                            <button type="submit" class="btn btn-primary btn-block btn-flat">دخول</button>
                        </div>
                        <!-- /.col -->
                    </div>
                </form>

                <!--                <div class="social-auth-links text-center mb-3">
                                    <p>- أو -</p>
                                    <a href="#" class="btn btn-block btn-primary"> <i class="fa fa-facebook mr-2"></i>
                                        سجل عن طريق FaceBook
                                    </a>
                                    <a href="#" class="btn btn-block btn-danger"><i class="fa fa-google-plus mr-2"></i>
                                          سجل عن طريق Google
                                    </a>
                                </div>-->
                <!-- /.social-auth-links -->

<!--                <p class="mb-1 text-right">
                    <a href="{{ route('password.request') }}">نسيت كلمة المرور ؟</a>
                </p>
                <p class="mb-0 text-right">
                    <a href="" class="text-center">ليس لدي حساب</a>
                </p>-->
            </div>
            <!-- /.login-card-body -->
        </div>
    </div>

@endsection
