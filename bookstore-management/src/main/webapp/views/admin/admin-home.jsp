<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <title>dashboard</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="laptop" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- Bootstrap Core CSS -->
<%--    <link href="<%=request.getContextPath()%>/css/css1/bootstrap.min.css" rel='stylesheet' type='text/css' />--%>
<%--    <!-- Custom CSS -->--%>
<%--&lt;%&ndash;    <c:url value="css/css1/style.css"/>&ndash;%&gt;--%>
<%--    <link href='<%=request.getContextPath()%>/css/css1/style.css' rel='stylesheet' type='text/css' />--%>
<%--    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/css1/morris.css" type="text/css"/>--%>
<%--    <!-- Graph CSS -->--%>

<%--    <!-- jQuery -->--%>
<%--   <script src="<%=request.getContextPath()%>/js/js1/jquery-2.1.4.min.js"></script>--%>
<%--    <!-- //jQuery -->--%>
<%--    <!-- <link href='//fonts.googleapis.com/css?family=Roboto:700,500,300,100italic,100,400' rel='stylesheet' type='text/css'/>--%>
<%--    <link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'> -->--%>
<%--    <!-- lined-icons -->--%>
<%--&lt;%&ndash;    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/css1/icon-font.min.css" type='text/css' />&ndash;%&gt;--%>

<%--    <!-- tables -->--%>
<%--    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/css1/table-style.css" />--%>
<%--    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/css1/basictable.css" />--%>
<%--    <script type="text/javascript" src="<%=request.getContextPath()%>/js/js1/jquery.basictable.min.js"></script>--%>
    <link href="<%=request.getContextPath()%>/css/css1/bootstrap.min.css" rel='stylesheet' type='text/css'/>
    <!-- Custom CSS -->
    <link href="<%=request.getContextPath()%>/css/css1/style.css" rel='stylesheet' type='text/css'/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/css1/morris.css" type="text/css"/>
    <!-- Graph CSS -->
    <%--    <link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.no-icons.min.css"--%>
    <%--          rel="stylesheet">--%>
    <link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet">
    <!-- jQuery -->
    <script src="<%=request.getContextPath()%>/js/js1/jquery-2.1.4.min.js"></script>
    <!-- //jQuery -->
    <!-- <link href='//fonts.googleapis.com/css?family=Roboto:700,500,300,100italic,100,400' rel='stylesheet' type='text/css'/>
    <link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'> -->
    <!-- lined-icons -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/css1/icon-font.min.css" type='text/css'/>

    <!-- tables -->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/css1/table-style.css"/>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/css1/basictable.css"/>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/js1/jquery.basictable.min.js"></script>
    <%--Font awesome--%>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/font-awesome-4.7.0/css/font-awesome.min.css">

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
                        <li>
                            <div class="dropdown">
                                <a class="btn btn-secondary dropdown-toggle" href="#" role="button"
                                   id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true"
                                   aria-expanded="false">
                                    Xin ch??o <span>${username}</span>
                                </a>
                                <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                                    <a href="#"><i class="fa fa-cog"></i> C??i ?????t</a>
                                    <a href=""><i class="fa fa-user"></i>Th??ng tin</a>
                                    <a href="/home?action=logout"><i
                                            class="fa fa-sign-out"></i> ????ng xu???t</a>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>

                <div class="clearfix"> </div>
            </div>
            <!--heder end here-->
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="/admin">Trang ch???</a> <i class="fa fa-angle-right"></i></li>
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
                                        <h2>Danh m???c ch???c n??ng c???a admin:</h2>
                                        <div class="row">
                                            <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">

                                            </div>
                                            <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8">
                                                <div class="list-group">
                                                    <a href="/admin" class="list-group-item active">Trang ch???</a>
                                                    <a href="/admin?action=product-management" class="list-group-item">Qu???n l?? S??ch</a>
                                                    <a href="/admin?action=category-management" class="list-group-item">Qu???n l?? th??? lo???i</a>
                                                    <a href="/admin?action=author-management" class="list-group-item">Qu???n l?? t??c gi???</a>
                                                    <a href="#" class="list-group-item">Qu???n l?? ????n h??ng</a>
                                                    <a href="/customer" class="list-group-item">Qu???n l?? kh??ch h??ng</a>
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
                <p>?? 2022 NBH Team. All Rights Reserved | Design by  <a href="http://w3layouts.com/" target="_blank">W3layouts</a> </p>
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
                <li><a href="/home"><i class="fa fa-tachometer"></i> <span>Trang ch???</span><div class="clearfix"></div></a></li>


                <li id="menu-academico" ><a href="donhang.html"><i class="fa fa-envelope nav_icon"></i><span>????n h??ng</span><div class="clearfix"></div></a></li>
                <!-- <li><a href="gallery.html"><i class="fa fa-picture-o" aria-hidden="true"></i><span>Gallery</span><div class="clearfix"></div></a></li> -->

                <li id="menu-academico" ><a href="#"><i class="fa fa-list-ul" aria-hidden="true"></i><span>S???n ph???m</span> <span class="fa fa-angle-right" style="float: right"></span><div class="clearfix"></div></a>
                    <ul id="menu-academico-sub" >
                        <li id="menu-academico-avaliacoes" > <a href="/admin?action=product-management" class="list-group-item">Qu???n l?? S??ch</a></li>
                        <li id="menu-academico-avaliacoes" ><a href="/admin?action=category-management" class="list-group-item">Qu???n l?? th??? lo???i</a></li>
                        <li id="menu-academico-avaliacoes" ><a href="/admin?action=author-management" class="list-group-item">Qu???n l?? t??c gi???</a></li>
                    </ul>
                </li>


                <li id="menu-academico" ><a href="#"><i class="fa fa-file-text-o"></i>  <span>Kh??c</span> <span class="fa fa-angle-right" style="float: right"></span><div class="clearfix"></div></a>
                    <ul id="menu-academico-sub" >
                        <li id="menu-academico-boletim" ><a href="calendar.html">L???ch</a></li>
                        <!-- <li id="menu-academico-avaliacoes" ><a href="signin.html">????ng nh???p</a></li>
                        <li id="menu-academico-avaliacoes" ><a href="signup.html">????ng k??</a></li> -->


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
<%--<script src="<%=request.getContextPath()%>/js/js1/jquery.nicescroll.js"></script>--%>
<%--<script src="<%=request.getContextPath()%>/js/js1/scripts.js"></script>--%>
<%--<!-- Bootstrap Core JavaScript -->--%>
<script src="<%=request.getContextPath()%>/js/js1/bootstrap.min.js"></script>
<%--<!-- /Bootstrap Core JavaScript -->--%>
<%--<!-- morris JavaScript -->--%>
<%--<script src="<%=request.getContextPath()%>/js/js1/raphael-min.js"></script>--%>

</body>
