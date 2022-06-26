<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <title>dashboard</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="laptop" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- Bootstrap Core CSS -->
    <link href="${pageContext.request.contextPath}/css/css1/bootstrap.min.css" rel='stylesheet' type='text/css' />
    <!-- Custom CSS -->
<%--    <c:url value="css/css1/style.css"/>--%>
    <link href='${pageContext.request.contextPath}/css/css1/style.css' rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/css1/morris.css" type="text/css"/>
    <!-- Graph CSS -->
<%--    <link href="<%=request.getContextPath()%>/css/css1/font-awesome.css" rel="stylesheet">--%>
<%--    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"    integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />--%>
    <!-- jQuery -->
    <script src="<%=request.getContextPath()%>/js/js1/jquery-2.1.4.min.js"></script>
    <!-- //jQuery -->
    <!-- <link href='//fonts.googleapis.com/css?family=Roboto:700,500,300,100italic,100,400' rel='stylesheet' type='text/css'/>
    <link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'> -->
    <!-- lined-icons -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/css1/icon-font.min.css" type='text/css' />

    <!-- tables -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/css1/table-style.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/css1/basictable.css" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/js1/jquery.basictable.min.js"></script>
</head>
<body>
<div class="page-container">
    <!--/content-inner-->
    <div class="left-content">
        <div class="mother-grid-inner">
            <!--header start here-->
            <div class="header-main">

                <div class="profile_details w3l">
                    <ul>
                        <li class="dropdown profile_details_drop">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                <div class="profile_img">
                                    <span class="prfil-img"><img src="<%=request.getContextPath()%>/images/admin/in4.jpg" alt=""> </span>
                                    <div class="user-name">
                                        <p>Thông tin</p>
                                        <span>Admin</span>
                                    </div>
                                    <i class="fa fa-angle-down"></i>
                                    <i class="fa fa-angle-up"></i>
                                    <div class="clearfix"></div>
                                </div>
                            </a>
                            <ul class="dropdown-menu drp-mnu">
                                <li> <a href="#"><i class="fa fa-cog"></i> Cài đặt</a> </li>
                                <li> <a href="#"><i class="fa fa-user"></i> Thông tin</a> </li>
                                <li> <a href="#"><i class="fa fa-sign-out"></i> Đăng xuất</a> </li>
                            </ul>
                        </li>
                    </ul>
                </div>

                <div class="clearfix"> </div>
            </div>
            <!--heder end here-->
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="/home?action=admin">Trang chủ</a> <i class="fa fa-angle-right"></i></li>
            </ol>

            <!-- grids -->
            <div class="grids">



                <div class="agile-calendar-grid">
                    <div class="page">

                        <div class="w3l-calendar-left">
                            <div class="calendar-heading">
                                <!-- 									<p>Noi dung</p>
                                 -->
                                <div class="agile-tables">
                                    <div class="w3l-table-info">
                                        <h2>Danh mục chức năng của admin:</h2>
                                        <div class="row">
                                            <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">

                                            </div>
                                            <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8">
                                                <div class="list-group">
                                                    <a href="/admin" class="list-group-item active">Trang chủ</a>
                                                    <a href="/admin?action=product-management" class="list-group-item">Quản lý Sách</a>
                                                    <a href="/admin?action=category" class="list-group-item">Quản lý thể loại</a>
                                                    <a href="/admin?action=author" class="list-group-item">Quản lý tác giả</a>
                                                    <a href="" class="list-group-item">Quản lý đơn hàng</a>
                                                    <a href="/customer" class="list-group-item">Quản lý khách hàng</a>
                                                </div>
                                            </div>
                                            <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="clearfix"> </div>
                    </div>
                </div>
            </div>
            <!-- //grids -->
            <!--photoday-section-->


            <div class="col-sm-4 wthree-crd">
                <div class="card">
                    <div class="card-body">

                    </div>
                </div>
            </div>

            <div class="clearfix"></div>

            <!--//photoday-section-->
            <!-- script-for sticky-nav -->
            <script>
                $(document).ready(function() {
                    var navoffeset=$(".header-main").offset().top;
                    $(window).scroll(function(){
                        var scrollpos=$(window).scrollTop();
                        if(scrollpos >=navoffeset){
                            $(".header-main").addClass("fixed");
                        }else{
                            $(".header-main").removeClass("fixed");
                        }
                    });

                });
            </script>
            <!-- /script-for sticky-nav -->
            <!--inner block start here-->
            <div class="inner-block">

            </div>
            <!--inner block end here-->
            <!--copy rights start here-->
            <div class="copyrights">
                <p>© 2018 N5QPT. All Rights Reserved | Design by  <a href="http://w3layouts.com/" target="_blank">W3layouts</a> </p>
            </div>
            <!--COPY rights end here-->
        </div>
    </div>
    <!--//content-inner-->
    <!--/sidebar-menu-->
    <div class="sidebar-menu">
        <header class="logo1">
            <a href="#" class="sidebar-icon"> <span class="fa fa-bars"></span> </a>
        </header>
        <div style="border-top:1px ridge rgba(255, 255, 255, 0.15)"></div>
        <div class="menu">
            <ul id="menu" >
                <li><a href="index1.html"><i class="fa fa-tachometer"></i> <span>Trang chủ</span><div class="clearfix"></div></a></li>


                <li id="menu-academico" ><a href="donhang.html"><i class="fa fa-envelope nav_icon"></i><span>Đơn hàng</span><div class="clearfix"></div></a></li>
                <!-- <li><a href="gallery.html"><i class="fa fa-picture-o" aria-hidden="true"></i><span>Gallery</span><div class="clearfix"></div></a></li> -->

                <li id="menu-academico" ><a href="#"><i class="fa fa-list-ul" aria-hidden="true"></i><span>Sản phẩm</span> <span class="fa fa-angle-right" style="float: right"></span><div class="clearfix"></div></a>
                    <ul id="menu-academico-sub" >
                        <li id="menu-academico-avaliacoes" > <a href="/admin?action=product-management" class="list-group-item">Quản lý Sách</a></li>
                        <li id="menu-academico-avaliacoes" ><a href="/admin?action=category-management" class="list-group-item">Quản lý thể loại</a></li>
                        <li id="menu-academico-avaliacoes" ><a href="/admin?action=author-management" class="list-group-item">Quản lý tác giả</a></li>
                    </ul>
                </li>


                <li id="menu-academico" ><a href="#"><i class="fa fa-file-text-o"></i>  <span>Khác</span> <span class="fa fa-angle-right" style="float: right"></span><div class="clearfix"></div></a>
                    <ul id="menu-academico-sub" >
                        <li id="menu-academico-boletim" ><a href="calendar.html">Lịch</a></li>
                        <!-- <li id="menu-academico-avaliacoes" ><a href="signin.html">Đăng nhập</a></li>
                        <li id="menu-academico-avaliacoes" ><a href="signup.html">Đăng ký</a></li> -->


                    </ul>
                </li>

            </ul>
        </div>
    </div>
    <div class="clearfix"></div>
</div>

<script>
    var toggle = true;

    $(".sidebar-icon").click(function() {
        if (toggle)
        {
            $(".page-container").addClass("sidebar-collapsed").removeClass("sidebar-collapsed-back");
            $("#menu span").css({"position":"absolute"});
        }
        else
        {
            $(".page-container").removeClass("sidebar-collapsed").addClass("sidebar-collapsed-back");
            setTimeout(function() {
                $("#menu span").css({"position":"relative"});
            }, 400);
        }

        toggle = !toggle;
    });
</script>
<!--js -->
<script src="${pageContext.request.contextPath}/js/js1/jquery.nicescroll.js"></script>
<script src="${pageContext.request.contextPath}/js/js1/scripts.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="${pageContext.request.contextPath}/js/js1/bootstrap.min.js"></script>
<!-- /Bootstrap Core JavaScript -->
<!-- morris JavaScript -->
<script src="${pageContext.request.contextPath}/js/js1/raphael-min.js"></script>

</body>
