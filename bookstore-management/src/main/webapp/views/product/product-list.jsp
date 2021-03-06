<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Memorial- Danh sách sản phẩm</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <!--[if ie]>
    <meta content='IE=8' http-equiv='X-UA-Compatible'/><![endif]-->
    <!-- bootstrap -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
    <!-- Style CSS -->
    <link href="<%=request.getContextPath()%>/css/css1/style.css" rel='stylesheet' type='text/css'/>
    <!-- -->
    <link href="themes/css/bootstrappage.css" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" href="themes/css/font-awesome.min.css">
    <!-- <link rel="stylesheet" type="text/css" href="themes/css/font-awesome.min2.css"> -->
    <link rel="stylesheet" type="text/css" href="themes/css/font-awesome.min3.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.10/css/all.css"
          integrity="sha384-+d0P83n9kaQMCwj8F4RJB66tzIwOKmrdb46+porD/OvrJ+37WqIM7UoBtwHO6Nlg" crossorigin="anonymous">
    <!-- global styles -->
    <link href="themes/css/flexslider.css" rel="stylesheet"/>
    <link href="themes/css/main.css" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" href="themes/css/jquery-ui.min.css">
    <!-- scripts -->
    <script src="themes/js/jquery-1.7.2.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="themes/js/superfish.js"></script>
    <script src="themes/js/jquery.scrolltotop.js"></script>
    <script type="text/javascript" src="themes/js/jquery-ui.min.js"></script>
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<div id="top-bar" class="container">
    <div class="row">
        <div class="span4">
            <form class="search_form" action="product?action=searchname&ID_U=${sessionScope.account.idAccount}"
                  method="post">
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
                    <c:if test="${ID_U!=-1}">
                        <li><a href="/product?action=myAccount&ID_U=<c:out value='${ID_U}'/>">Tài khoản</a></li>
                    </c:if>
                    <li><a href="./MyCart?ID_U=<c:out value='${ID_U}'/>"> Giỏ hàng </a></li>
                    <c:if test="${ID_U==-1}">
                        <li><a href="./home?action=login">Đăng nhập</a></li>
                    </c:if>
                    <c:if test="${sessionScope.account!=null}">
                        <li>
                            <div class="dropdown">
                                <a class="btn btn-secondary dropdown-toggle" href="#" role="button"
                                   id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true"
                                   aria-expanded="false">
                                    Xin chào <span>${sessionScope.account.username}</span>
                                </a>
                                <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                                    <a href="#"><i class="fa fa-cog"></i>Cài đặt</a>
                                    <a href="/product?action=myAccount&ID_U=${sessionScope.account.idAccount}"><i
                                            class="fa fa-user"></i>Thông tin</a>
                                    <a href="/home?action=logout"><i
                                            class="fa fa-sign-out"></i>Đăng xuất</a>
                                </div>
                            </div>
                        </li>
                    </c:if>
                </ul>
            </div>
        </div>
    </div>
</div>
<div id="wrapper" class="container">
    <section class="navbar main-menu">
        <div class="navbar-inner main-menu">
            <a href="/home" class="logo pull-left"><h4 class="title">Memorial</h4></a>
            <nav id="menu" class="pull-right">
                <ul>
                    <!--														
							<li><a >Thể loại sách</a>
								<ul>
								
								<c:forEach var="Category" items="${categories}">			
									
								<li><a href="/PBL_Product/product" value="${Category.getCategoryName()}"
					name ="categoriesearch" method="post">${Category.getCategoryName()}</a></li>
								</c:forEach>
								</ul>
							</li>			
							    <li><a href="./products.html">Man</a></li>						
								<li><a href="./products.html">Hangbag</a></li> -->
                </ul>
            </nav>
        </div>
    </section>
    <section class="homepage-slider" id="home-slider">
        <div class="flexslider">
            <ul class="slides">
                <li>
                    <img src="themes/images/carousel/slider_1.jpg" alt="anh bia 1"/>
                    <div class="intro">
                        <%--Khuyến mãi--%>
                    </div>
                </li>
                <li>
                    <img src="themes/images/carousel/slider_4.png" alt="anh bia 2"/>

                </li>
                <li>
                    <img src="themes/images/carousel/slider_5.png" alt="anh bia 3"/>

                </li>
                <li>
                    <img src="themes/images/carousel/slider_6.png" alt="anh bia 4"/>

                </li>
                <li>
                    <img src="themes/images/carousel/slider_7.png" alt="anh bia 5"/>

                </li>
            </ul>
        </div>
    </section>
    <section class="header_text">
        Website chúng tôi chuyên cung cấp các sản phẩm chất lượng có uy tín và mới nhất trên thị trường hiện nay
        <br/>Hãy ghé thăm trang web của chúng tôi và đừng bỏ lỡ các sản phẩm mới nhé!
    </section>
    <hr>
    <h4><span>Một số sách phổ biến:</span></h4>
    </section>
    <section class="main-content">

        <div class="row">
            <div class="span9">
                <ul class="thumbnails listing-products">

                    <c:forEach var="ProductShow" items="${listProductShow}">
                        <li class="span3">
                            <div class="product-box">
                                <span class="sale_tag"></span>
                                <a href="productDetail?ID_Product=<c:out value='${ProductShow.getIdProduct()}'/>&ID_U=<c:out value='${ID_U}' />">
                                    <img alt="no image" src="${ProductShow.getCoverImages()}"></a><br/>
                                <a href="productDetail?ID_Product=<c:out value='${ProductShow.getIdProduct()}' />&ID_U=<c:out value='${ID_U}' />"
                                   class="title">Tiêu đề : ${ProductShow.getBookTitle()}</a><br/>
                                <a href="productDetail?ID_Product=<c:out value='${ProductShow.getIdProduct()}' />&ID_U=<c:out value='${ID_U}' />"
                                   class="category">Thể loại : ${ProductShow.getCategoryName()}</a><br/>
                                <a href="productDetail?ID_Product=<c:out value='${ProductShow.getIdProduct()}' />&ID_U=<c:out value='${ID_U}' />"
                                   class="category">Tác giả: ${ProductShow.getAuthorName()}</a><br/>
                                <a href="productDetail?ID_Product=<c:out value='${ProductShow.getIdProduct()}' />&ID_U=<c:out value='${ID_U}' />"
                                   class="category">Điểm đánh giá : ${ProductShow.getAverageRating()}</a><br/>
                                <p class="price" id="price" value="${ProductShow.getPrice()}">Giá
                                    tiền: ${ProductShow.getPrice()}</p>
                            </div>
                        </li>
                    </c:forEach>
                </ul>
                <hr>
            </div>
            <div class="span3 col">
                <div id="menu-filter">
                    <h3>Mức Giá</h3>
                        <form name="action" action="product?action=searchprice&ID_U=${sessionScope.account.idAccount>0?sessionScope.account.idAccount:-1}"
                              method="post">
                            <div>
                                <div class="checkbox checkbox-primary">
                                    <input id="checkbox1" type="checkbox" class="input-lg"
                                           name="pricesearch" value="0">
                                    <label for="checkbox1">
                                        Tất cả
                                    </label>
                                </div>
                                <div class="checkbox checkbox-primary">
                                    <input id="checkbox2" type="checkbox" class="input-lg"
                                           name="pricesearch" value="1">
                                    <label for="checkbox2">
                                        Dưới 100.000 VND
                                    </label>
                                </div>
                                <div class="checkbox checkbox-primary">
                                    <input id="checkbox3" type="checkbox" class="input-lg"
                                           name="pricesearch" value="2">
                                    <label for="checkbox3">
                                        Từ 100.000 - 500.000 VND
                                    </label>
                                </div>
                                <div class="checkbox checkbox-primary">
                                    <input id="checkbox4" type="checkbox" class="input-lg"
                                           name="pricesearch" value="3">
                                    <label for="checkbox4">
                                        Từ 500.000 - 1.000.000 VND
                                    </label>
                                </div>
                                <div class="checkbox checkbox-primary">
                                    <input id="checkbox6" type="checkbox" class="input-lg"
                                           name="pricesearch" value="4">
                                    <label for="checkbox6">
                                        Trên 1.000.000 VND
                                    </label>
                                </div>
                                <div>
                                    <button type="submit" class="btn btn-success">Lọc sách</button>
                                </div>
                            </div>
                        </form>
                        <h3>Thể loại sách</h3>
                        <form name="action" action="product?action=searchbook&ID_U=${sessionScope.account.idAccount}"
                              method="post">
                            <div>
                                <div class="checkbox checkbox-primary">
                                    <input id="checkbox11" type="checkbox" class="input-lg" value="All"
                                           name="categorysearch">
                                    <label for="checkbox11">
                                        Tất cả
                                    </label>
                                </div>

                                <c:forEach var="Category" items="${categories}">
                                    <div class="checkbox checkbox-primary">
                                        <input id="checkbox11" type="checkbox" class="input-lg"
                                               value="${Category.getCategoryName()}"
                                               name="categorysearch">
                                        <label for="checkbox11"> ${Category.getCategoryName()} </label>
                                    </div>
                                </c:forEach>

                                <input type="hidden" name="action" value="searchbook">
                                <div></div>
                                <div>
                                    <button type="submit" class="btn btn-success">Lọc sách</button>
                                </div>
                            </div>
                        </form>
                </div>
                <div class="block">
                    <h4 class="title">
                        <span class="pull-left"><span class="text">Ngẫu nhiên</span></span>
                        <span class="pull-right">
					<a class="left button" href="#myCarousel" data-slide="prev"></a><a class="right button"
                                                                                       href="#myCarousel"
                                                                                       data-slide="next"></a>
				</span>
                    </h4>
                    <div id="myCarousel" class="carousel slide">
                        <div class="carousel-inner">

                            <c:forEach var="ProductShow" items="${listProductShow}" begin="0" end="0">
                                <div class="active item">
                                    <ul class="thumbnails listing-products">
                                        <li class="span3">
                                            <div class="product-box">
                                                <span class="sale_tag"></span>
                                                <a href="productDetail?ID_Product=<c:out value='${ProductShow.getIdProduct()}' />&ID_U=<c:out value='${ID_U}' />"><img
                                                        alt=""
                                                        src="themes/images/cloth/thebook ${ProductShow.getIdProduct()}.jpg"></a><br/>
                                                <a href="productDetail?ID_Product=<c:out value='${ProductShow.getIdProduct()}' />&ID_U=<c:out value='${ID_U}' />"
                                                   class="title">${ProductShow.getBookTitle()}</a><br/>
                                                <a href="productDetail?ID_Product=<c:out value='${ProductShow.getIdProduct()}' />&ID_U=<c:out value='${ID_U}' />"
                                                   class="category">${ProductShow.getCategoryName()}</a>
                                                <p class="price">${ProductShow.getPrice()}</p>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </c:forEach>
                            <c:forEach var="ProductShow" items="${listProductShow}" begin="1">
                                <div class="item">
                                    <ul class="thumbnails listing-products">
                                        <li class="span3">
                                            <div class="product-box">
                                                <a href="productDetail?ID_Product=<c:out value='${ProductShow.getIdProduct()}' />&ID_U=<c:out value='${ID_U}' />"><img
                                                        alt=""
                                                        src="themes/images/cloth/thebook${ProductShow.getIdProduct()}.jpg"></a><br/>
                                                <a href="productDetail?ID_Product=<c:out value='${ProductShow.getIdProduct()}' />&ID_U=<c:out value='${ID_U}' />"
                                                   class="title">${ProductShow.getBookTitle()}</a><br/>
                                                <a href="productDetail?ID_Product=<c:out value='${ProductShow.getIdProduct()}' />&ID_U=<c:out value='${ID_U}' />"
                                                   class="category">${ProductShow.getCategoryName()}</a>
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

            <script type="text/javascript">
                $("#menu-filter").accordion();
            </script>

    </section>
    <section style="background-color: #857474;" id="footer-bar">
        <div class="row">
            <div class="span3">
                <h4>Điều Hướng</h4>
                <ul class="nav">
                    <li><a href="./home">Trang chủ</a></li>
                    <li><a href="./">Thông tin</a></li>
                    <li><a href="./contact.html">Liên hệ</a></li>
                    <li><a href="./cart.html">Giỏ hàng</a></li>
                    <li><a href="./home?action=login">Đăng nhập</a></li>
                </ul>
            </div>
            <div class="span4">
                <h4>My Account</h4>
                <ul class="nav">
                    <li><a href="/product?action=myAccount">Tài khoản của tôi</a></li>
                    <li><a href="#">Lịch sử đặt hàng</a></li>
                    <!-- <li><a href="#">Làm mới</a></li> -->
                </ul>
            </div>
            <div class="span5">
                <p class="logo"><h4>Nobman</h4></p>
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
        <span>Copyright 2022 bootstrappage template  All right reserved.</span>
    </section>
</div>
<script src="themes/js/common.js"></script>
<script src="themes/js/jquery.flexslider-min.js"></script>
<script type="text/javascript">
    $(function () {
        $(document).ready(function () {
            $('.flexslider').flexslider({
                animation: "fade",
                slideshowSpeed: 4000,
                animationSpeed: 600,
                controlNav: false,
                directionNav: true,
                controlsContainer: ".flex-container" // the container that holds the flexslider
            });
        });
    });
</script>
</body>
</html>