<div class="sidebar">
    <div>
        <!-- Sidebar user panel (optional) -->
        <div class="user-panel mt-3 pb-3 mb-3 d-flex">
            <div class="image">
                <img src="{{asset('images/avatar.png')}}"
                     class="img-circle elevation-2" alt="User Image">
            </div>
            <div class="info">
                <a href="#" class="d-block">{{auth()->user()->name}}</a>
            </div>
        </div>

        <!-- Sidebar Menu -->
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                <!-- Add icons to the links using the .nav-icon class
                     with font-awesome or any other icon font library -->


                <li class="nav-item has-treeview  @if(request()->route()->getName()=='members.index') menu-open @endif">
                    <a href="#" class="nav-link ">
                        <i class="nav-icon fa fa-users"></i>
                        <p>
                            الأعضاء
                            <i class="right fa fa-angle-left"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="{{route('members.index')}}" class="nav-link  @if(request()->route()->getName()=='members.index') bg-success @endif">
                                <i class="fa fa-circle-o nav-icon"></i>
                                <p>الأعضاء</p>
                            </a>
                        </li>
                    </ul>
                </li>



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
