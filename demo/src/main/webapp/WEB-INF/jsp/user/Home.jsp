<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="../public/assets/images/favicon.png">
    <title>Dashboard</title>
    <!-- Custom CSS -->
    <link href="../public/assets/extra-libs/c3/c3.min.css" rel="stylesheet">
    <link href="../public/assets/libs/chartist/dist/chartist.min.css" rel="stylesheet">
    <link href="../public/assets/extra-libs/jvector/jquery-jvectormap-2.0.2.css" rel="stylesheet" />
    <!-- Custom CSS -->
    <link href="../public/dist/css/style.css" rel="stylesheet">
</head>
<body>
	<!-- ============================================================== -->
    <!-- Preloader - style you can find in spinners.css -->
    <!-- ============================================================== -->
    <div class="preloader">
        <div class="lds-ripple">
            <div class="lds-pos"></div>
            <div class="lds-pos"></div>
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- Main wrapper - style you can find in pages.scss -->
    <!-- ============================================================== -->
    <div id="main-wrapper" data-theme="light" data-layout="vertical" data-navbarbg="skin6" data-sidebartype="full" data-sidebar-position="fixed" data-header-position="fixed" data-boxed-layout="full">
        <!-- ============================================================== -->
        <!-- Topbar header - style you can find in pages.scss -->
        <!-- ============================================================== -->
        <header class="topbar" data-navbarbg="skin6">
            <nav class="navbar top-navbar navbar-expand-md" aria-label="nav">
                <div class="navbar-header" data-logobg="skin6">
                    <!-- This is for the sidebar toggle which is visible on mobile only -->
                    <a class="nav-toggler waves-effect waves-light d-block d-md-none" href="javascript:void(0)"><i class="ti-menu ti-close"></i></a>
                    <!-- ============================================================== -->
                    <!-- Logo -->
                    <!-- ============================================================== -->
                    <div class="navbar-brand">
                        <!-- Logo icon -->
                        <a href="../user/dashboard.html">
                            <!-- Logo text -->
                            <span class="logo-text">
                                <h2 class="page-title text-truncate text-dark font-weight-medium mb-1">Welcome</h2>
                            </span>
                        </a>
                    </div>
                    <!-- ============================================================== -->
                    <!-- End Logo -->
                    <!-- ============================================================== -->
                    <!-- ============================================================== -->
                    <!-- Toggle which is visible on mobile only -->
                    <!-- ============================================================== -->
                    <a class="topbartoggler d-block d-md-none waves-effect waves-light" href="javascript:void(0)" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><i class="ti-more"></i></a>
                </div>
                <!-- ============================================================== -->
                <!-- End Logo -->
                <!-- ============================================================== -->
                <div class="navbar-collapse collapse" id="navbarSupportedContent">
                    <!-- ============================================================== -->
                    <!-- toggle and nav items -->
                    <!-- ============================================================== -->
                    <ul class="navbar-nav float-left mr-auto ml-3 pl-1">
                        <!-- Notification -->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle pl-md-3 position-relative" id="read" href="javascript:void(0)" id="bell" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span><i data-feather="bell" class="svg-icon"></i></span>
                                
                                <span class="badge badge-primary notify-no rounded-circle">
                                    
                                </span>
                                
                            </a>
                            <div class="dropdown-menu dropdown-menu-left mailbox animated bounceInDown">
                                <ul class="list-style-none">
                                    <li>
                                        <div class="message-center notifications position-relative">
                                        
                                            <a href="#" class="message-item d-flex align-items-center border-bottom px-3 py-2">
                                                <div class="btn btn-danger rounded-circle btn-circle"><i data-feather="airplay" class="text-white"></i></div>
                                                <div class="w-75 d-inline-block v-middle pl-2">
                                                    <h6 class="message-title mb-0 mt-1"> <br> </h6>
                                                    <span class="font-12 text-nowrap d-block text-muted"> </span>
                                                    <span class="font-12 text-nowrap d-block text-muted"></span>
                                                </div>
                                            </a>
                                            
                                            <div class="w-100 d-inline-block v-middle pl-2 my-2 mx-1">
                                                <h6 class="message-title mb-0 mt-1 text-dark">No Notifications </h6>
                                            </div>
                                            
                                        </div>
                                    </li>
                                    <li>
                                        <a class="nav-link pt-3 text-center text-dark" href="#">
                                            <strong>Mark All Read</strong>
                                            <i class="fa fa-angle-right"></i>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                    <!-- ============================================================== -->
                    <!-- Right side toggle and nav items -->
                    <!-- ============================================================== -->
                    <ul class="navbar-nav float-right">
                        <!-- ============================================================== -->
                        <!-- Search -->
                        <!-- ============================================================== -->

                        <li class="nav-item d-none d-md-block">
                            <a class="nav-link" href="javascript:void(0)">
                                <form>
                                    <div class="customize-input">
                                        <input class="form-control custom-shadow custom-radius border-0 bg-white" type="search" placeholder="Search" aria-label="Search">
                                        <i class="form-control-icon" data-feather="search"></i>
                                    </div>
                                </form>
                            </a>
                        </li>
                        <!-- ============================================================== -->
                        <!-- User profile and search -->
                        <!-- ============================================================== -->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="javascript:void(0)" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                               
                                <img src="../public/assets/images/users/profile-pic.jpg" alt="user" class="rounded-circle" width="40">
                               
                        
                               
                                <span class="ml-2 d-none d-lg-inline-block"><span>Hello,</span> <span class="text-dark">Shaili</span> <i data-feather="chevron-down" class="svg-icon"></i></span>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right user-dd animated flipInY">
                                <a class="dropdown-item" href="javascript:void(0)"><i data-feather="user" class="svg-icon mr-2 ml-1"></i>
                                    My Profile</a>

                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="javascript:void(0)"><i data-feather="settings" class="svg-icon mr-2 ml-1"></i>
                                    Account Setting</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="javascript:void(0)" data-toggle="modal" data-target="#bs-example-modal-lg"><i data-feather="power" class="svg-icon mr-2 ml-1"></i>
                                    Logout</a>
                            </div>
                        </li>
                        <!-- ============================================================== -->
                        <!-- User profile and search -->
                        <!-- ============================================================== -->
                    </ul>
                </div>
            </nav>
        </header>
        <!-- ============================================================== -->
        <!-- End Topbar header -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <aside class="left-sidebar" data-sidebarbg="skin6">
            <!-- Sidebar scroll-->
            <div class="scroll-sidebar" data-sidebarbg="skin6">
                <!-- Sidebar navigation-->
                <nav class="sidebar-nav">
                    <ul id="sidebarnav">
                        <li class="sidebar-item"> <a class="sidebar-link sidebar-link" href="javascript:void(0)" aria-expanded="false"><i data-feather="home" class="feather-icon"></i><span class="hide-menu">Dashboard</span></a></li>
                        <li class="list-divider"></li>
                        <li class="nav-small-cap"><span class="hide-menu">Manage Complaint</span></li>
                        <li class="sidebar-item">
                            <a class="sidebar-link" href="../user/ComplaintList.html" aria-expanded="false">
                                <i data-feather="tag" class="feather-icon"></i>
                                <span class="hide-menu">Complaints List</span>
                            </a>
                        </li>
                        <li class="sidebar-item">
                            <a class="sidebar-link sidebar-link" href="../user/NewComplaint.html" aria-expanded="false">
                                <i data-feather="file-plus" class="feather-icon"></i>
                                <span class="hide-menu">New Complaint</span>
                            </a>
                        </li>
                        <li class="sidebar-item">
                            <a class="sidebar-link sidebar-link" href="../user/TrackComplaint.html" aria-expanded="false">

                                <i data-feather="trending-up" class="feather-icon"></i>
                                <span class="hide-menu">Track Complaint </span>
                            </a>
                        </li>
                        <li class="list-divider"></li>
                    </ul>
                </nav>
                <!-- End Sidebar navigation -->
            </div>
            <!-- End Sidebar scroll-->
        </aside>
        <!-- ============================================================== -->
        <!-- End Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Page wrapper  -->
        <!-- ============================================================== -->
        <div class="page-wrapper">
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-7 align-self-center">
                        <h3 class="page-title text-truncate text-dark font-weight-medium mb-1"><span id="greet">
                                ,</span></h3>
                        <div class="d-flex align-items-center">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb m-0 p-0">
                                    <li class="breadcrumb-item"><a href="javascript:void(0);">Dashboard</a>
                                    </li>
                                </ol>
                            </nav>
                        </div>
                    </div>

                </div>
            </div>
            <!-- ============================================================== -->
            <!-- End Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid">
                <x-alert type="ErrorMsg" />
                <!-- *************************************************************** -->
                <!-- Start First Cards -->
                <!-- *************************************************************** -->
                <div class="card-group">
                    <div class="card blue">
                        <div class="card-body ">
                            <div class="d-flex d-lg-flex d-md-block align-items-center">
                                <div>
                                    <div class="d-inline-flex align-items-center">
                                        <h2 class="text-orange mb-1 font-weight-medium count"></h2>

                                    </div>
                                    <h6 class="text-white font-weight-medium mb-0 w-100 text-truncate">Total Complaint</h6>
                                </div>
                                <div class="ml-auto mt-md-3 mt-lg-0">
                                    <span class="opacity-7 text-white"><i data-feather="save"></i></span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card green">
                        <div class="card-body">
                            <div class="d-flex d-lg-flex d-md-block align-items-center">
                                <div>
                                    <h2 class="text-green mb-1 w-100 text-truncate font-weight-medium count"></h2>
                                    <h6 class="text-white font-weight-normal mb-0 w-100 text-truncate">Complaints Solved
                                    </h6>
                                </div>
                                <div class="ml-auto mt-md-3 mt-lg-0">
                                    <span class="opacity-7 text-white"><i data-feather="check-circle"></i></span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card pink">
                        <div class="card-body">
                            <div class="d-flex d-lg-flex d-md-block align-items-center">
                                <div>
                                    <div class="d-inline-flex align-items-center">
                                        <h2 class="text-primary mb-1 font-weight-medium count"></h2>

                                
                                    </div>
                                    <h6 class="text-white font-weight-normal mb-0 w-100 text-truncate">Pending Complaints</h6>
                                </div>
                                <div class="ml-auto mt-md-3 mt-lg-0">
                                    <span class="opacity-7 text-white"><i data-feather="info"></i></span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card red">
                        <div class="card-body">
                            <div class="d-flex d-lg-flex d-md-block align-items-center">
                                <div>
                                    <h2 class="text-danger mb-1 font-weight-medium count"></h2>

                                    <h6 class="text-white font-weight-normal mb-0 w-100 text-truncate">Closed Complaints</h6>
                                </div>
                                <div class="ml-auto mt-md-3 mt-lg-0">
                                    <span class="opacity-7 text-white"><i data-feather="x-circle"></i></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- *************************************************************** -->
                <!-- End First Cards -->
                <!-- *************************************************************** -->
                <!-- *************************************************************** -->


                <!-- *************************************************************** -->
                <!-- Start Top Leader Table -->
                <!-- *************************************************************** -->
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="d-flex align-items-center mb-4">
                                    <h4 class="card-title">Complaints Statistics</h4>
                                </div>
                                <div class="table-responsive">
                                    <table class="table no-wrap v-middle mb-0">
                                        <thead>
                                            <tr class="border-0">
                                                <th class="border-0 font-14 font-weight-medium text-muted">Merged
                                                </th>
                                                <th class="border-0 font-14 font-weight-medium text-muted text-center">Complaint I'd
                                                </th>
                                                <th class="border-0 font-14 font-weight-medium text-muted text-center ">
                                                    Complaint Date
                                                </th>
                                                <th class="border-0 font-14 font-weight-medium text-muted text-center">
                                                    Current Status
                                                </th>
                                                <th class="border-0 font-14 font-weight-medium text-muted text-center">
                                                    Last Update
                                                </th>
                                                <th class="border-0 font-14 font-weight-medium text-muted text-center">Days</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            
                                            <tr>
                                                <td class="border-top-0 text-center font-weight-medium text-dark px-2 py-4">
                                                    
                                                </td>
                                                <td class="border-top-0 text-dark text-center px-2 py-4 font-weight-medium "><b></b></td>
                                                <td class="border-top-0 text-dark text-center px-2 py-4 font-weight-medium"></td>
                                                <td class="border-top-0 text-dark text-center px-2 py-4 font-weight-medium"></td>

                                                <td class="border-top-0 text-center font-weight-medium text-dark px-2 py-4">
                                                
                                                </td>

                                                <td class="text-center font-weight-medium text-dark border-top-0 px-2 py-4">
                                                    
                                                </td>
                                            </tr>
                                            
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- *************************************************************** -->
                <!-- End Top Leader Table -->
                <!-- *************************************************************** -->
            </div>
            <!-- ============================================================== -->
            <!-- End Container fluid  -->
            <!-- ============================================================== -->
            <!--  Modal content for the above example -->
            <div class="modal fade" id="bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title" id="myLargeModalLabel">Logout</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">??</button>
                        </div>
                        <div class="modal-body">

                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-light" data-dismiss="modal"><i data-feather="x" class="feather-icon"></i> Close</button>
                            <a href="#" class="btn btn-primary"><i data-feather="log-out" class="feather-icon"></i> Logout</a>

                        </div>
                    </div><!-- /.modal-content -->
                </div><!-- /.modal-dialog -->
            </div><!-- /.modal -->
            <!-- ============================================================== -->
            <!-- footer -->
            <!-- ============================================================== -->
            <footer class="footer text-center text-muted">
                All Rights Reserved by <b> Complaint Management System</b>
            </footer>
            <!-- ============================================================== -->
            <!-- End footer -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- End Page wrapper  -->
        <!-- ============================================================== -->
    </div>
    <script src="../public/assets/libs/jquery/dist/jquery.min.js"></script>
    <script src="../public/assets/libs/popper.js/dist/umd/popper.min.js"></script>
    <script src="../public/assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- apps -->
    <!-- apps -->
    <script src="../public/dist/js/app-style-switcher.js"></script>
    <script src="../public/dist/js/feather.min.js"></script>
    <script src="../public/assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"></script>
    <script src="../public/dist/js/sidebarmenu.js"></script>
    <!--Custom JavaScript -->
    <script src="../public/dist/js/custom.js"></script>
    <!--This page JavaScript -->
    <script src="../public/assets/extra-libs/c3/d3.min.js"></script>
    <script src="../public/assets/extra-libs/c3/c3.min.js"></script>
    <script src="../public/assets/libs/chartist/dist/chartist.min.js"></script>
    <script src="../public/assets/libs/chartist-plugin-tooltips/dist/chartist-plugin-tooltip.min.js"></script>
    <script src="../public/assets/extra-libs/jvector/jquery-jvectormap-2.0.2.min.js"></script>
    <script src="../public/assets/extra-libs/jvector/jquery-jvectormap-world-mill-en.js"></script>
    <script src="../public/assets/extra-libs/jvector/jquery-jvectormap-in-mill.js"></script>
    <script src="../public/dist/js/pages/dashboards/dashboard1.js"></script>
    <script type="text/javascript">
        const date = new Date;
        let hours = date.getHours();
        if (hours == 00) {
            document.getElementById('greet').innerHTML = 'Good Evening' + ', ';
        } else {
            let status = (hours <= 11 && hours >= 5) ? "Good Morning" : ((hours < 17 && hours >= 12) ? "Good Afternoon" : "Good Evening");
            document.getElementById('greet').innerHTML = status + ', ';
        }

    </script>
</body>
</html>