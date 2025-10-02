<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <a class="navbar-brand" href="./"> Web - Tin Tức</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="gioi-thieu.html">Giới thiệu</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="lien-he.html">Liên hệ</a>
                    </li>
                </ul>

                <form action="tim-kiem.html" method="post" class="form-inline my-2 my-lg-0 mr-3" role="search">
                    <input type="text" name="seach" class="form-control mr-sm-2" placeholder="Search" aria-label="Search">
                    @csrf
                    <button type="submit" class="btn btn-outline-light my-2 my-sm-0">Tìm</button>
                </form>

                <ul class="navbar-nav ml-auto">
                    @if(!isset($nguoidung))
                        <li class="nav-item">
                            <a class="nav-link" href="dang-ky.html">Đăng ký</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="dang-nhap.html">Đăng nhập</a>
                        </li>
                        @elseif(isset($nguoidung))
                        <li class="nav-item">
                            <a class="nav-link" href="thong-tin-ca-nhan.html">
                                <i class="fa fa-user"></i>
                                {{$nguoidung->name}}
                            </a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="dangxuat.html">Đăng xuất</a>
                        </li>
                    @endif
                </ul>
            </div>

            
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>