@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-cenete">
            <div class="col-md-10">
                <div class="card">
                    <div class="card-header">
                        إضافة مستخدم جديد
                    </div>
                    <div class="card-body">
                        <form action="{{route('users.store')}}" method="post">
                            @csrf
                            <div class="form-group">
                                <label for="">الاسم</label>
                                <input type="text" name="name" class="form-control @error('name') is-invalid @enderror">
                                @error('name')
                                <span class="small text-danger">{{$message}}</span>
                                @enderror
                            </div>

                            <div class="form-group">
                                <label for="">اسم المستخدم</label>
                                <input type="text" name="username" class="form-control @error('username') is-invalid @enderror">
                                @error('username')
                                <span class="small text-danger">{{$message}}</span>
                                @enderror
                            </div>

                            <div class="form-group">
                                <label for="">رقم الهاتف</label>
                                <input type="text" name="phone" class="form-control @error('phone') is-invalid @enderror">
                                @error('phone')
                                <span class="small text-danger">{{$message}}</span>
                                @enderror
                            </div>

                            <div class="form-group">
                                <label for="">كلمة المرور</label>
                                <input type="password" name="password" class="form-control @error('password') is-invalid @enderror">
                                @error('password')
                                <span class="small text-danger">{{$message}}</span>
                                @enderror
                            </div>

                            <button class="btn btn-sm btn-outline-success" type="submit">حفظ</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>


@stop