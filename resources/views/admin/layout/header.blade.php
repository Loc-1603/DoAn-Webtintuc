<!-- Navigation (Bootstrap 4 fixed-top) -->
<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top" role="navigation" style="margin-bottom: 0">
    <a class="navbar-brand" href="admin/theloai/danhsach">Admin Tin Tức - UEH</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#adminNavbar" aria-controls="adminNavbar" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="adminNavbar">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <i class="fa fa-user fa-fw"></i> 
                    @if(isset($user_ad))
                        {{$user_ad->name}}
                    @elseif(Auth::check())
                        {{Auth::user()->name}}
                    @else
                        Admin
                    @endif
                    <i class="fa fa-caret-down"></i>
                </a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
                    <h6 class="dropdown-header">Tài khoản</h6>
                    @if(isset($user_ad))
                        <a class="dropdown-item" href="admin/user/sua/{{$user_ad->id}}">
                            <i class="fa fa-user fa-fw"></i> Thông tin cá nhân
                        </a>
                    @elseif(Auth::check())
                        <a class="dropdown-item" href="admin/user/sua/{{Auth::user()->id}}">
                            <i class="fa fa-user fa-fw"></i> Thông tin cá nhân
                        </a>
                    @endif
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="admin/logout">
                        <i class="fa fa-sign-out fa-fw"></i> Đăng xuất
                    </a>
                </div>
            </li>
        </ul>
    </div>
</nav>