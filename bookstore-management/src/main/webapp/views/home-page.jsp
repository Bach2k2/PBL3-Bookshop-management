<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c' %>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- basic -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- mobile metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <!-- site metas -->
    <title>NBH memorial bookstore</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- bootstrap css -->
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <!-- style css -->
    <link href="<%=request.getContextPath()%>/css/css1/style.css" rel='stylesheet' type='text/css'/>
    <link rel="stylesheet" href="../css/style.css">
    <!-- Responsive-->
    <link rel="stylesheet" href="../css/responsive.css">
    <!-- fevicon -->
    <link rel="icon" href="images/fevicon.png" type="image/gif"/>
    <!-- Scrollbar Custom CSS -->
    <link rel="stylesheet" href="../css/jquery.mCustomScrollbar.min.css">
    <!-- Tweaks for older IEs-->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->


    <link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/css1/icon-font.min.css" type='text/css'/>
</head>
<!-- body -->
<body class="main-layout home_page">
<!-- loader  -->
<div class="loader_bg">
    <div class="loader"><img src="../images/loading.gif" alt="#"/></div>
</div>
<!-- end loader -->
<!-- header -->
<header>
    <!-- header inner -->
    <div class="header">
        <div class="container">
            <div class="row">
                <div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 col logo_section">
                    <div class="full">
                        <div class="center-desk">
                            <div class="logo"><a href="/home"><img src="../images/logo.png" alt="#"></a></div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-9 col-lg-9 col-md-9 col-sm-9">
                    <div class="menu-area">
                        <div class="limit-box">
                            <nav class="main-menu">
                                <ul class="menu-area-main">
                                    <li class="active"><a href="/home">Home</a></li>
                                    <li><a href="/product?ID_U=${idAccount}">Our Books</a></li>
                                    <li><a href="/admin">Management</a></li>
                                    <li><a href="/home?action=contact">Contact us</a></li>
                                    <li><a href="/home?action=register">Sign up</a></li>
                                    <c:if test="${sessionScope.account==null}">
                                        <li><a href="/home?action=login">Sign in</a></li>
                                    </c:if>
                                    <c:if test="${sessionScope.account!=null}">
                                        <li>
                                            <div class="dropdown">
                                                <a class="btn btn-secondary dropdown-toggle" href="#" role="button"
                                                   id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true"
                                                   aria-expanded="false">
                                                    Hi <span>${sessionScope.account.username}</span>
                                                </a>
                                                <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                                                    <a href="#"><i class="fa fa-cog"></i> Setting</a>
                                                    <a href=""><i class="fa fa-user"></i>Information</a>
                                                    <a href="/home?action=logout"><i
                                                            class="fa fa-sign-out"></i> Sign out</a>
                                                </div>
                                            </div>
                                        </li>
                                    </c:if>
                                    <li class="mean-last"><a href="#"><img src="../images/search_icon.png" alt="#"/></a>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- end header inner -->
</header>
<!-- end header -->
<section class="slider_section">
    <div id="myCarousel" class="carousel slide banner-main" data-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img class="first-slide" src="../images/banner.jpg" alt="First slide">
                <div class="container">
                    <div class="carousel-caption relative">
                        <h1>The Best Libraries That<br> Every Book Lover Must<br> Visit!</h1>
                        <p><br>
                            S??ch l??m qu?? sinh nh???t tuy???t v???i cho m???i l???a tu???i<br> ch??ng t??i c?? thi???p sinh nh???t cho m???i
                            l???a tu???i!
                        </p>
                        <div class="button_section"><a class="main_bt" href="#">Read More</a></div>
                        <ul class="locat_icon">
                            <li><a href="#"><img src="../icon/facebook.png"></a></li>
                            <li><a href="#"><img src="../icon/Twitter.png"></a></li>
                            <li><a href="#"><img src="../icon/linkedin.png"></a></li>
                            <li><a href="#"><img src="../icon/instagram.png"></a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <img class="second-slide" src="../images/banner.jpg" alt="Second slide">
                <div class="container">
                    <div class="carousel-caption relative">
                        <h1>The Best Libraries That<br> Every Book Lover Must<br> Visit!</h1>
                        <p>Nh?? s??ch Nobmad ho???t ?????ng t???i 60 Ng?? S?? Li??n<br> H??y ????n v???i ch??ng t??i<br> Love you </p>
                        <div class="button_section"><a class="main_bt" href="#">Read More</a></div>
                        <ul class="locat_icon">
                            <li><a href="#"><img src="../icon/facebook.png"></a></li>
                            <li><a href="#"><img src="../icon/Twitter.png"></a></li>
                            <li><a href="#"><img src="../icon/linkedin.png"></a></li>
                            <li><a href="#"><img src="../icon/instagram.png"></a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <img class="third-slide" src="../images/banner.jpg" alt="Third slide">
                <div class="container">
                    <div class="carousel-caption relative">
                        <h1>The Best Libraries That<br> Every Book Lover Must<br> Visit!</h1>
                        <p>
                            Ch??ng t??i d?????ng nh?? kh??ng c?? n?? trong kho?<br> Y??u c???u ch??ng t??i ?????t h??ng cho b???n!<br> G???i
                            email t???i info@nobmadbooks.com.vn ho???c g???i 0902111222. </p>
                        <div class="button_section"><a class="main_bt" href="#">?????c th??m</a></div>
                        <ul class="locat_icon">
                            <li><a href="#"><img src="../icon/facebook.png"></a></li>
                            <li><a href="#"><img src="../icon/Twitter.png"></a></li>
                            <li><a href="#"><img src="../icon/linkedin.png"></a></li>
                            <li><a href="#"><img src="../icon/instagram.png"></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Tr?????c</span>
        </a>
        <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Ti???p</span>
        </a>
    </div>
</section>
<!-- about -->
<div class="about">
    <div class="container">
        <div class="row">
            <div class="col-md-10 offset-md-1">
                <div class="aboutheading">
                    <h2>About <strong class="black">Us</strong></h2>
                    <span>Nobmad c?? s??? s???p x???p linh ho???t c??c ph??ng v?? ch??? ng???i ????? t???o khung c???nh cho s??? ki???n c???a b???n, cho d?? c?? li??n quan ?????n s??ch hay kh??ng.</span>
                </div>
            </div>
        </div>
        <div class="row border">
            <div class="col-xl-7 col-lg-7 col-md-12 col-sm-12">
                <div class="about-box">
                    <p>Nobmad Books m??? c???a l???n ?????u ti??n v??o n??m 1990 v?? ???? ph??t tri???n theo nhu c???u thay ?????i c???a kh??ch
                        h??ng k??? t??? ????. Ch??ng t??i m???i b???n kh??m ph?? trang web c???a ch??ng t??i ????? kh??m ph?? t???t c??? nh???ng g??
                        ch??ng t??i cung c???p. V???n t???t h??n, h??y ?????n v?? d??nh th???i gian trong c???a h??ng ????ng y??u c???a ch??ng
                        t??i.</p>
                    <a href="#">Read More</a>
                </div>
            </div>
            <div class="col-xl-5 col-lg-5 col-md-12 col-sm-12">
                <div class="about-box">
                    <figure><img src="../images/about.png" alt="img"/></figure>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- end about -->
<!-- Library -->
<div class="Library">
    <div class="container">
        <div class="row">
            <div class="col-md-10 offset-md-1">
                <div class="titlepage">
                    <h2>Our <strong class="black">Library </strong></h2>
                    <span>Ph??ng ch??nh xinh ?????p c?? ?????y ????? c??c ????? xu???t ????? truy???n c???m h???ng cho b???n v?? khu v???c d??nh cho tr??? em c???a ch??ng t??i r???ng r??i v?? tho???i m??i. Nh??n vi??n c???a ch??ng t??i th??ch n??i v??? s??ch v?? s???n s??ng gi??p b???n t??m ???????c cu???n s??ch ho??n h???o</span>
                </div>
            </div>
        </div>
    </div>
    <div class="bg">
        <div class="container">
            <div class="row">
                <div class="col-md-10 offset-md-1">
                    <div class="Library-box">
                        <figure><img src="../images/Library-.jpg" alt="#"/></figure>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="read-more">
                    <a href="#">Read More</a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- end Library -->
<!--Books -->
<div class="Books">
    <div class="container">
        <div class="row">
            <div class="col-md-10 offset-md-1">
                <div class="titlepage">
                    <h2>Our <strong class="black">Books </strong></h2>
                    <span>M???t cu???n s??ch d?? d??? ?????n ????u ta c??ng thu l?????m ???????c v??i ??i???u ?????c bi???t c???a n??. H??y ?????n t??i nh?? s??ch ch??ng t??i ????? kh??m ph?? nh???ng ??i???u k??? th?? nh??.</span>

                </div>
            </div>
        </div>
        <div class="row box">
            <div class="col-xl-3 col-lg-3 col-md-3 col-sm-12">
                <div class="book-box">
                    <figure><img src="../images/book-1.jpg" alt="img"/></figure>
                </div>
            </div>
            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                <div class="book-box">
                    <figure><img src="../images/book-2.jpg" alt="img"/></figure>
                </div>
            </div>
            <div class="col-xl-3 col-lg-3 col-md-3 col-sm-12">
                <div class="book-box">
                    <figure><img src="../images/book-1.jpg" alt="img"/></figure>
                </div>
            </div>
            <div class="col-md-6 offset-md-3">
                <p>T???n h?????ng ni???m vui qua nh???ng cu???n s??ch</p>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="read-more">
                        <a href="#">Read More</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- end Books -->
<!-- Contact -->
<div class="Contact">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="titlepage3">
                    <h2>Contact</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                <form>
                    <div class="row">
                        <div class="col-xl-3 col-lg-3 col-md-3 col-sm-12">
                            <input class="form-control" placeholder="Name" type="Name">
                        </div>
                        <div class="col-xl-3 col-lg-3 col-md-3 col-sm-12">
                            <input class="form-control" placeholder="Phone Number" type="Phone Number">
                        </div>
                        <div class="col-xl-3 col-lg-3 col-md-3 col-sm-12">
                            <input class="form-control" placeholder="Email" type="Email">
                        </div>
                        <div class="col-xl-3 col-lg-3 col-md-3 col-sm-12">
                            <textarea class="textarea" placeholder="Message">Message</textarea>
                        </div>
                    </div>
                </form>
            </div>
            <button class="send-btn">Send</button>
        </div>
    </div>
</div>
<!-- end Contact -->
<!-- footer -->
<footer>
    <div class="footer">
        <div class="container">
            <div class="row pdn-top-30">
                <div class="col-xl-4 col-lg-4 col-md-4 col-sm-12">
                    <div class="Follow">
                        <h3>Follow Us</h3>
                    </div>
                    <ul class="location_icon">
                        <li><a href="#"><img src="../icon/facebook.png"></a></li>
                        <li><a href="#"><img src="../icon/Twitter.png"></a></li>
                        <li><a href="#"><img src="../icon/linkedin.png"></a></li>
                        <li><a href="#"><img src="../icon/instagram.png"></a></li>
                    </ul>
                </div>
                <div class="col-xl-8 col-lg-8 col-md-8 col-sm-12">
                    <div class="Follow">
                        <h3>Newsletter</h3>
                    </div>
                    <input class="Newsletter" placeholder="Enter your email" type="Enter your email">
                    <button class="Subscribe">Subscribe</button>
                </div>
            </div>
        </div>
    </div>
    <div class="copyright">
        <div class="container">
            <p>@Copyright 2022</p>
        </div>
    </div>
</footer>
<!-- end footer -->
<!-- Javascript files-->
<script src="../js/jquery.min.js"></script>
<script src="../js/popper.min.js"></script>
<script src="../js/bootstrap.bundle.min.js"></script>
<script src="../js/jquery-3.0.0.min.js"></script>
<script src="../js/plugin.js"></script>
<!-- sidebar -->
<script src="../js/jquery.mCustomScrollbar.concat.min.js"></script>
<script src="../js/custom.js"></script>
<script>
    var toggle = true;

    $(".sidebar-icon").click(function () {
        if (toggle) {
            $(".page-container").addClass("sidebar-collapsed").removeClass("sidebar-collapsed-back");
            $("#menu span").css({"position": "absolute"});
        } else {
            $(".page-container").removeClass("sidebar-collapsed").addClass("sidebar-collapsed-back");
            setTimeout(function () {
                $("#menu span").css({"position": "relative"});
            }, 400);
        }

        toggle = !toggle;
    });
</script>
</body>
</html>
