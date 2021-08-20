@extends('layouts.app')


@section('content')
    <div class="container">
        <div class="row justify-content-cenete">
            <div class="col-md-10">
                <div class="card">
                    <div class="card-header">
                        تعديل جهاز
                    </div>
                    <div class="card-body">
                        <form action="{{route('devices.update',$device)}}" method="post">
                            @csrf
@method('patch')
                            <div class="form-group">
                                <label for="">مالك الجهاز</label>
                                <select  name="user_id" class="form-control @error('user_id') is-invalid @enderror">
                                    @foreach($users as $user)
                                        <option {{$device->user_id==$user->id?'selected':''}} value="{{$user->id}}">{{$user->name}} - {{$user->username}}</option>
                                    @endforeach
                                </select>
                                @error('user_id')
                                <span class="small text-danger">{{$message}}</span>
                                @enderror
                            </div>


                            <div class="form-group">
                                <label for="">اسم الجهاز</label>
                                <input type="text" name="name" value="{{$device->name}}" class="form-control @error('name') is-invalid @enderror">
                                @error('name')
                                <span class="small text-danger">{{$message}}</span>
                                @enderror
                            </div>

                            <div class="form-group">
                                <label for="">رقم الجهاز</label>
                                <input type="text" name="uid" value="{{$device->uid}}" class="form-control @error('uid') is-invalid @enderror">
                                @error('uid')
                                <span class="small text-danger">{{$message}}</span>
                                @enderror
                            </div>

                            <div class="form-group">
                                <label for="">تاريخ نهاية الإشتراك</label>
                                <input type="date" value="{{$device->end_date->format('Y-m-d')}}" name="end_date" class="form-control @error('end_date') is-invalid @enderror">
                                @error('end_date')
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





