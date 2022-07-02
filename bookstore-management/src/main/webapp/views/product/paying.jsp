<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Thanh Toán</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <!--[if ie]><meta content='IE=8' http-equiv='X-UA-Compatible'/><![endif]-->
    <!-- bootstrap -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
    <link href="themes/css/bootstrappage.css" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" href="themes/css/font-awesome.min.css">
    <!-- <link rel="stylesheet" type="text/css" href="themes/css/font-awesome.min2.css"> -->
    <link rel="stylesheet" type="text/css" href="themes/css/font-awesome.min3.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.10/css/all.css" integrity="sha384-+d0P83n9kaQMCwj8F4RJB66tzIwOKmrdb46+porD/OvrJ+37WqIM7UoBtwHO6Nlg" crossorigin="anonymous">

    <!-- global styles -->
    <link href="themes/css/flexslider.css" rel="stylesheet"/>
    <link href="themes/css/main.css" rel="stylesheet"/>

    <!-- scripts -->
    <script src="themes/js/jquery-1.7.2.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="themes/js/superfish.js"></script>
    <script src="themes/js/jquery.scrolltotop.js"></script>
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<div id="top-bar" class="container">
    <div class="row">
        <div class="span4">
            <form class="search_form" action="product" method = "post">
                <div class="input-group">
                    <input type="text" class="search-query form-control input-group" Placeholder="Tìm sách theo tên"
                           name = "namesearch">
                    <input type="hidden" name = "action" value = "searchname">
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
                    <li><a href="./MyCart?ID_U=<c:out value='${ID_U}'/>"> Giỏ hàng </a></li>
                    <li><a href="/home?action=login"> Đăng nhập </a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
<div id="wrapper" class="container">
    <section class="navbar main-menu">
        <div class="navbar-inner main-menu">
            <a href="/home" class="logo pull-left"><h4 class="title">Nobmad</h4> </a>
            <nav id="menu" class="pull-right">
                <ul>
                    <li><a href="./product?ID_U=<c:out value='${ID_U}'/>">Quay về cửa hàng</a></li>
                </ul>
            </nav>
        </div>
    </section>
    <section class="header_text sub">
        <img class="pageBanner" src="themes/images/carousel/slider_3.jpg" alt="New products" >
        <h4><span>Thanh Toán</span></h4>
    </section>
    <section class="main-content">
        <div class="row">
            <div class="span12">
                <div class="accordion" id="accordion2">

                    <div class="accordion-group">
                        <div class="accordion-heading">
                            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo">Tài khoản &amp; Chi tiết hóa đơn</a>
                        </div>
                        <div id="collapseTwo" class="accordion-body">
                            <form method = post>
                                <div class="accordion-inner">
                                    <div class="row-fluid">
                                        <div class="span6">
                                            <h4>Thông tin thanh toán</h4>
                                            <div class="control-group">
                                                <label class="control-label">Tổng giá sản phẩm:</label>
                                                <div class="controls">
                                                    <input type="text" placeholder="" class="input-xlarge" value ='${Tongtien}' name = "Tongtien" readonly>
                                                </div>
                                            </div>
                                            <div class="control-group">
                                                <label class="control-label">Địa chỉ giao hàng<span class="text text-danger">(*)</span></label>
                                                <div class="controls">
                                                    <input type="text" id="orderLocate"  class="input-xlarge" name ="order_location" required>
                                                </div>
                                            </div>
                                            <div class="control-group">
                                                <label class="control-label">Số điện thoại<span class="text text-danger">(*)</span></label>
                                                <div class="controls">
                                                    <input type="text" id="phoneNum" class="input-xlarge" name = "phone_number" required>
                                                </div>
                                            </div>
                                            <div class="control-group">
                                                <label class="control-label">Ngày giao hàng<span class="text text-danger">(*)</span>:</label>
                                                <div class="controls">
                                                    <input type="date" id="deliveryDate" class="input-xlarge" name = "delivery_date" required>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <input type ="hidden" name="ID_U" value ='${ID_U}'>
                                    <input type ="hidden" name="action" value ="thanhtoan">
                                    <button class="btn btn-primary pull-right" type="submit" onclick="validate()">Xác nhận đơn hàng</button>
                                </div>
                            </form>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>
    <script>
        function validate() {
            var orderLocate=document.getElementById("orderLocate").value;
            var phoneNum=document.getElementById("phoneNum").value;
            var deliveryDate= document.getElementById("deliveryDate").value
            alert(deliveryDate);
            if((orderLocate==""||orderLocate==null)
                &&(phoneNum==""||phoneNum==null)
                &&(deliveryDate===""||deliveryDate===null))
            {
                alert("Mời nhập đầy đủ thông tin")

            }else{
                confirm("Đã thanh toán thành công");
            }

        }
    </script>
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
                <p style="color: white;">Website chúng tôi chuyên cung cấp các sản phẩm chất lượng có uy tín và mới nhất trên thị trường hiện nay
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
        <span>Copyright 2022 NBM group. All right reserved.</span>
    </section>
</div>
<script type="text/javascript" src="themes/js/common.js"></script>
</body>
</html>