<div class="sidebar">
    <div>
        <!-- Sidebar user panel (optional) -->
        <div class="user-panel mt-3 pb-3 mb-3 d-flex">
            <div class="image">
                <img src="{{asset('images/avatar.png')}}"
                     class="img-circle elevation-2" alt="User Image">
            </div>
            <div class="info">
                <a href="#" class="d-block">دوتش ماركت</a>
            </div>
        </div>

        <!-- Sidebar Menu -->
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                <!-- Add icons to the links using the .nav-icon class
                     with font-awesome or any other icon font library -->
                @can('الإعدادات')
                    <li class="nav-item has-treeview @if(\Illuminate\Support\Str::contains(request()->route()->getName(),'setting') ||request()->route()->getName()=='notification.create') menu-open @endif">
                        <a href="#" class="nav-link">
                            <i class="nav-icon fa fa-cog"></i>
                            <p>
                                الإعدادات
                                <i class="right fa fa-angle-left"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            @can('تعديل الإعدادات')
                                <li class="nav-item">
                                    <a href="{{route('setting.index')}}" class="nav-link @if(request()->route()->getName()=='setting.index') bg-success @endif">
                                        <i class="fa fa-circle-o nav-icon"></i>
                                        <p>الإعدادات</p>
                                    </a>
                                </li>
                            @endcan
                                <li class="nav-item">
                                    <a href="{{route('setting.news')}}" class="nav-link @if(request()->route()->getName()=='setting.news') bg-success @endif">
                                        <i class="fa fa-circle-o nav-icon"></i>
                                        <p>الشريط الإخباري</p>
                                    </a>
                                </li>

                                <li class="nav-item">
                                    <a href="{{route('notification.create')}}" class="nav-link @if(request()->route()->getName()=='notification.create') bg-success @endif">
                                        <i class="fa fa-circle-o nav-icon"></i>
                                        <p>الإشعارات</p>
                                    </a>
                                </li>
                        </ul>
                    </li>
                @endcan

                @can('المستخدمين')
                    <li class="nav-item has-treeview  @if(request()->route()->getName()=='users.index'||request()->route()->getName()=='balance.index') menu-open @endif">
                        <a href="#" class="nav-link ">
                            <i class="nav-icon fa fa-cog"></i>
                            <p>
                                المستخدمين
                                <i class="right fa fa-angle-left"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="{{route('users.index',['type'=>'users'])}}" class="nav-link  @if(request()->route()->getName()=='users.index'&& request('type')=='users') bg-success @endif">
                                    <i class="fa fa-circle-o nav-icon"></i>
                                    <p>المستخدمين</p>
                                </a>
                            </li>

                            <li class="nav-item">
                                <a href="{{route('users.index',['type'=>'stuff'])}}" class="nav-link @if(request()->route()->getName()=='users.index'&& request('type')=='stuff') bg-success @endif">
                                    <i class="fa fa-circle-o nav-icon"></i>
                                    <p>الموظفين</p>
                                </a>
                            </li>

                            @can('حسابات محذوفة')
                                <li class="nav-item">
                                    <a href="{{route('users.index',['type'=>'stuff'])}}" class="nav-link @if(request()->route()->getName()=='users.index'&& request('type')=='stuff') bg-success @endif">
                                        <i class="fa fa-circle-o nav-icon"></i>
                                        <p>حسابات محذوفة</p>
                                    </a>
                                </li>
                                @endcan
                        {{--    @can('الأدوار')
                                <li class="nav-item">
                                    <a href="{{route('roles.index')}}" class="nav-link">
                                        <i class="fa fa-circle-o nav-icon"></i>
                                        <p>صلاحيات المستخدمين</p>
                                    </a>
                                </li>
                            @endcan --}}

                            @can('الأرصدة')
                                <li class="nav-item">
                                    <a href="{{route('balance.index')}}" class="nav-link @if(request()->route()->getName()=='balance.index') bg-success @endif">
                                        <i class="fa fa-circle-o nav-icon"></i>
                                        <p>أرصدة المستخدمين</p>
                                    </a>
                                </li>
                            @endcan
                        </ul>
                    </li>
                @endcan

                @can('المدن')
                    <li class="nav-item has-treeview @if(\Illuminate\Support\Str::contains(request()->route()->getName(),'country')) menu-open @endif">
                        <a href="#" class="nav-link">
                            <i class="nav-icon fa fa-cog"></i>
                            <p>
                                المدن
                                <i class="right fa fa-angle-left"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">

                                <li class="nav-item">
                                    <a href="{{route('country.index')}}" class="nav-link @if(request()->route()->getName()=='country.index') bg-success @endif">
                                        <i class="fa fa-circle-o nav-icon"></i>
                                        <p>المدن</p>
                                    </a>
                                </li>
                            @can('مدن محذوفة')
                                <li class="nav-item">
                                    <a href="{{route('country.deleted')}}" class="nav-link @if(request()->route()->getName()=='country.deleted') bg-success @endif">
                                        <i class="fa fa-circle-o nav-icon"></i>
                                        <p>المدن المحذوفة</p>
                                    </a>
                                </li>
                            @endcan

                        </ul>
                    </li>
                @endcan

                @can('الأقسام')
                    <li class="nav-item has-treeview  @if(request()->route()->getName()=='category.index') menu-open @endif">
                        <a href="#" class="nav-link">
                            <i class="nav-icon fa fa-cog"></i>
                            <p>
                                الأقسام
                                <i class="right fa fa-angle-left"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="{{route('category.index')}}" class="nav-link  @if(request()->route()->getName()=='category.index') bg-success @endif">
                                    <i class="fa fa-circle-o nav-icon"></i>
                                    <p>الأقسام</p>
                                </a>
                            </li>
                            @can('أقسام محذوفة')
                                <li class="nav-item">
                                    <a href="{{route('users.index',['type'=>'stuff'])}}" class="nav-link @if(request()->route()->getName()=='users.index'&& request('type')=='stuff') bg-success @endif">
                                        <i class="fa fa-circle-o nav-icon"></i>
                                        <p>حسابات محذوفة</p>
                                    </a>
                                </li>
                            @endcan

{{--                           <li class="nav-item">
                                <a href="{{route('section.index')}}" class="nav-link">
                                    <i class="fa fa-circle-o nav-icon"></i>
                                    <p>الأقسام الفرعية</p>
                                </a>
                            </li>--}}

                        </ul>
                    </li>
                @endcan

                @can('المنتجات')
                    <li class="nav-item has-treeview  @if(request()->route()->getName()=='product.index') menu-open @endif">
                        <a href="#" class="nav-link">
                            <i class="nav-icon fa fa-cog"></i>
                            <p>
                                المنتجات
                                <i class="right fa fa-angle-left"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="{{route('product.index')}}" class="nav-link  @if(request()->route()->getName()=='product.index') bg-success @endif">
                                    <i class="fa fa-circle-o nav-icon"></i>
                                    <p>المنتجات</p>
                                </a>
                            </li>
                            @can('منتجات محذوفة')
                                <li class="nav-item">
                                    <a href="{{route('product.deleted')}}" class="nav-link @if(request()->route()->getName()=='users.index'&& request('type')=='stuff') bg-success @endif">
                                        <i class="fa fa-circle-o nav-icon"></i>
                                        <p>منتجات محذوفة</p>
                                    </a>
                                </li>
                            @endcan
                        </ul>
                    </li>
                @endcan

                @can('الإعلانات')
                    <li class="nav-item has-treeview  @if(request()->route()->getName()=='slider.index') menu-open @endif">
                        <a href="#" class="nav-link">
                            <i class="nav-icon fa fa-cog"></i>
                            <p>
                                الإعلانات
                                <i class="right fa fa-angle-left"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="{{route('slider.index')}}" class="nav-link  @if(request()->route()->getName()=='slider.index') bg-success @endif">
                                    <i class="fa fa-circle-o nav-icon"></i>
                                    <p>الإعلانات</p>
                                </a>
                            </li>

                        </ul>
                    </li>
                @endcan

                @can('الطلبات')
                    <li class="nav-item has-treeview @if(request()->route()->getName()=='bill.index') menu-open @endif">
                        <a href="#" class="nav-link">
                            <i class="nav-icon fa fa-cog"></i>
                            <p>
                                الطلبات
                                <i class="right fa fa-angle-left"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="{{route('bill.index',['status'=>'pending'])}}" class="nav-link  @if(request()->route()->getName()=='bill.index' && request('status')=='pending') bg-success @endif">
                                    <i class="fa fa-circle-o nav-icon"></i>
                                    <p>طلبات جديدة</p>
                                </a>
                            </li>

                            <li class="nav-item">
                                <a href="{{route('bill.index',['status'=>'ready'])}}" class="nav-link @if(request()->route()->getName()=='bill.index' && request('status')=='ready') bg-success @endif">
                                    <i class="fa fa-circle-o nav-icon"></i>
                                    <p>طلبات قيد التحضير</p>
                                </a>
                            </li>

                            <li class="nav-item">
                                <a href="{{route('bill.index',['status'=>'onway'])}}" class="nav-link @if(request()->route()->getName()=='bill.index' && request('status')=='onway') bg-success @endif">
                                    <i class="fa fa-circle-o nav-icon"></i>
                                    <p>طلبات في الطريق</p>
                                </a>
                            </li>

                            <li class="nav-item">
                                <a href="{{route('bill.index',['status'=>'compleate'])}}" class="nav-link @if(request()->route()->getName()=='bill.index' && request('status')=='compleate') bg-success @endif">
                                    <i class="fa fa-circle-o nav-icon"></i>
                                    <p>طلبات تم تسليمها</p>
                                </a>
                            </li>

                            <li class="nav-item">
                                <a href="{{route('bill.index',['status'=>'delete'])}}" class="nav-link @if(request()->route()->getName()=='bill.index' && request('status')=='delete') bg-success @endif">
                                    <i class="fa fa-circle-o nav-icon"></i>
                                    <p>طلبات تم إلغاؤها</p>
                                </a>
                            </li>

                        </ul>
                    </li>
                @endcan

                <li class="nav-item">
                    <a class="nav-link" href="{{ route('logout') }}"
                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                        <i class="fa fa-sign-out"></i>
                        <p>خروج </p>
                    </a>

                    <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                        @csrf
                    </form>
                </li>

            </ul>
        </nav>
        <!-- /.sidebar-menu -->
    </div>
</div>
