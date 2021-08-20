@extends('auth.auth')
@section('page-title')
    إنشاء حساب جديد
@stop
@section('content')
    <div class="register-box">
        <div class="register-logo">
            <b>سجل في الموقع</b>
        </div>

        <div class="card">
            <div class="card-body register-card-body">
                <p class="login-box-msg">مستخدم جديد</p>

                <form action="{{route('register')}}" method="post">
                    @csrf
                    <div class="input-group mb-3">
                        <input type="text" name="name" value="{{old('name')}}" class="form-control @error('name') is-invalid @enderror" placeholder="الاسم">
                        <div class="input-group-append">
                            <span class="fa fa-user input-group-text"></span>
                        </div>
                        @error('name')
                        <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                        @enderror
                    </div>
                    <div class="input-group mb-3">
                        <input type="text" name="username"  value="{{old('username')}}" class="form-control @error('username') is-invalid @enderror" placeholder="اسم المستخدم">
                        <div class="input-group-append">
                            <span class="fa fa-user-circle-o input-group-text"></span>
                        </div>
                        @error('username')
                        <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                        @enderror
                    </div>

                    <div class="input-group mb-3">
                        <input type="text" name="phone"  value="{{old('phone')}}" class="form-control @error('phone') is-invalid @enderror" placeholder="رقم الهاتف">
                        <div class="input-group-append">
                            <span class="fa fa-phone input-group-text"></span>
                        </div>
                        @error('phone')
                        <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                        @enderror
                    </div>
                    <div class="input-group mb-3">
                        <input type="password" name="password" class="form-control @error('password') is-invalid @enderror" placeholder="كلمة المرور">
                        <div class="input-group-append">
                            <span class="fa fa-lock input-group-text"></span>
                        </div>
                        @error('password')
                        <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                        @enderror
                    </div>
                    <div class="input-group mb-3">
                        <input type="password" name="password_confirmation" class="form-control" placeholder="تأكيد كلمة المرور">
                        <div class="input-group-append">
                            <span class="fa fa-lock input-group-text"></span>
                        </div>
                    </div>
                    <div class="row">

                        <!-- /.col -->
                        <div class="col-4">
                            <button type="submit" class="btn btn-primary btn-block btn-flat">تسجيل</button>
                        </div>
                        <!-- /.col -->
                    </div>
                </form>



                <a href="{{route('login')}}" class="text-center">لدي حساب في الموقع</a>
            </div>
            <!-- /.form-box -->
        </div><!-- /.card -->
    </div>

@endsection
