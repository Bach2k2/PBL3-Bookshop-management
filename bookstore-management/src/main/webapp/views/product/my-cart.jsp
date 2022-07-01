<%--Giỏ hàng--%>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Giỏ Hàng</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <!--[if ie]>
    <meta content='IE=8' http-equiv='X-UA-Compatible'/><![endif]-->
    <!-- bootstrap -->
    <!-- <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.10/css/all.css" integrity="sha384-+d0P83n9kaQMCwj8F4RJB66tzIwOKmrdb46+porD/OvrJ+37WqIM7UoBtwHO6Nlg" crossorigin="anonymous"> -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
    <link href="themes/css/bootstrappage.css" rel="stylesheet"/>

    <!-- global styles -->
    <link href="themes/css/flexslider.css" rel="stylesheet"/>
    <link href="themes/css/main.css" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" href="themes/css/font-awesome.min.css">
    <!-- <link rel="stylesheet" type="text/css" href="themes/css/font-awesome.min2.css"> -->
    <link rel="stylesheet" type="text/css" href="themes/css/font-awesome.min3.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.10/css/all.css"
          integrity="sha384-+d0P83n9kaQMCwj8F4RJB66tzIwOKmrdb46+porD/OvrJ+37WqIM7UoBtwHO6Nlg" crossorigin="anonymous">
    <!-- scripts -->
    <script src="themes/js/jquery-1.7.2.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="themes/js/superfish.js"></script>
    <script src="themes/js/jquery.scrolltotop.js"></script>
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <script src="themes/js/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<div id="top-bar" class="container">
    <div class="row">
        <div class="span4">
            <form class="search_form" action="displayproduct" method="post">
                <div class="input-group">
                    <input type="text" class="search-query form-control input-group" Placeholder="Tìm sách theo tên"
                           name="namesearch">
                    <input type="hidden" name="action" value="searchname">
                    <span class="input-group-btn">
								<button class="btn btn-primary rounded-circle btnpro" type="submit" id="btn-search">
									<span class="fa fa-search"></span>
								</button>
							</span>
                </div>
            </form>
        </div>
        <div class="span8">
            <div class="account pull-right">
                <ul class="user-menu">
                    <li><a href="#">Tài Khoản</a></li>
                    <li><a href="./MyCart?ID_U=<c:out value='${sessionScope.account.idAccount}'/>"> Giỏ hàng </a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
<div id="wrapper" class="container">
    <section class="navbar main-menu">
        <div class="navbar-inner main-menu">
            <a href="index.html" class="logo pull-left"><h4 class="title">Nobman</h4></a>
            <nav id="menu" class="pull-right">
                <ul>
                    <li><a href="./product?ID_U=<c:out value='${ID_U}'/>">Quay về cửa hàng</a>
                </ul>
            </nav>
        </div>
    </section>
    <section class="header_text sub">
        <img class="pageBanner" src="themes/images/baner.jpg" alt="New products">
        <br/>
        <h4><span>Shopping Cart</span></h4>
    </section>
    <section class="main-content">
        <div class="row">
            <div class="span9">
                <h4 class="title"><span class="text"><strong>Giỏ Hàng</strong> Của Bạn </span></h4>
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th>Xóa</th>
                        <th>Mặt hàng</th>
                        <th> Tên Sách</th>
                        <th> Số Lượng</th>
                        <th> Giá Tiền</th>
                        <th> Tổng</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="OrderdetailShow" items="${listOrderdetailShow}">
                        <form method=POST>
                            <tr>
                                <td>
                                    <button type="submit" class="btn btn-success">xóa</button>
                                </td>
                                <td>
                                    <a href="Productdetail?ID_Product=<c:out value='${OrderdetailShow.getID_Product()}' />&ID_U=<c:out value='${ID_U}' />"><img
                                            alt=""
                                            src="themes/images/cloth/thebook ${OrderdetailShow.getID_Product()}.jpg"></a>
                                </td>
                                <td>${OrderdetailShow.getBook_title()}</td>
                                <td>${OrderdetailShow.getQuantity()}</td>
                                <td>${OrderdetailShow.getPrice()}</td>
                                <td>${OrderdetailShow.getTinhtien()}</td>
                                <input type="hidden" name="ID_ProductShow" value='${OrderdetailShow.getID_Product()}'>
                                <input type="hidden" name="ID_CardShow" value='${OrderdetailShow.getID_Cart()}'>
                                <input type="hidden" name="statusShow" value='${OrderdetailShow.isStatus()}'>
                                <input type="hidden" name="ID_U" value='${ID_U}'>
                                <input type="hidden" name="action" value="deleteod">
                            </tr>
                        </form>
                    </c:forEach>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td><strong>${Tongtien}</strong></td>
                    </tr>
                    </tbody>
                </table>

                <hr/>
                <p class="buttons center">
                    <a href="Paying?ID_U=<c:out value='${ID_U}' />" class="btn btn-primary">Thanh Toán</a>
                </p>
            </div>
            <div class="span3 col">
                <div class="block">
                    <h4 class="title">
                        <span class="pull-left"><span class="text">Đề xuất</span></span>
                        <span class="pull-right">
									<a class="left button" href="#myCarousel" data-slide="prev"></a><a
                                class="right button" href="#myCarousel" data-slide="next"></a>
								</span>
                    </h4>
                    <div id="myCarousel" class="carousel slide">
                        <div class="carousel-inner">
                            <div class="active item">
                                <c:forEach var="ProductShow" items="${listProductShow}" begin="0" end="0">

                                    <ul class="thumbnails listing-products">
                                        <li class="span3">
                                            <div class="product-box">
                                                <span class="sale_tag"></span>
                                                <a href="Productdetail?ID_Product=<c:out value='${ProductShow.getID_Product()}' />&ID_U=<c:out value='${ID_U}' />"><img
                                                        alt=""
                                                        src="themes/images/cloth/thebook ${ProductShow.getID_Product()}.jpg"></a><br/>
                                                <a href="Productdetail?ID_Product=<c:out value='${ProductShow.getID_Product()}' />&ID_U=<c:out value='${ID_U}' />"
                                                   class="title">${ProductShow.getBook_title()}</a><br/>
                                                <a href="Productdetail?ID_Product=<c:out value='${ProductShow.getID_Product()}' />&ID_U=<c:out value='${ID_U}' />"
                                                   class="category">${ProductShow.getCategory_name()}</a>
                                                <p class="price">${ProductShow.getPrice()}</p>
                                            </div>
                                        </li>
                                    </ul>
                                </c:forEach>
                            </div>
                            <c:forEach var="ProductShow" items="${listProductShow}" begin="1">
                                <div class="item">
                                    <ul class="thumbnails listing-products">
                                        <li class="span3">
                                            <div class="product-box">
                                                <span class="sale_tag"></span>
                                                <a href="Productdetail?ID_Product=<c:out value='${ProductShow.getID_Product()}' />&ID_U=<c:out value='${ID_U}' />"><img
                                                        alt=""
                                                        src="themes/images/cloth/thebook ${ProductShow.getID_Product()}.jpg"></a><br/>
                                                <a href="Productdetail?ID_Product=<c:out value='${ProductShow.getID_Product()}' />&ID_U=<c:out value='${ID_U}' />"
                                                   class="title">${ProductShow.getBook_title()}</a><br/>
                                                <a href="Productdetail?ID_Product=<c:out value='${ProductShow.getID_Product()}' />&ID_U=<c:out value='${ID_U}' />"
                                                   class="category">${ProductShow.getCategory_name()}</a>
                                                <p class="price">${ProductShow.getPrice()}</p>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section style="background-color: #857474;" id="footer-bar">
        <div class="row">
            <div class="span3">
                <h4>Điều Hướng</h4>
                <ul class="nav">
                    <li><a href="./index.html">Trang chủ</a></li>
                    <li><a href="./about.html">Thông tin</a></li>
                    <li><a href="./contact.html">Liên hệ</a></li>
                    <li><a href="./cart.html">Giỏ hàng</a></li>
                    <li><a href="./register.html">Đăng nhập</a></li>
                </ul>
            </div>
            <div class="span4">
                <h4>My Account</h4>
                <ul class="nav">
                    <li><a href="#">Tài khoản của tôi</a></li>
                    <li><a href="#">Lịch sử đặt hàng</a></li>
                    <li><a href="#">Danh sách yêu thích</a></li>
                    <!-- <li><a href="#">Làm mới</a></li> -->
                </ul>
            </div>
            <div class="span5">
                <p class="logo"><!-- <img src="themes/images/logo.png" class="site_logo" alt=""> --><h4>IBOOK</h4></p>
                <p style="color: white;">Website chúng tôi chuyên cung cấp các sản phẩm chất lượng có uy tín và mới nhất
                    trên thị trường hiện nay
                    <br/>Hãy ghé thăm trang web của chúng tôi và đừng bỏ lỡ các sản phẩm mới nhé!</p>
                <div style="margin-left: 60px;">
                    <a href="#" class="button">
                        <i class="fab fa-facebook-f fa-lg"></i>
                    </a>
                    <a href="#" class="button">
                        <i class="fab fa-twitter fa-lg"></i>
                    </a>
                    <a href="#" class="button">
                        <i class="fab fa-instagram fa-lg"></i>
                    </a>
                </div>

            </div>
        </div>
    </section>
    <section id="copyright">
        <span>Copyright 2022 NBM . All right reserved.</span>
    </section>

</div>
<script src="themes/js/common.js"></script>
<script>
    $(document).ready(function () {
        $('#paying').click(function (e) {
            document.location.href = "./Paying";
        })
    });
</script>
</body>
</html>