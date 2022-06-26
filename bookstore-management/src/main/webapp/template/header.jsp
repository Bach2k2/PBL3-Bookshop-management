<%--
  Created by IntelliJ IDEA.
  User: DE
  Date: 25/6/2022
  Time: 8:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Header</title>
</head>
<body>
<div id="top-bar" class="container">
    <div class="row">
        <div class="span4">
            <form method="POST" class="search_form">
                <div class="input-group">
                    <input type="text" class="search-query form-control input-group" Placeholder="My laptop.">
                    <span class="input-group-btn">
								<button class="btn btn-primary rounded-circle btnpro" type="button" id="btn-search">
									<span class="fa fa-search"></span>
								</button>
							</span>

                </div>
            </form>
        </div>
        <div class="span8">
            <div class="account pull-right">
                <ul class="user-menu">
                    <!--
                    <li><a href="#">Tài khoản</a></li>-->
                    <li><a href="cart.html">Giỏ hàng</a></li>
                    <li><a href="checkout.html">Thanh toán</a></li>
                    <li><a href="register.html">Đăng nhập</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
</body>
</html>
