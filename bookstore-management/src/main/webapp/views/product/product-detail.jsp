<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Chi tiết sách</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <!--[if ie]><meta content='IE=8' http-equiv='X-UA-Compatible'/><![endif]-->

    <!-- bootstrap -->
    <link rel="stylesheet" href="bootstrap/css/font-awesome.min.css">
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
    <link href="themes/css/bootstrappage.css" rel="stylesheet"/>

    <!-- global styles -->
    <link rel="stylesheet" type="text/css" href="themes/css/font-awesome.min.css">
    <link href="themes/css/main.css" rel="stylesheet"/>
    <link href="themes/css/jquery.fancybox.css" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" href="themes/css/font-awesome.min.css">
    <!-- <link rel="stylesheet" type="text/css" href="themes/css/font-awesome.min2.css"> -->
    <link rel="stylesheet" type="text/css" href="themes/css/font-awesome.min3.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.10/css/all.css" integrity="sha384-+d0P83n9kaQMCwj8F4RJB66tzIwOKmrdb46+porD/OvrJ+37WqIM7UoBtwHO6Nlg" crossorigin="anonymous">
    <!-- scripts -->
    <script src="themes/js/jquery-1.7.2.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="themes/js/superfish.js"></script>
    <script src="themes/js/jquery.scrolltotop.js"></script>
    <script src="themes/js/jquery.fancybox.js"></script>
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
                    <c:if test="${ID_U!='-1'}">
                        <li><a href="/home?action=register">Tài khoản</a></li>
                    </c:if>
                    <c:if test="${ID_U!='-1'}">
                        <li><a href="./MyCart?ID_U=<c:out value='${ID_U}'/>"> Giỏ hàng </a></li>
                    </c:if>
                    <c:if test="${ID_U=='-1'}">
                        <li><a href="/product?action=login">Đăng nhập</a></li>
                    </c:if>
                    <c:if test="${ID_U=='-1'}">
                        <li><a href="/product?action=register">Đăng kí</a></li>
                    </c:if>
                    <c:if test="${ID_U!='-1'}">
                        <li>
                            <div class="dropdown">
                                <a class="btn btn-secondary dropdown-toggle" href="#" role="button"
                                   id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true"
                                   aria-expanded="false">
                                    <span>${sessionScope.account.username}</span>
                                </a>
                                <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                                    <a href="#"><i class="fa fa-cog"></i>Cài dặt</a>
                                    <a href=""><i class="fa fa-user"></i>Thông tin</a>
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
            <a href="index.html" class="logo pull-left"><h4 class="title">KBOOK </h4></a>
            <nav id="menu" class="pull-right">
                <ul>
                    <li><a href="./displayproduct?ID_U=<c:out value='${ID_U}'/>">Quay về cửa hàng</a>
                </ul>
            </nav>
        </div>
    </section>
    <section class="header_text sub">
        <img class="pageBanner" src="themes/images/carousel/slider_2.jpg" alt="New products" >
        <h4><span>Chi tiết sản phẩm</span></h4>
    </section>
    <section class="main-content">
        <div class="row">
            <div class="span9">
                <div class="row">
                    <div class="span4">
                        <a href="themes/images/cloth/thebook ${ProductShow.getIdProduct()}.jpg" class="thumbnail" data-fancybox-group="group1" title="Description 1"><img alt="" src="themes/images/cloth/thebook ${ProductShowdetail.getIdProduct()}.jpg"></a>

                    </div>
                    <div class="span5">
                        <address>
                            <strong>Tên sách:</strong> <span>${ProductShowdetail.getBookTitle()}</span><br>
                            <strong>Điểm đánh giá:</strong> <span>${ProductShowdetail.getAverageRating()}</span><br>
                            <strong>Số lượng hàng còn lại:</strong> <span>${ProductShowdetail.getQuantity()}</span><br>
                            <strong>Thể Loại:</strong> <span>${ProductShowdetail.getCategoryName()}</span><br>
                            <strong>Lượt xem:</strong> <span>21932</span><br>
                        </address>
                        <h4><strong>Giá: ${ProductShowdetail.getPrice()}</strong></h4>
                    </div>
                    <div class="span5">
                        <c:if test="${ID_U!='-1'}">
                        <form class="form-inline">
                            <p>&nbsp;</p>
                            <label>SL:</label>
                            <input type="number" class="span1" placeholder="1" max = "${ProductShowdetail.getQuantity()}" name ="SL" value = "1">
                            <input type="hidden" name = "ID_Product" value ='${ProductShowdetail.getIdProduct()}'>
                            <input type="hidden" name = "ID_U" value ='${ID_U}'>
                            <input type="hidden" name = "action" value = "addcart">
                            <div>
                                <button class="btn btn-inverse" type="submit">Thêm vào giỏ</button>
                            </div>

                        </form>
                        <div>
                            <button type="button" class="btn btn-success" data-toggle="modal" data-target="#myModal"> Viết đánh giá </button>
                        </div> <br>
                        </c:if>
                        <div>
                            <button type="button" class="btn btn-success" data-toggle="modal" data-target="#myModal2"> Xem đánh giá </button>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="span9">
                        <ul class="nav nav-tabs" id="myTab">
                            <li class="active"><a href="#home">Miêu tả</a></li>
                            <li class=""><a href="#profile">Thông tin sản phẩm</a></li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane active" id="home">${ProductShowdetail.getProductDescription()}</div>
                            <div class="tab-pane" id="profile">
                                <table class="table table-striped shop_attributes">
                                    <tbody>
                                    <tr class="">
                                        <th>Nhà xuất bản</th>
                                        <td>${ProductShowdetail.getPublisher()}</td>
                                    </tr>
                                    <tr class="alt">
                                        <th>Tên tác giả</th>
                                        <td>${ProductShowdetail.getAuthorName()}</td>
                                    </tr>
                                    <tr class="">
                                        <th>Ngày xuất bản</th>
                                        <td>${ProductShowdetail.getPublishDate()}</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                    <div class="span9">
                        <br>
                        <h4 class="title">
                            <span class="pull-left"><span class="text"><strong>Sách</strong> cùng thể loại</span></span>
                            <span class="pull-right">
										<a class="left button" href="#myCarousel-1" data-slide="prev"></a><a class="right button" href="#myCarousel-1" data-slide="next"></a>
									</span>
                        </h4>
                        <div id="myCarousel-1" class="carousel slide">
                            <div class="carousel-inner">
                                <div class="active item">
                                    <ul class="thumbnails listing-products">
                                        <c:forEach var="ProductShow" items="${listPSsameCategory}" begin = "0" end = "2">
                                            <li class="span3">
                                                <div class="product-box">
                                                    <span class="sale_tag"></span>
                                                    <a href="Productdetail?ID_Product=<c:out value='${ProductShow.getIdProduct()}' />&ID_U=<c:out value='${ID_U}' />"><img alt="" src="themes/images/cloth/thebook ${ProductShow.getIdProduct()}.jpg"></a><br/>
                                                    <a href="Productdetail?ID_Product=<c:out value='${ProductShow.getIdProduct()}' />&ID_U=<c:out value='${ID_U}' />" class="title">${ProductShow.getBookTitle()}</a><br/>
                                                    <a href="Productdetail?ID_Product=<c:out value='${ProductShow.getIdProduct()}' />&ID_U=<c:out value='${ID_U}' />" class="category">${ProductShow.getCategoryName()}</a>
                                                    <p class="price">${ProductShow.getPrice()}</p>
                                                </div>
                                            </li>
                                        </c:forEach>
                                    </ul>
                                </div>
                                <div class="item">
                                    <ul class="thumbnails listing-products">
                                        <c:forEach var="ProductShow" items="${listPSsameCategory}" begin = "3" >
                                            <li class="span3">
                                                <div class="product-box">
                                                    <span class="sale_tag"></span>
                                                    <a href="Productdetail?ID_Product=<c:out value='${ProductShow.getIdProduct()}' />&ID_U=<c:out value='${ID_U}' />"><img alt="" src="themes/images/cloth/thebook ${ProductShow.getIdProduct()}.jpg"></a><br/>
                                                    <a href="Productdetail?ID_Product=<c:out value='${ProductShow.getIdProduct()}' />&ID_U=<c:out value='${ID_U}' />" class="title">${ProductShow.getBookTitle()}</a><br/>
                                                    <a href="Productdetail?ID_Product=<c:out value='${ProductShow.getIdProduct()}' />&ID_U=<c:out value='${ID_U}' />" class="category">${ProductShow.getCategoryName()}</a>
                                                    <p class="price">${ProductShow.getPrice()}</p>
                                                </div>
                                            </li>
                                        </c:forEach>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="span9">
                        <br>
                        <h4 class="title">
                            <span class="pull-left"><span class="text"><strong>Sách</strong> cùng tác giả</span></span>
                            <span class="pull-right">
										<a class="left button" href="#myCarousel-1" data-slide="prev"></a><a class="right button" href="#myCarousel-2" data-slide="next"></a>
									</span>
                        </h4>
                        <div id="myCarousel-1" class="carousel slide">
                            <div class="carousel-inner">
                                <div class="active item">
                                    <ul class="thumbnails listing-products">
                                        <c:forEach var="ProductShow" items="${listPSsameAuthor}" begin = "0" end = "2">
                                            <li class="span3">
                                                <div class="product-box">
                                                    <span class="sale_tag"></span>
                                                    <a href="Productdetail?ID_Product=<c:out value='${ProductShow.getIdProduct()}' />&ID_U=<c:out value='${ID_U}' />"><img alt="" src="themes/images/cloth/thebook ${ProductShow.getIdProduct()}.jpg"></a><br/>
                                                    <a href="Productdetail?ID_Product=<c:out value='${ProductShow.getIdProduct()}' />&ID_U=<c:out value='${ID_U}' />" class="title">${ProductShow.getBookTitle()}</a><br/>
                                                    <a href="Productdetail?ID_Product=<c:out value='${ProductShow.getIdProduct()}' />&ID_U=<c:out value='${ID_U}' />" class="category">${ProductShow.getCategoryName()}</a>
                                                    <p class="price">${ProductShow.getPrice()}</p>
                                                </div>
                                            </li>
                                        </c:forEach>
                                    </ul>
                                </div>
                                <div class="item">
                                    <ul class="thumbnails listing-products">
                                        <c:forEach var="ProductShow" items="${listPSsameAuthor}" begin = "3">
                                            <li class="span3">
                                                <div class="product-box">
                                                    <span class="sale_tag"></span>
                                                    <a href="Productdetail?ID_Product=<c:out value='${ProductShow.getIdProduct()}' />&ID_U=<c:out value='${ID_U}' />"><img alt="" src="themes/images/cloth/thebook ${ProductShow.getIdProduct()}.jpg"></a><br/>
                                                    <a href="Productdetail?ID_Product=<c:out value='${ProductShow.getIdProduct()}' />&ID_U=<c:out value='${ID_U}' />" class="title">${ProductShow.getBookTitle()}</a><br/>
                                                    <a href="Productdetail?ID_Product=<c:out value='${ProductShow.getIdProduct()}' />&ID_U=<c:out value='${ID_U}' />" class="category">${ProductShow.getCategoryName()}</a>
                                                    <p class="price">${ProductShow.getPrice()}</p>
                                                </div>
                                            </li>
                                        </c:forEach>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="span3 col">
                <div class="block">
                    <h4 class="title">
                        <span class="pull-left"><span class="text">Ngẫu nhiên</span></span>
                        <span class="pull-right">
									<a class="left button" href="#myCarousel" data-slide="prev"></a><a class="right button" href="#myCarousel" data-slide="next"></a>
								</span>
                    </h4>
                    <div id="myCarousel" class="carousel slide">
                        <div class="carousel-inner">
                            <div class="active item">

                                <ul class="thumbnails listing-products">
                                    <c:forEach var="ProductShow" items="${listProductShow}" begin = "0" end = "0" >
                                        <li class="span3">
                                            <div class="product-box">
                                                <span class="sale_tag"></span>
                                                <a href="Productdetail?ID_Product=<c:out value='${ProductShow.getIdProduct()}' />&ID_U=<c:out value='${ID_U}' />"><img alt="" src="themes/images/cloth/thebook ${ProductShow.getIdProduct()}.jpg"></a><br/>
                                                <a href="Productdetail?ID_Product=<c:out value='${ProductShow.getIdProduct()}' />&ID_U=<c:out value='${ID_U}' />" class="title">${ProductShow.getBookTitle()}</a><br/>
                                                <a href="Productdetail?ID_Product=<c:out value='${ProductShow.getIdProduct()}' />&ID_U=<c:out value='${ID_U}' />" class="category">${ProductShow.getCategoryName()}</a>
                                                <p class="price">${ProductShow.getPrice()}</p>
                                            </div>
                                        </li>
                                    </c:forEach>
                                </ul>

                            </div>
                            <c:forEach var="ProductShow" items="${listProductShow}" begin = "1" >
                                <div class="item">
                                    <ul class="thumbnails listing-products">

                                        <li class="span3">
                                            <div class="product-box">
                                                <span class="sale_tag"></span>
                                                <a href="Productdetail?ID_Product=<c:out value='${ProductShow.getIdProduct()}' />&ID_U=<c:out value='${ID_U}' />"><img alt="" src="themes/images/cloth/thebook ${ProductShow.getIdProduct()}.jpg"></a><br/>
                                                <a href="Productdetail?ID_Product=<c:out value='${ProductShow.getIdProduct()}' />&ID_U=<c:out value='${ID_U}' />" class="title">${ProductShow.getBookTitle()}</a><br/>
                                                <a href="Productdetail?ID_Product=<c:out value='${ProductShow.getIdProduct()}' />&ID_U=<c:out value='${ID_U}' />" class="category">${ProductShow.getCategoryName()}</a>
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
                    <li><a href="./home">Trang chủ</a></li>
                    <li><a href="./">Thông tin</a></li>
                    <li><a href="./contact.html">Liên hệ</a></li>
                    <li><a href="./cart.html">Giỏ hàng</a></li>
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
        <span>Copyright 2013 bootstrappage template  All right reserved.</span>
    </section>

    <div class="modal fade" id="myModal" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Viết đánh giá sản phẩm</h4>
                </div>
                <div class="modal-body">
                    <form action="" method ="POST">
                        <div class="form-group">
                            <label for="comment">Đánh giá sản phẩm:</label>
                            <textarea class="form-control" rows="6" id="review" name ="reviewtext"></textarea>
                        </div>
                        <div class="form-group">
                            <label for="loai">Chấm điểm:</label>
                            <input type="number" min ="1" max ="5" class="form-control" id="star" name ="star">
                        </div>
                        <input type="hidden" name = "action" value = "addrating">
                        <input type = "hidden" name ="ID_U" value = '${ID_U}'>
                        <input type = "hidden" name ="ID_Product" value = '${ID_Product}'>
                        <button type="submit" class="btn btn-default" >Hoàn thành</button>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="myModal2" role="dialog"> <!-- Modal content--><!-- Modal content--><!-- Modal content--><!-- Modal content-->
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Các đánh giá sản phẩm</h4>
                </div>
                <div class="modal-body">
                    <c:forEach var="Rating" items="${listRating}">

                        <div class="form-group">
                            <label for="comment">ID Khách hàng: ${Rating.getID_Customer()}</label>
                        </div>
                        <div class="form-group">
                            <label class="form-control" for="comment">Đánh giá: ${Rating.getRating_star()}</label>
                        </div>
                        <div class="form-group">
                            <label class="form-control" for="loai">Phê bình:</label>
                            <label class="form-control" for="loai">${Rating.getReview_text()}</label>
                        </div>
                        <div>
                            <br>
                            <label class="form-control" for="loai">- - - - - - - - - - - - - - - - - - - - - - -</label>
                            <br>
                        </div>
                    </c:forEach>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="myModal1" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Bạn đã thêm mặt hàng này vào giỏ hàng thành công!</h4>
                </div>
                <div class="modal-body">
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
<script src="themes/js/common.js"></script>
<script>
    $(function () {
        $('#myTab a:first').tab('show');
        $('#myTab a').click(function (e) {
            e.preventDefault();
            $(this).tab('show');
        })
    })
    $(document).ready(function() {
        $('.thumbnail').fancybox({
            openEffect  : 'none',
            closeEffect : 'none'
        });

        $('#myCarousel-2').carousel({
            interval: 2500
        });
    });
</script>
</body>
</html>