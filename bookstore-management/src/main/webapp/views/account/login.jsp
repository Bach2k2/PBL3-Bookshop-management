<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link href="<%=request.getContextPath()%>/css/login.css" type="text/css" rel="stylesheet">
</head>
<body>
<div id="login">
    <c:if test="${message!=null}">
        <div class="alert alert-warning" id="error">
                ${message}
        </div>
    </c:if>
    <div class="container">
        <div id="login-row" class="row justify-content-center align-items-center">
            <div id="login-column" class="col-md-6">
                <div id="login-box" class="col-md-12">
                    <form id="login-form" class="form" action="<c:url value='/home'/>" method="post">
                        <h3 class="text-center text-info">Login</h3>
                        <div class="form-group">
                            <label for="username" class="text-info">Tên đăng nhập</label><br>
                            <input type="text" name="username" id="username" class="form-control">
                        </div>
                        <div class="form-group">
                            <label for="password" class="text-info">Mật khẩu:</label><br>
                            <input type="password" name="password" id="password" class="form-control">
                        </div>
                        <div class="form-group">
                            <label for="remember-me" class="text-info"><span>Remember me</span> <span><input id="remember-me" name="remember-me" type="checkbox"></span></label><br>
<%--                            Button Đăng nhập--%>
                            <input type="hidden" id="action" name="action" value="login">
                            <input onclick="showLoginAlert(true)" type="submit" name="submit" id="login-button" class="btn btn-info btn-md" value="Đăng nhập">
                        </div>
                        <div id="register-link" class="text-right">
                            <a href="/home?action=register" class="text-info">Đăng ký tại đây</a>
                        </div>
                        <div id="home-link" class="text-right">
                            <a href="/home" class="text-info">Quay về trang chủ</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<%--Modal--%>
<div class="modal fade" id="modelId" tabindex="-1" role="dialog"
     aria-labelledby="modelTitleId" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Thông báo</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                Đăng nhập thành công
            </div>
            <div class="modal-footer">
                <a type="button" class="btn btn-danger">Close</a>
            </div>
        </div>
    </div>
</div>
<%--<div>--%>
<%--    <div class="Message">--%>
<%--        <div class="Message-icon">--%>
<%--            <i class="fa fa-bell-o"></i>--%>
<%--        </div>--%>
<%--        <div class="Message-body">--%>
<%--            <p>Do you know that you can assign status and relation to a company right in the visit list?</p>--%>
<%--            <button class="Message-button" id="js-showMe">Show me how</button>--%>
<%--            <button class="Message-button js-messageClose">Nah, not interested</button>--%>
<%--        </div>--%>
<%--        <button class="Message-close js-messageClose"><i class="fa fa-times"></i></button>--%>
<%--    </div>--%>
<%--</div>--%>
</body>
<script>
    function closeMessage(el) {
        el.addClass('is-hidden');
    }

    $('.js-messageClose').on('click', function(e) {
        closeMessage($(this).closest('.Message'));
    });

    $('#js-helpMe').on('click', function(e) {
        alert('Help you we will, young padawan');
        closeMessage($(this).closest('.Message'));
    });

    $('#js-authMe').on('click', function(e) {
        alert('Okelidokeli, requesting data transfer.');
        closeMessage($(this).closest('.Message'));
    });

    $('#js-showMe').on('click', function(e) {
        alert("You're off to our help section. See you later!");
        closeMessage($(this).closest('.Message'));
    });

    $(document).ready(function() {
        setTimeout(function() {
            closeMessage($('#js-timer'));
        }, 5000);
    });
</script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/login.js"></script>
</html>
