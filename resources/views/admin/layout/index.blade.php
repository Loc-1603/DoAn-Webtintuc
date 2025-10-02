<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Khóa Học Lập Trình Laravel Framework 5.x Tại Khoa Phạm">
    <meta name="author" content="">
    <title>Admin - Tin Tức - Châu Minh Thiện</title>
    <base href="{{asset('')}}" />
    <!-- Bootstrap 4.6.x CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">

    <!-- MetisMenu CSS -->
    <link href="admin_asset/bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="admin_asset/dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="admin_asset/bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- DataTables CSS (BS4) -->
    <link rel="stylesheet" href="https://cdn.datatables.net/v/bs4/dt-1.13.8/datatables.min.css"/>

    <style>
    /* Offset body under fixed header */
    body { padding-top: 56px; }
    /* Layout */
    #wrapper { display: flex; align-items: stretch; }
    .sidebar { width: 260px; height: calc(100vh - 56px); position: sticky; top: 56px; overflow-y: auto; background: #f8f8f8; border-right: 1px solid #e7e7e7; }
    .sidebar .sidebar-nav { padding: 0.75rem; margin: 0; }
    .sidebar .nav { list-style: none; padding-left: 0; margin: 0; white-space: normal; }
    .sidebar .nav > li { display: block; float: none !important; }
    .sidebar .nav > li > a { display: block; padding: 10px 15px; color: #337ab7; white-space: normal; }
    .sidebar .nav > li > a:hover { text-decoration: none; background: #eee; }
    .sidebar .nav > li + li > a { border-top: 1px solid #eee; }
    .nav-second-level { padding-left: 10px; }
    /* Ghi đè CSS của SB Admin 2 để bỏ khoảng trống dư bên trái */
    #page-wrapper { flex: 1; padding: 20px; min-width: 0; margin: 0 !important; }
    .navbar-default.sidebar { background: transparent; border: 0; }
    .sidebar .navbar-collapse { padding: 0; }
    .sidebar .sidebar-search, .sidebar .nav > li { margin: 0; }
    /* Bảng rộng nhiều cột: cho phép cuộn ngang trong khung, tránh nới rộng toàn trang */
    .table-responsive { overflow-x: auto; }
    /* Đảm bảo dropdown user hiển thị đúng */
    .navbar .dropdown-menu { z-index: 1050; }
    .navbar .nav-item.dropdown .dropdown-toggle::after { margin-left: 0.5em; }
    </style>

    <!-- DataTables Responsive CSS -->
    <link href="admin_asset/bower_components/datatables-responsive/css/dataTables.responsive.css" rel="stylesheet">
</head>

<body>

    @include('admin.layout.header')

    <div id="wrapper">
        <!-- Sidebar -->
        <div class="sidebar">
            <div class="sidebar-nav">
                @include('admin.layout.menu')
            </div>
        </div>

        <!-- Page Content -->
        <div id="page-wrapper">
            @yield('content')
        </div>
        <!-- /#page-wrapper -->
    </div>
    <!-- /#wrapper -->

    <!-- jQuery 3.x (BS4) -->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <!-- Bootstrap 4.6.x Bundle (gồm Popper) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="admin_asset/bower_components/metisMenu/dist/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="admin_asset/dist/js/sb-admin-2.js"></script>

    <!-- DataTables JavaScript (BS4) -->
    <script src="https://cdn.datatables.net/v/bs4/dt-1.13.8/datatables.min.js"></script>

    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
    <script>
    $(document).ready(function() {
        $('#dataTables-example').DataTable({
                responsive: true
        });
    });
    </script>
    @yield('script')
</body>

</html>
