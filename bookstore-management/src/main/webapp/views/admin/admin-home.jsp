<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <title>dashboard</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="laptop" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- Bootstrap Core CSS -->
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel='stylesheet' type='text/css' />
    <!-- Custom CSS -->
<%--    <c:url value="css/css1/style.css"/>--%>
    <link href='${pageContext.request.contextPath}/css/css1/style.css' rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/css1/morris.css" type="text/css"/>
    <!-- Graph CSS -->
    <link href="${pageContext.request.contextPath}/css/css1/font-awesome.css" rel="stylesheet">
    <!-- jQuery -->
    <script src="${pageContext.request.contextPath}/js/js1/jquery-2.1.4.min.js"></script>
    <!-- //jQuery -->
    <!-- <link href='//fonts.googleapis.com/css?family=Roboto:700,500,300,100italic,100,400' rel='stylesheet' type='text/css'/>
    <link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'> -->
    <!-- lined-icons -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/css1/icon-font.min.css" type='text/css' />

    <!-- tables -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/css1/table-style.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/css1/basictable.css" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/js1/jquery.basictable.min.js"></script>
<style>
    /*
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
*/
    html, body{
        font-family: 'Roboto', sans-serif;
        font-size: 100%;
        overflow-x: hidden;
        background-color: #edecec;
    }
    body a{
        transition:0.5s all;
        -webkit-transition:0.5s all;
        -moz-transition:0.5s all;
        -o-transition:0.5s all;
        -ms-transition:0.5s all;
        background:#011D4A!mportant;
    }
    a:focus, a:active, a:hover ,a.dropdown-toggle{
        outline: none;
        -webkit-transition: all 0.3s;
        -moz-transition: all 0.3s;
        transition: all 0.3s;
        text-decoration:none;
    }
    a {
        background-color:none;
    }
    body p{
        font-family: 'Roboto', sans-serif;
    }
    h1, h2, h3, h4, h5 {
        font-family: 'Montserrat', sans-serif;
    }
    a {
        color: #008DE7;
        font-weight:400;
    }
    a:hover { transition: all 200ms ease-in-out; }

    .page-container {
        min-width: 1260px;
        position: relative;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        width: 100%;
        height: 100%;
        margin: 0px auto;
    }
    .left-content {
        float: right;
        width: 87%;
    }
    a.sidebar-icon:hover{
        color:#1b93e1;
    }
    .page-container.sidebar-collapsed {
        transition: all 100ms linear;
        transition-delay: 300ms;
    }
    li.breadcrumb-item i.fa.fa-angle-right {
        font-size: 25px;
        padding: 0 8px;
        color: #000;
        vertical-align: middle;
    }
    .breadcrumb > li {
        color: #e74c3c ! important;
        font-size: 16px ! important;
        vertical-align: middle ! important;
    }
    .page-container.sidebar-collapsed .left-content {
        float: right;
        width: 97%;
    }
    .page-container.sidebar-collapsed-back {
        transition: all 100ms linear;
    }
    .page-container.sidebar-collapsed-back .left-content {
        transition: all 100ms linear;
        -webkit-transition: all 0.3s ease;
        -moz-transition: all 0.3s ease;
        transition: all 0.3s ease;
        float: right;
        width:87%;
        padding: 0 2em;
    }
    .left-content {
        width:87%;
        padding: 0 2em;
    }
    .page-container.sidebar-collapsed .sidebar-menu {
        width: 65px;
        transition: all 100ms ease-in-out;
        transition-delay: 300ms;
    }
    .page-container.sidebar-collapsed-back .sidebar-menu {
        width: 230px;
        transition: all 100ms ease-in-out;
    }
    .page-container.sidebar-collapsed .sidebar-icon {
        transform: rotate(90deg);
        transition: all 300ms ease-in-out;
        margin-right: 0em;
        margin-top: -8px;
        color: #fff;
        background: #1b93e1;
        border-radius: 0;
    }
    .page-container.sidebar-collapsed-back .sidebar-icon {
        transform: rotate(0deg);
        transition: all 300ms ease-in-out;
    }
    .page-container.sidebar-collapsed .logo {
        padding: 21px 0;
        height: 63px;
        box-sizing: border-box;
        transition: all 100ms ease-in-out;
        transition-delay: 300ms;
    }
    .page-container.sidebar-collapsed #logo {
        opacity: 0;
        transition: all 200ms ease-in-out;
        display: none;
    }
    .page-container.sidebar-collapsed .down {
        display: none;
    }
    .page-container.sidebar-collapsed-back #logo {
        opacity: 1;
        transition: all 200ms ease-in-out;
        transition-delay: 300ms;;
    }
    .page-container.sidebar-collapsed #menu span {
        opacity: 0;
        transition: all 50ms linear;
    }
    .page-container.sidebar-collapsed-back #menu span {
        opacity: 1;
        transition: all 200ms linear;
        transition-delay: 300ms;
    }
    .sidebar-menu {
        position: fixed;
        float: left;
        width: 230px;
        top: 0;
        left: 0;
        bottom: 0;
        background-color:#333333;
        color: #aaabae;
        box-shadow: 0px 0px 10px 0px rgb(58, 41, 31);
        -o-box-shadow: 0px 0px 10px 0px rgb(58, 41, 31);
        -webkit-box-shadow: 0px 0px 10px 0px rgb(58, 41, 31);
        -moz-box-shadow: 0px 0px 10px 0px rgb(58, 41, 31);
        z-index: 999;
    }
    label.col-sm-2.control-label {
        font-size: 16px;
        margin-top: 0px;
    }
    #menu {
        list-style: none;
        margin: 0;
        padding: 0;
        margin-bottom: 20px;
    }
    #menu li {
        position: relative;
        margin: 0;
        border-bottom:1px ridge rgba(255, 255, 255, 0.04);
        padding: 0;
        padding: 0;
    }
    #menu li ul {
        opacity: 0;
        height: 0px;
    }
    #menu li a {
        font-style: normal;
        font-weight: 400;
        position: relative;
        display: block;
        padding: 13px 20px;
        color: #fff;
        white-space: nowrap;
        z-index: 2;
        background-color: #333333;
        font-size:0.9em;
        font-family: 'Roboto', sans-serif;
        border:none;
        border-left: 4px solid #333333;
    }
    #menu li a:hover {
        color: #ffffff;
        background-color:#1b93e1;
        transition: color 250ms ease-in-out, background-color 250ms ease-in-out;
        border-left: 4px solid #4A4A4A;
    }
    #menu li.active > a {
        background-color: #2b303a;
        color: #ffffff;
    }
    #menu ul li {
        background-color: #333333;
    }
    #menu ul {
        list-style-type: none;
        margin: 0;
        padding: 0;
    }
    #menu li ul {
        position: absolute;
        visibility: hidden;
        left: 100%;
        top: -1px;
        background-color: #2b303a;
        box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, 0.5);
        opacity: 0;
        transition: opacity 0.1s linear;
        border-top: 1px solid rgba(69, 74, 84, 0.7);
    }
    #menu li:hover > ul {
        visibility: visible;
        opacity: 1;
    }
    li#menu-mensagens,li#menu-arquivos {
        background-color:#00C6D7!important;
    }
    #menu li li ul {
        right: 100%;
        visibility: hidden;
        top: -1px;
        opacity: 0;
        transition: opacity 0.1s linear;
    }
    #menu li li:hover ul {
        visibility: visible;
        opacity: 1;
    }

    #menu .fa { margin-right: 5px; }

    .logo1 {
        width: 100%;
        padding: 15px 14px 15px;
        box-sizing: border-box;
        background: #1b93e1;
        text-align: center;
    }
    .sidebar-icon {
        margin-top: -2px;
        border: 1px solid #1b93e1;
        text-align: right;
        line-height: 1;
        font-size: 19px;
        padding: 5px 10px;
        color: #1b93e1;
        background: #fff;
        float: none;
        border-radius: 42px;
    }
    ul#menu i {
        font-size: 1.1em;
        margin-right: 6px;
        width: 10%;
        float: left;
        padding-top: 2px;
    }
    ul#menu-academico-sub {
        z-index: 999;
    }
    li#menu-academico{
        z-index: 999;
    }
    .panel-body.ont {
        padding: 14px;
    }
    /*#logo
{
    width: 150px;
    height: 64px;
    vertical-align: middle;
    -webkit-filter: drop-shadow(0px 0px 10px rgba(0,0,0,0.5));
}*/

    .fa-html5 {
        color: #fff;
        margin-left: 50px;
    }
    .menu {
        text-align: left;
    }
    /*----*/
    /*-- status --*/
    .contain {
        width: 100%;
        margin: 0 auto;
    }
    /*--header --*/
    .header-main {
        padding:1em;
        background:#fff;
        box-shadow: 0 1px 1px rgba(0,0,0,.05);
        -o-box-shadow: 0 1px 1px rgba(0,0,0,.05);
        -webkit-box-shadow: 0 1px 1px rgba(0,0,0,.05);
        -moz-box-shadow: 0 1px 1px rgba(0,0,0,.05);
    }
    .w3layouts-right {
        float: left;
        width: 24.25%;
        background: #e74c3c;
        text-align: center;
        padding: 1.3em 1em 0.1em;
        margin: 0 1%;
    }
    .logo-w3-agile h1 {
        margin: 0;
        font-size: 35px;
    }
    .logo-w3-agile h1 a {
        color: #fff;
        text-transform: uppercase;
        display: inline-block;
    }
    .w3layouts-left {
        float: left;
        width: 24.25%;
        background: #ff9501;
        padding: 1em;
    }
    .profile_details.w3l {
        float: right;
    }
    .profile_details {
        float: left;
        width: 24.25%;
        background: #1b93e19e;
        text-align: center;
        padding: 0.3em 1em;
        border-radius: 39px;
        padding-top: 10px;
    }
    .logo-w3-agile {
        background: #a2d200;
        float: left;
        width: 24.25%;
        text-align: center;
        padding: 1em;
        margin-right: 1%;
    }
    .nav > li > a:hover, .nav > li > a:focus {
        background: none !important;
    }
    span.logo-clr{
        color:#fdbb30;
    }
    .page-container.sidebar-collapsed-back #menu span.fa.fa-angle-right{
        position: absolute;
        top: 0px;
        right: 20px;
    }
    /*start search*/
    .w3-search-box {
        float: left;
        width:100%;
        margin-top: 0em;
        position: relative;
        z-index: 1;
        display: inline-block;
        border:2px solid #fff;
    }
    .w3-search-box input[type="text"] {
        outline: none;
        background: #fff;
        width: 88%;
        margin: 0;
        z-index: 10;
        font-size: 0.9em;
        color: #7A7B78;
        padding: 0.5em 0.5em;
        border: none;
        -webkit-appearance: none;
        display: inline-block;
    }
    .w3-search-box input[type="submit"] {
        background: url(../images/search.png)no-repeat;
        width: 20px;
        height: 20px;
        display: inline-block;
        vertical-align: text-top;
        border: none;
        outline: none;
    }
    ::-webkit-input-placeholder{
        color:#7A7B78 !important;
    }
    /*--//search-ends --*/
    /*--- Progress Bar ----*/
    .meter {
        position: relative;
    }
    .meter > span {
        display: block;
        height: 100%;

        position: relative;
        overflow: hidden;
    }
    .meter > span:after, .animate > span > span {
        content: "";
        position: absolute;
        top: 0; left: 0; bottom: 0; right: 0;

        overflow: hidden;
    }

    .animate > span:after {
        display: none;
    }

    @-webkit-keyframes move {
        0% {
            background-position: 0 0;
        }
        100% {
            background-position: 50px 50px;
        }
    }

    @-moz-keyframes move {
        0% {
            background-position: 0 0;
        }
        100% {
            background-position: 50px 50px;
        }
    }

    .red > span {
        background-color: #65CEA7;
    }

    .nostripes > span > span, .nostripes > span:after {
        -webkit-animation: none;
        -moz-animation: none;
        background-image: none;
    }
    /*--- User Panel---*/
    .dropdown-menu {
        box-shadow: 2px 3px 4px rgba(0, 0, 0, .175);
        -webkit-box-shadow: 2px 3px 4px rgba(0, 0, 0, .175);
        -moz-box-shadow: 2px 3px 4px rgba(0, 0, 0, .175);
        border-radius: 0;
    }
    li.dropdown.head-dpdn {
        display: inline-block;
        padding: 0.2em 0;
        float: left;
    }
    li.dropdown.head-dpdn a.dropdown-toggle {
        margin: 1em 1.9em;
    }
    ul.dropdown-menu li {
        margin-left: 0;
        width: 100%;
        padding: 0;
        background: #fff;
    }
    .user-panel-top ul{
        padding-left:0;
    }
    .user-panel-top li{
        float:left;
        margin-left:15px;
        position:relative;
    }
    .user-panel-top li span.digit{
        font-size:11px;
        font-weight:bold;
        color:#FFF;
        background:#e64c65;
        line-height:20px;
        width:20px;
        height:20px;
        border-radius:2em;
        -webkit-border-radius:2em;
        -moz-border-radius:2em;
        -o-border-radius:2em;
        text-align:center;
        display: inline-block;
        position: absolute;
        top: -3px;
        right: -10px;
    }
    .user-panel-top li:first-child{
        margin-left:0;
    }
    .sidebar .nav-second-level li a.active ,.sidebar ul li a.active{
        color: #F2B33F;
    }
    li.active a i, .act a i {
        color: #F2B33F;
    }
    .custom-nav > li.act > a, .custom-nav > li.act > a:hover, .custom-nav > li.act > a:focus {
        background-color: #353f4f;
        color:#8BC34A;
    }
    .user-panel-top li a{
        display: block;
        padding: 5px;
        text-decoration:none;
    }
    li.dropdown.head-dpdn i {
        color: #fff;
        font-size: 30px;
    }
    .user-panel-top li a:hover{
        border-color:rgba(101, 124, 153, 0.93);
    }
    .user-panel-top li a i{
        width:24px;
        height:24px;
        display: block;
        text-align:center;
        line-height:25px;
    }
    .user-panel-top li a i span{
        font-size:15px;
        color:#FFF;
    }
    .user-panel-top li a.user{
        background:#667686;
    }
    .user-panel-top li span.green{
        background:#a88add;
    }
    .user-panel-top li span.red{
        background:#b8c9f1;
    }
    .user-panel-top li span.yellow{
        background:#bdc3c7;
    }
    /***** Messages *************/
    .notification_header{
        background-color:#FAFAFA;
        padding: 10px 15px;
        border-bottom:1px solid rgba(0, 0, 0, 0.05);
        margin-bottom: 8px;
    }
    .notification_header h3{
        color:#6A6A6A;
        font-size:12px;
        font-weight:600;
        margin:0;
    }
    .notification_bottom {
        background-color:rgba(93, 90, 88, 0.07);
        padding: 4px 0;
        text-align: center;
        margin-top: 5px;
    }
    .notification_bottom a {
        color: #6F6F6F;
        font-size: 1em;
    }
    .notification_bottom a:hover {
        color:#6164C1;
    }
    .notification_bottom h3 a{
        color: #717171;
        font-size:12px;
        border-radius:0;
        border:none;
        padding:0;
        text-align:center;
    }
    .notification_bottom h3 a:hover{
        color:#4A4A4A;
        text-decoration:underline;
        background:none;
    }
    .user_img{
        float:left;
        width:19%;
    }
    .user_img img{
        max-width:100%;
        display:block;
        border-radius:2em;
        -webkit-border-radius:2em;
        -moz-border-radius:2em;
        -o-border-radius:2em;
    }
    .notification_desc{
        float:left;
        width:70%;
        margin-left:5%;
    }
    .notification_desc p{
        color:#757575;
        font-size:13px;
        padding:2px 0;
    }
    .wrapper-dropdown-2 .dropdown li a:hover .notification_desc p{
        color:#424242;
    }
    .notification_desc p span{
        color:#979797 !important;
        font-size:11px;
    }
    /*---bages---*/
    .w3layouts-right span.badge {
        font-size: 10px;
        font-weight: bold;
        color: #FFF;
        background: #FC8213;
        line-height: 15px;
        width: 20px;
        height: 20px;
        border-radius: 2em;
        -webkit-border-radius: 2em;
        -moz-border-radius: 2em;
        -o-border-radius: 2em;
        text-align: center;
        display: inline-block;
        position: absolute;
        top: -21%;
        padding: 2px 0 0;
        left: 41%;
    }
    .w3layouts-right span.blue{
        background-color:#337AB7;
    }
    .w3layouts-right span.red{
        background-color:#ef553a;
    }
    .w3layouts-right span.blue1{
        background-color:#68AE00;
    }
    i.icon_1{
        float: left;
        color: #00aced;
        line-height: 2em;
        margin-right: 1em;
    }
    i.icon_2{
        float: left;
        color:#ef553a;
        line-height: 2em;
        margin-right: 1em;
        font-size: 20px;
    }
    i.icon_3{
        float: left;
        color:#9358ac;
        line-height: 2em;
        margin-right: 1em;
        font-size: 20px;
    }
    .avatar_left {
        float: left;
    }
    i.icon_4{
        width: 45px;
        height: 45px;
        background: #F44336;
        float: left;
        color: #fff;
        text-align: center;
        font-size: 1.5em;
        line-height: 44px;
        font-style: normal;
        margin-right: 1em;
    }
    i.icon_5{
        background-color: #3949ab;
    }
    i.icon_6{
        background-color: #03a9f4;
    }
    .blue-text {
        color: #2196F3 !important;
        float:right;
    }
    /*---//bages---*/
    /*--Progress bars--*/
    .progress {
        height: 10px;
        margin: 7px 0;
        overflow: hidden;
        background: #e1e1e1;
        z-index: 1;
        cursor: pointer;
    }
    .task-info .percentage{
        float:right;
        height:inherit;
        line-height:inherit;
    }
    .task-desc{
        font-size:12px;
    }
    .wrapper-dropdown-3 .dropdown li a:hover span.task-desc {
        color:#65cea7;
    }
    .progress .bar {
        z-index: 2;
        height:15px;
        font-size: 12px;
        color: white;
        text-align: center;
        float:left;
        -webkit-box-sizing: content-box;
        -moz-box-sizing: content-box;
        -ms-box-sizing: content-box;
        box-sizing: content-box;
        -webkit-transition: width 0.6s ease;
        -moz-transition: width 0.6s ease;
        -o-transition: width 0.6s ease;
        transition: width 0.6s ease;
    }
    .progress-striped .yellow{
        background:#f0ad4e;
    }
    .progress-striped .green{
        background:#5cb85c;
    }
    .progress-striped .light-blue{
        background:#4F52BA;
    }
    .progress-striped .red{
        background:#d9534f;
    }
    .progress-striped .blue{
        background:#428bca;
    }
    .progress-striped .orange {
        background:#e94e02;
    }
    .progress-striped .bar {
        background-image: -webkit-gradient(linear, 0 100%, 100% 0, color-stop(0.25, rgba(255, 255, 255, 0.15)), color-stop(0.25, transparent), color-stop(0.5, transparent), color-stop(0.5, rgba(255, 255, 255, 0.15)), color-stop(0.75, rgba(255, 255, 255, 0.15)), color-stop(0.75, transparent), to(transparent));
        background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
        background-image: -moz-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
        background-image: -o-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
        background-image: linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
        -webkit-background-size: 40px 40px;
        -moz-background-size: 40px 40px;
        -o-background-size: 40px 40px;
        background-size: 40px 40px;
    }
    .progress.active .bar {
        -webkit-animation: progress-bar-stripes 2s linear infinite;
        -moz-animation: progress-bar-stripes 2s linear infinite;
        -ms-animation: progress-bar-stripes 2s linear infinite;
        -o-animation: progress-bar-stripes 2s linear infinite;
        animation: progress-bar-stripes 2s linear infinite;
    }
    @-webkit-keyframes progress-bar-stripes {
        from {
            background-position: 40px 0;
        }
        to {
            background-position: 0 0;
        }
    }
    @-moz-keyframes progress-bar-stripes {
        from {
            background-position: 40px 0;
        }
        to {
            background-position: 0 0;
        }
    }
    @-ms-keyframes progress-bar-stripes {
        from {
            background-position: 40px 0;
        }
        to {
            background-position: 0 0;
        }
    }
    @-o-keyframes progress-bar-stripes {
        from {
            background-position: 0 0;
        }
        to {
            background-position: 40px 0;
        }
    }
    @keyframes progress-bar-stripes {
        from {
            background-position: 40px 0;
        }
        to {
            background-position: 0 0;
        }
    }
    /*--Progress bars--*/
    /********* profile details **********/
    ul.dropdown-menu.drp-mnu i.fa {
        margin-right: 0.5em;
    }
    ul.dropdown-menu {
        padding: 0;
        min-width: 230px;
        top:101%;
    }
    .dropdown-menu > li > a {
        padding: 3px 15px;
        font-size: 1em;
    }
    .profile_details_drop .fa.fa-angle-up{
        display:none;
    }
    .profile_details_drop.open .fa.fa-angle-up{
        display:block;
        color:#fff ! important;
    }
    .profile_details_drop.open .fa.fa-angle-down{
        display:none;
        color:#fff ! important;
    }
    i.fa.fa-angle-down{
        color:#fff ! important;
    }
    .profile_details_drop a.dropdown-toggle {
        display:block;
        padding:0em 3em 0 1em;
    }
    .profile_img span.prfil-img{
        float:left;
    }
    .user-name{
        float:left;
        margin-top:7px;
        margin-left:11px;
        height:35px;
    }
    .profile_details ul li{
        list-style-type:none;
        position:relative;
    }
    .profile_details li a i.fa {
        position: absolute;
        top: 34%;
        right: 8%;
        color: #1b93e1;
        font-size: 1.6em;
    }

    .profile_details ul li ul.dropdown-menu.drp-mnu {
        padding: 1em;
        min-width: 190px;
        top: 122%;
        left: 6%;
        border-radius: 30px;
        margin-top: 10px;
    }
    ul.dropdown-menu.drp-mnu li {
        list-style-type: none;
        padding: 3px 0;
    }
    .user-name p{
        font-size:1em;
        color:#fff;
        line-height:1em;
        font-weight:700;
    }
    .user-name span {
        font-size: 16px;
        font-style: italic;
        color: #fff;
        font-weight: normal;
        margin-top: .3em;
    }
    .profile_details ul {
        padding: 0px;
    }
    /*--header strip end here-*/
    /*--copyrights start here--*/
    .copyrights {
        padding: 1.5em 0em;
        text-align: center;
        box-shadow: 0 1px 1px rgba(0,0,0,.05);
        -o-box-shadow: 0 1px 1px rgba(0,0,0,.05);
        -webkit-box-shadow: 0 1px 1px rgba(0,0,0,.05);
        -moz-box-shadow: 0 1px 1px rgba(0,0,0,.05);
        background: #fff;
    }
    .copyrights p {
        font-size: 1em;
        color: #696969;
        margin-bottom: 0;
    }
    .copyrights p a{
        color: #1b93e1;
    }
    .copyrights p a:hover{
        color:#696969;
    }
    /*--header --*/
    /*---four-grids-----*/
    .four-agileits {
        background: #ff4a43;
        text-align: center;
        padding: 2em 0;
    }
    .four-agileinfo {
        background: #22beef;
        padding: 2em 0;
        text-align: center;
    }
    .four-w3ls {
        background: #a2d200;
        padding: 2em 0;
        text-align: center;
    }
    .four-wthree {
        background: #8e44ad;
        padding: 2em 0;
        text-align: center;
    }
    .four-grid:nth-child(1) {
        padding-left: 0;
    }
    .four-grid:nth-child(4) {
        padding-right: 0;
    }
    .four-grids {
        margin: 2em 0;
    }
    .four-grid i.glyphicon {
        color: #fff;
        font-size: 32px;
    }
    .four-grid h3 {
        font-size: 20px;
        color: #fff;
        margin: 14px 0;
    }
    .four-grids h4 {
        font-size: 30px;
        color: #fff;
        margin: 0;
    }
    /*---//four-grids-----*/
    .card-body.p-b-20 .list-group {
        margin-bottom: 0;
    }
    img.lg-item-img {
        width: 51px;
        height: 51px;
        border-radius: 50%;
    }
    /*---photoday-section-----*/
    .card {
        background: #fff;
        margin-bottom: 20px;
        box-shadow: 0 1px 1px rgba(0,0,0,.05);
        -o-box-shadow: 0 1px 1px rgba(0,0,0,.05);
        -webkit-box-shadow: 0 1px 1px rgba(0,0,0,.05);
        -moz-box-shadow: 0 1px 1px rgba(0,0,0,.05);
    }
    *, :active, :focus, :hover {
        outline: 0!important;
        -webkit-tap-highlight-color: transparent!important;
    }
    .wthree-crd {
        padding-left: 0;
    }
    .w3-agile-crd {
        padding-right: 0;
    }
    .p-r-20 {
        padding-right: 20px!important;
    }
    .p-l-20 {
        padding-left: 20px!important;
    }
    .m-0 {
        margin: 0!important;
    }
    .widget-report-table h3 {
        line-height: 36px;
        font-size: 24px;
        font-weight: 300;
    }
    .c-teal {
        color: #ff4a43!important
    }
    .f-300 {
        font-weight: 300!important;
    }
    .m-t-20 {
        margin-top: 20px!important;
    }
    .text-right {
        text-align: right;
    }
    .p-15 {
        padding: 15px!important;
    }
    .widget-report-table .table-bordered, .widget-status-table .table-bordered {
        border-top: 0;
    }
    .table-bordered, .table-bordered>tbody>tr>td:last-child, .table-bordered>tbody>tr>th:last-child, .table-bordered>thead>tr>th:last-child {
        border-right: 0;
    }
    .table-bordered, .table-bordered>tbody>tr>td, .table-bordered>tbody>tr>th {
        border-bottom: 0;
        border-left: 0;
    }
    .card-header h3 {
        font-size: 24px;
        margin:0;
    }
    header.widget-header h4 {
        font-size: 24px;
    }
    .table {
        margin-bottom: 0;
    }
    .table-bordered, .table-bordered>tbody>tr>td, .table-bordered>tbody>tr>th, .table-bordered>tfoot>tr>td, .table-bordered>tfoot>tr>th, .table-bordered>thead>tr>td, .table-bordered>thead>tr>th {
        border: 1px solid #F5F5F5;
    }
    .table {
        width: 100%;
        max-width: 100%;
        margin-bottom: 18px;
    }
    pre code, table {
        background-color: transparent;
    }
    table {
        border-collapse: collapse;
        border-spacing: 0;
    }
    .table>caption+thead>tr:first-child>td, .table>caption+thead>tr:first-child>th, .table>colgroup+thead>tr:first-child>td, .table>colgroup+thead>tr:first-child>th, .table>thead:first-child>tr:first-child>td, .table>thead:first-child>tr:first-child>th {
        border-top: 0;
    }
    .table-bordered>thead>tr>th {
        border-left: 0;
    }
    .table>tbody>tr>td, .table>tbody>tr>th, .table>tfoot>tr>td, .table>tfoot>tr>th, .table>thead>tr>td, .table>thead>tr>th {
        padding: 12px;
    }
    .table>thead>tr>th {
        background-color: #fff;
        vertical-align: middle;
        font-weight: 500;
        color: #333;
        border-width: 1px;
    }
    .btn, .m-sidebar header h2, .p-menu>li>a, .popover-title, .table>thead>tr>th {
        text-transform: uppercase;
    }
    .table-bordered>thead>tr>td, .table-bordered>thead>tr>th {
        border-bottom-width: 2px;
    }
    .table-bordered, .table-bordered>tbody>tr>td, .table-bordered>tbody>tr>th, .table-bordered>tfoot>tr>td, .table-bordered>tfoot>tr>th, .table-bordered>thead>tr>td, .table-bordered>thead>tr>th {
        border: 1px solid #F5F5F5;
    }
    .table>thead>tr>th {
        vertical-align: bottom;
        border-bottom: 2px solid #F5F5F5;
    }
    .table>tbody>tr>td, .table>tbody>tr>th, .table>tfoot>tr>td, .table>tfoot>tr>th, .table>thead>tr>td, .table>thead>tr>th {
        padding: 15px;
        line-height: 1.42857143;
        vertical-align: top;
        border-top: 1px solid #F5F5F5;
    }
    *, :active, :focus, :hover {
        outline: 0!important;
        -webkit-tap-highlight-color: transparent!important;
    }
    caption, th {
        text-align: left;
    }
    td, th {
        padding: 0;
    }
    *, a, button, i, input {
        -webkit-font-smoothing: antialiased;
    }
    .list-group .list-group-item {
        border: 0;
        margin: 0;
        padding: 18px 14px;
    }
    .list-group-item:first-child {
        border-top-right-radius: 2px;
        border-top-left-radius: 2px;
    }
    a.list-group-item, button.list-group-item {
        color: #555;
    }
    .list-group-item {
        position: relative;
        display: block;
        padding: 10px 15px;
        margin-bottom: -1px;
        background-color: transparent;
        border: 1px solid #E9E9E9;
    }
    .pull-right {
        float: right!important;
    }
    .agileinfo-cdr {
        padding: 25px 27px;
    }
    .media>.pull-left {
        padding-right: 15px;
    }
    .pull-left {
        float: left!important;
    }
    .widget h4 {
        margin: 0;
        line-height: 100%;
        font-size: 18px;
        font-weight: 400;
    }
    hr {
        margin-top: 18px;
        margin-bottom: 18px;
        border-top: 1px solid #eee;
    }
    .streamline .sl-primary {
        border-left-color: #188ae2;
    }
    .streamline .sl-item {
        position: relative;
        padding-bottom: 12px;
        border-left: 1px solid #ccc;
    }

    .streamline .sl-item .text-muted {
        color: inherit;
        opacity: .6;
    }
    .streamline .sl-item p {
        margin-bottom: 10px;
    }
    .streamline .sl-primary{
        border-left-color: #ff4a43;
    }
    .streamline .sl-danger {
        border-left-color: #22beef;
    }
    .streamline .sl-success {
        border-left-color: #a2d200;
    }
    .streamline .sl-warning {
        border-left-color: #8e44ad;
    }
    .streamline .sl-item:before {
        content: '';
        position: absolute;
        left: -6px;
        top: 0;
        background-color: #ccc;
        width: 12px;
        height: 12px;
        border-radius: 100%;
    }
    .streamline .sl-primary:before, .streamline .sl-primary:last-child:after {
        background-color: #ff4a43;
    }
    .streamline .sl-danger:before, .streamline .sl-danger:last-child:after {
        background-color: #22beef;
    }
    .streamline .sl-success:before, .streamline .sl-success:last-child:after {
        background-color: #a2d200;
    }
    .streamline .sl-warning:before, .streamline .sl-warning:last-child:after {
        background-color: #8e44ad;
    }
    .card .card-body.card-padding {
        padding: 23px 27px;
    }
    .streamline .sl-item .sl-content {
        margin-left: 24px;
    }
    .panel-body .list-group {
        margin-bottom: 0;
    }
    /*---//photoday-section-----*/
    .lg-item-heading {
        color: #000;
        font-weight: 600;
    }
    small.lg-item-text {
        color: #777;
    }
    /*---panel-----*/
    .panel {
        box-shadow: 0px 2px 10px 0 rgba(0, 0, 0, 0.05);
        -moz-box-shadow: 0px 2px 10px 0 rgba(0, 0, 0, 0.05);
        -webkit-box-shadow: 0px 2px 10px 0 rgba(0, 0, 0, 0.05);
        -ms-box-shadow: 0px 2px 10px 0 rgba(0, 0, 0, 0.05);
        transition: all ease 0.5s;
        -moz-transition: all ease 0.5s;
        -webkit-transition: all ease 0.5s;
        -ms-transition: all ease 0.5s;
        position: relative;
        border: 0;
        display: inline-block;
        width: 100%;
        background: rgb(142, 68, 173);
        border-radius: 0;
    }
    .panel-default>.panel-heading {
        color: #ffffff;
        background-color: rgba(255,255,255,0.1);
        font-weight: 400;
        font-size: 15px;
        border-radius: 0;
        border-color: rgba(255,255,255,0.2);
    }
    .panel-body {
        padding: 15px;
    }
    .list-group {
        margin-top: 10px;
        margin-bottom: 10px;
    }
    .list-group-item:first-child {
        border-top-left-radius: 0;
        border-top-right-radius: 0;
    }
    .list-group fa i{
        font-size: 16px;
        margin-right: 15px;
        color: #ffffff;
    }


    a.list-group-item, button.list-group-item {
        color: #2196F3;
    }


    a.list-group-item:hover {
        background-color: #337ab7!important;
    }

    .list-group-item {
        position: relative;
        display: block;
        padding: 10px 15px;
        margin-bottom: -1px;
        background-color: #fff;
        border: 1px solid #ddd;
    }
    .list-group-item {
        margin-bottom: -1px;
        border: 1px solid rgba(255,255,255,0.1);
        line-height: 20px;
        background: rgba(255,255,255,0.1);
    }
    .text-muted {
        color: rgba(255,255,255,0.5);
    }
    a.list-group-item:focus, a.list-group-item:hover, button.list-group-item:focus, button.list-group-item:hover {
        color: #fff;
        text-decoration: none;
        background-color: rgba(255,255,255,0.2);
    }
    .wthree-pan:first-child {
        padding-left: 0;
    }
    /*---//panel-----*/
    svg {
        width: 100%!important;
    }
    .btn-group {
        margin: 1em 0 !important;
    }
    .agileinfo-grap {
        padding: 1em;
        border: 1px solid #e7ebee;
        margin-bottom: 2em;
        background: #fff;
        box-shadow: 0 1px 1px rgba(0,0,0,.05);
        -o-box-shadow: 0 1px 1px rgba(0,0,0,.05);
        -webkit-box-shadow: 0 1px 1px rgba(0,0,0,.05);
        -moz-box-shadow: 0 1px 1px rgba(0,0,0,.05);
    }
    .btn-default:hover, .btn-default:focus, .btn-default:active, .btn-default.active, .open .dropdown-toggle.btn-default, .wizard-cancel:hover, .wizard-cancel:focus, .wizard-cancel:active, .wizard-cancel.active, .wizard-back:hover, .wizard-back:focus, .wizard-back:active, .wizard-back.active {
        background-color: #ff4a43;
        border-color: #ff4a43;
        color: #fff;
    }
    .theme-blue .btn-primary, .theme-blue .btn-default, .theme-blue .btn-info, .theme-blue .btn-success, .theme-blue .btn-warning, .theme-blue .btn-danger, .theme-blue .btn-primary:hover, .theme-blue .btn-default:hover, .theme-blue .btn-info:hover, .theme-blue .btn-success:hover, .theme-blue .btn-warning:hover, .theme-blue .btn-danger:hover {
        color: #fff;
    }
    .btn-default:hover, .btn-default:focus, .btn-default:active, .btn-default.active, .open .dropdown-toggle.btn-default {
        background-color: #ff4a43;
        border-color: #ff4a43;
    }
    header.agileits-box-header.clearfix h3 {
        font-size: 30px;
        font-weight: 400;
        text-transform: uppercase;
        color: #2A2F43;
    }
    /*--inbox--*/
    .inbox-right {
        background-color: #fff;
        padding: 1.8em;
        border: 1px solid #ebeff6;
        border-radius: 4px;
        -webkit-border-radius: 4px;
        -o-border-radius: 4px;
        -moz-border-radius: 4px;
        -ms-border-radius: 4px;
        box-shadow: 0 1px 1px rgba(0,0,0,.05);
        -o-box-shadow: 0 1px 1px rgba(0,0,0,.05);
        -webkit-box-shadow: 0 1px 1px rgba(0,0,0,.05);
        -moz-box-shadow: 0 1px 1px rgba(0,0,0,.05);
    }
    .table-img img{
        border-radius: 100px;
        -webkit-border-radius: 100px;
        -o-border-radius: 100px;
        -moz-border-radius: 100px;
        -ms-border-radius: 100px;
    }
    .table-row td{
        font-size: 1em;
        padding: 15px 8px 15px !important;
        line-height: 1.42857143;
        vertical-align:middle !important;
        border-top: 1px solid #ddd;
    }
    td.table-text h6{
        font-size: 1.2em;
        color:#000;
    }
    td.table-text p{
        font-size:0.9em;
        line-height: 1.5em;
        color:#999;
    }
    td i{
        color:#999;
    }
    td span{
        padding: 4px 7px;
    }
    td span.fam{
        color:#fff;
        font-size: 0.8em;
        padding: 4px 7px;
    }
    td span.fam{
        background:#1b93e1;
        color:#fff;
    }
    td span.ur{
        background: #FFA800;
        color:#fff;
    }
    td span.work{
        background: #ff9501;
        color:#fff;
    }
    td span.mar{
        background: #e74c3c;
        color:#fff;
    }
    .nav > li > a {
        color: #999;
        font-weight: 500;
        padding: 0px 20px 0px 0px;
        font-size: 0.85em;
        border-bottom: 1px solid #E9E9E9;
    }
    .compose h2{
        font-size: 1.2em;
        color: #fff;
        background: #1b93e1;
        text-align: center;
        padding: 10px;
        margin:0;
    }
    .inbox-mail{
        padding: 1em 0;
    }
    .input-group{
        padding-bottom: 1em;
    }

    .float-right {
        float: right;
    }
    .float-left {
        float: left;
    }
    .mail-toolbar {
        padding-bottom: 2em;
    }
    .table {
        margin-bottom: 0;
    }
    .form-control2 {
        border: 1px solid #e0e0e0;
        padding: 5px 8px;
        color: #616161;
        width: 100%;
        font-size: 0.85em;
        font-weight: 300;
        height: 40px;
        -webkit-appearance: none;
        outline: none;
        font-family: 'Muli-Regular';
        background-color: #fff;
        border: 1px solid #ebeff6;
        border-top-left-radius: 4px;
        -webkit-border-top-left-radius: 4px;
        -o-border-top-left-radius: 4px;
        -ms-border-top-left-radius: 4px;
        -moz-border-top-left-radius: 4px;
        border-bottom-left-radius: 4px;
        -webkit-border-bottom-left-radius: 4px;
        -o-border-bottom-left-radius: 4px;
        -ms-border-bottom-left-radius: 4px;
        -moz-border-bottom-left-radius: 4px;
        -webkit-box-shadow: 0 1px 1px rgba(0,0,0,.05);
        box-shadow: 0 1px 1px rgba(0,0,0,.05);
    }
    .input-group-btn button.btn.btn-success{
        line-height: 24px;
        background-color: #FFA800;
        border: 1px solid transparent;
        border-color: #FFA800;
        border-top-right-radius: 4px;
        -webkit-border-top-right-radius: 4px;
        -o-border-top-right-radius: 4px;
        -ms-border-top-right-radius: 4px;
        -moz-border-top-right-radius: 4px;
        border-bottom-right-radius: 4px;
        -webkit-border-bottom-right-radius: 4px;
        -o-border-bottom-right-radius: 4px;
        -ms-border-bottom-right-radius: 4px;
        -moz-border-bottom-right-radius: 4px;
        -webkit-box-shadow: 0 1px 1px rgba(0,0,0,.05);
        box-shadow: 0 1px 1px rgba(0,0,0,.05);
    }
    .nav-sidebar ul li a span{
        color: #fff;
        font-size: 0.8em;
        background:#e74c3c;
        border-radius: 10px;
        width: 25px;
        height: 18px;
        display: inline-block;
        line-height: 1.7em;
        text-align: center;
        float: right;
    }
    .content-box {
        background-color: #fff;
        border: 1px solid #ebeff6;
        border-radius: 4px;
        -webkit-border-radius: 4px;
        -o-border-radius: 4px;
        -moz-border-radius: 4px;
        -ms-border-radius: 4px;
        -webkit-box-shadow: 0 1px 1px rgba(0,0,0,.05);
        box-shadow: 0 1px 1px rgba(0,0,0,.05);
    }
    .content-box ul li{
        list-style:none;
    }
    .content-box ul li a{
        font-size:1em;
        color:#999;
        padding:0.5em 1em;
        display: block;
    }
    .content-box ul li span{
        font-size:1.1em;
        color:#fff;
        padding:0.5em 1em;
        background:#1ABC9C;
        display: block;
        border-top-left-radius: 4px;
        -webkit-border-top-left-radius: 4px;
        -o-border-top-left-radius: 4px;
        -ms-border-top-left-radius: 4px;
        -moz-border-top-left-radius: 4px;
        border-top-right-radius: 4px;
        -webkit-border-top-right-radius: 4px;
        -o-border-top-right-radius: 4px;
        -ms-border-top-right-radius: 4px;
        -moz-border-top-right-radius: 4px;

    }
    .content-box ul li a i{
        margin-right:4%;
    }
    .tabs  li a{
        padding:1em;
    }
    .tabs  li a:hover{
        background:#ff9501 !important;
        color:#fff;
    }

    nav.nav-sidebar {
        margin: 1em 0;
        background: #fff;
        border: 1px solid #ebeff6;
        box-shadow: 0 1px 1px rgba(0,0,0,.05);
        -o-box-shadow: 0 1px 1px rgba(0,0,0,.05);
        -webkit-box-shadow: 0 1px 1px rgba(0,0,0,.05);
        -moz-box-shadow: 0 1px 1px rgba(0,0,0,.05);
    }
    tr.table-row:hover{
        background:#FAFAFA;
    }
    .tab-content {
        padding-right: 0px;
    }
    tr.table-row {
        border-top: 1px solid #F3F3F4;
    }
    .tab-content-in{
        margin:0;
    }
    .nav > li > a i {
        margin-right: 14px;
    }
    .compose.w3layouts {
        padding-left: 0;
    }
    .w3ls_head {
        text-align: center;
        color: #f99104;
        font-size: 36px;
        text-transform: uppercase;
        margin:30px 0;
    }
    .agile3-grids {
        margin-top: 2em;
    }
    /*-- grids --*/
    .mb40 {
        margin-bottom: 40px !important;
    }
    .demo-grid {
        background: #90bad6;
        border: 1px solid #90bad6;
        padding: 10px 0;
    }
    code {
        padding: 0;
        background: none;
        color: #ffffff;
    }
    .mb40:nth-child(9){
        margin-bottom:0 !important;
    }
    .top-grids{
        background-color: #fff;
        padding: 2em;
        border-radius: 0;
        margin: 0;
        box-shadow: 0 1px 1px rgba(0,0,0,.05);
        -o-box-shadow: 0 1px 1px rgba(0,0,0,.05);
        -webkit-box-shadow: 0 1px 1px rgba(0,0,0,.05);
        -moz-box-shadow: 0 1px 1px rgba(0,0,0,.05);
        margin-bottom:2em;
    }
    /*-- //grids --*/
    /*-- buttons --*/
    /*-- color-variations --*/
    .variations-panel {
        padding: 2em;
        border-radius: 0;
        background: #fff;
        margin-bottom: 2em;
        box-shadow: 0 1px 1px rgba(0,0,0,.05);
        -o-box-shadow: 0 1px 1px rgba(0,0,0,.05);
        -webkit-box-shadow: 0 1px 1px rgba(0,0,0,.05);
        -moz-box-shadow: 0 1px 1px rgba(0,0,0,.05);
    }
    .panel-body .col-adjust-8 > .row > div {
        width: 11.1% !important;
        padding-left: 7px;
        padding-right: 7px;
    }
    .panel-title h3,.hover-buttons h2{
        color: #1b93e1;
        font-size: 1.5em;
        margin: 0 0 1em 0;
    }
    .bg-dark,.bg-primary,.bg-success,.bg-info,.bg-warning,.bg-danger,.bg-alert,.bg-system {
        margin-bottom: 1em;
    }
    .w3l-table-info h2,.agile-tables h3 {
        font-size: 28px;
        color: #1b93e1;
    }
    .mb10 {
        margin-bottom: 10px !important;
    }
    .fw600 {
        font-weight: 600 !important;
    }
    .pv20 {
        padding-top: 18px !important;
        padding-bottom: 18px !important;
    }
    .br-b {
        border-bottom: 1px solid #eeeff1 !important;
    }
    .br-lighter {
        border-color: #EEE !important;
    }
    .bg-light {
        background-color: #fafafa;
        color: #666;
    }
    .bg-light.light {
        background-color: #FEFEFE;
    }
    .bg-dark {
        background-color: #2a3342 !important;
        color: #8697b2;
    }
    .text-white {
        color: #fff !important;
    }
    .bg-dark.light {
        background-color: #364155 !important;
    }
    .bg-dark.dark {
        background-color: #1e252f !important;
    }
    .bg-primary {
        background-color: #11a8bb !important;
        color: #a2edf6;
    }
    .bg-primary.light {
        background-color: #14c1d7 !important;
    }
    .bg-primary.dark {
        background-color: #0e8f9f !important;
    }
    .bg-success {
        background-color: #47D178 !important;
        color: #eafaf0;
    }
    .bg-success.light {
        background-color: #5fd78a !important;
    }
    .bg-success.dark {
        background-color: #32c867 !important;
    }
    .bg-info {
        background-color: #47d1af !important;
        color: #eafaf6;
    }
    .bg-info.light {
        background-color: #5fd7ba !important;
    }
    .bg-info.dark {
        background-color: #32c8a3 !important;
    }
    .bg-warning {
        background-color: #ff7444 !important;
        color: #ffffff;
    }
    .bg-warning.light {
        background-color: #ff8b63 !important;
    }
    .bg-warning.dark {
        background-color: #ff5d25 !important;
    }
    .bg-danger {
        background-color: #ee5744 !important;
        color: #ffffff;
    }
    .bg-danger.light {
        background-color: #f17060 !important;
    }
    .bg-danger.dark {
        background-color: #eb3e28 !important;
    }
    .bg-alert {
        background-color: #fdba4b !important;
        color: #ffffff;
    }
    .bg-alert.light {
        background-color: #fdc669 !important;
    }
    .bg-alert.dark {
        background-color: #fdae2d !important;
    }
    .bg-system {
        background-color: #6852b2 !important;
        color: #e3dff1;
    }
    .bg-system.light {
        background-color: #7a67bb !important;
    }
    .bg-system.dark {
        background-color: #5b479f !important;
    }
    /*-- color-variations --*/
    .button-states-top-grid{
        position: relative;
        margin-bottom: 0;
        background-color: #fff;
        padding: 28px 32px;
        border-radius: 0;
        box-shadow: 0 1px 1px rgba(0,0,0,.05);
        -o-box-shadow: 0 1px 1px rgba(0,0,0,.05);
        -webkit-box-shadow: 0 1px 1px rgba(0,0,0,.05);
        -moz-box-shadow: 0 1px 1px rgba(0,0,0,.05);
    }
    .button-sizes{
        position: relative;
        margin-bottom: 0;
        background-color: #fff;
        padding: 28px 32px;
        border-radius: 0;
        box-shadow: 0 1px 1px rgba(0,0,0,.05);
        -o-box-shadow: 0 1px 1px rgba(0,0,0,.05);
        -webkit-box-shadow: 0 1px 1px rgba(0,0,0,.05);
        -moz-box-shadow: 0 1px 1px rgba(0,0,0,.05);
    }
    #content .panel {
        -webkit-box-shadow: 0 2px 0 #e5eaee;
        box-shadow: 0 2px 0 #e5eaee;
        padding: 28px 32px;
        border-radius: 5px;
    }
    .mtn {
        margin-top: 0 !important;
    }
    .panel-heading + .panel-body {
        border-top: 0;
    }
    #content .panel .panel-body {
        border: 0;
        margin-top: 30px;
    }
    #content .panel .panel-heading + .panel-body {
        margin-top: 0px;
    }
    .mb15 {
        margin-bottom: 15px !important;
    }
    .mb20 {
        margin-bottom: 20px !important;
    }
    .bs-component {
        position: relative;
    }
    .btn {
        display: inline-block;
        margin-bottom: 0;
        font-weight: 700;
        text-align: center;
        vertical-align: middle;
        text-transform: uppercase;
        cursor: pointer;
        background-image: none;
        border: 0;
        border-color: rgba(0, 0, 0, 0.07) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.18);
        white-space: nowrap;
        padding: 8px 15px;
        border-radius: 3px;
        letter-spacing: 0.02em;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
    }
    .btn-block {
        display: block;
        width: 100%;
    }
    .btn-dark {
        color: #fff;
        background-color: #2a3342;
    }
    .btn.disabled, .btn[disabled], fieldset[disabled] .btn {
        cursor: not-allowed;
        pointer-events: none;
        opacity: 0.65;
        filter: alpha(opacity=65);
        -webkit-box-shadow: none;
        box-shadow: none;
    }
    .btn-dark.disabled, .btn-dark[disabled], fieldset[disabled] .btn-dark, .btn-dark.disabled:hover, .btn-dark[disabled]:hover, fieldset[disabled] .btn-dark:hover, .btn-dark.disabled:focus, .btn-dark[disabled]:focus, fieldset[disabled] .btn-dark:focus, .btn-dark.disabled:active, .btn-dark[disabled]:active, fieldset[disabled] .btn-dark:active, .btn-dark.disabled.active, .btn-dark[disabled].active, fieldset[disabled] .btn-dark.active {
        background-color: #2a3342;
        border-color: #2a3342;
    }
    .btn-system {
        color: #fff;
        background-color: #6852b2;
    }
    .btn-system:hover, .btn-system:focus, .btn-system:active, .btn-system.active, .open > .dropdown-toggle.btn-system {
        color: #fff;
        background-color: #2a3342;
        border-color: rgba(0, 0, 0, 0.05);
    }
    #source-button {
        position: absolute;
        top: 0;
        right: 0;
        z-index: 100;
        font-weight: 600;
    }
    .btn-dark.btn-dark:hover, .btn-dark.btn-dark:focus, .btn-dark.btn-dark:active, .btn-dark.btn-dark.active {
        background-color: #11a8bb;
    }
    .btn-dark:hover, .btn-dark:focus, .btn-dark:active, .btn-dark.active, .open > .dropdown-toggle.btn-dark {
        color: #fff;
        background-color: #2a3342;
        border-color: rgba(0, 0, 0, 0.05);
    }
    .btn-primary {
        color: #fff;
        background-color: #00bcd4;
    }
    .btn-danger {
        color: #fff;
        background-color: #fcb216;
        border-color: #fcb216;
    }
    .btn-danger:hover, .btn-danger:focus, .btn-danger.focus, .btn-danger:active, .btn-danger.active, .open > .dropdown-toggle.btn-danger {
        color: #fff;
        background-color: #2d2d2d;
        border-color: #2d2d2d;
    }
    .btn-xs, .btn-group-xs > .btn {
        padding: 3px 8px;
        font-size: 11px;
        line-height: 1.5;
        border-radius: 3px;
    }
    .btn-sm, .btn-group-sm > .btn {
        padding: 5px 14px;
        font-size: 11px;
        line-height: 1.5;
        border-radius: 3px;
    }
    .btn-group-lg > .btn, .btn-lg, .btn-group-lg > .btn {
        width: 105px;
        font-size: 1em;
    }
    .btn-primary:hover, .btn-primary:focus, .btn-primary:active, .btn-primary.active, .open > .dropdown-toggle.btn-primary {
        color: #fff;
        background-color: #2a3342;
        border-color: rgba(0, 0, 0, 0.05);
    }
    .w3layouts-map {
        margin-bottom: 1em;
    }
    .agileits-map{
        margin-bottom: 1em;
    }
    /*-- icon-hover-effects --*/
    a.button,a.button2{
        /*display: inline-block;*/
        /*vertical-align: middle;*/
        padding: 1em;
        cursor: pointer;
        background:none;
        text-decoration: none;
        font-size: 1.2em;
        color: #666;
        /* Prevent highlight colour when element is tapped */
        -webkit-tap-highlight-color: rgba(0,0,0,0);
    }
    .hover-buttons {
        margin-bottom: 0;
        background-color: #fff;
        padding: 28px 32px;
        border-radius: 0;
        box-shadow: 0 1px 1px rgba(0,0,0,.05);
        -o-box-shadow: 0 1px 1px rgba(0,0,0,.05);
        -webkit-box-shadow: 0 1px 1px rgba(0,0,0,.05);
        -moz-box-shadow: 0 1px 1px rgba(0,0,0,.05);
    }
    .aligncenter {
        text-align: center;
    }
    .agile-buttons-grids {
        margin-bottom: 2em;
    }
    ul.bt-list li {
        display: inline-block;
        list-style: none;
        width: 32%;
        margin: 2% 0;
    }
    ul.bt-list li a {
        padding: 1em 2.5em;
        color: #fff;
    }
    .col-1 {
        background-color: #399834;
    }
    .col-2 {
        background-color: #c65186;
    }
    .col-3 {
        background-color: #2f72c3;
    }
    .col-4 {
        background-color: #768b82;
    }
    .col-5 {
        background-color: #e84c3d;
    }
    .col-6 {
        background-color: #b147cb;
    }
    .col-7 {
        background-color: #1bbc9b;
    }
    .col-24 {
        background-color: #4c4c4c;
    }
    .col-8 {
        background-color: #739b9d;
    }
    .col-9 {
        background-color: #3598db;
    }
    .col-10 {
        background-color: #27ae61;
    }
    .col-11 {
        background-color: #f98b02;
    }
    .col-12 {
        background-color: #a1a8ae;
    }
    .col-13 {
        background-color: #eca900;
    }

    .col-14 {
        background-color: #9b58b5;
    }
    .col-15 {
        background-color: #44ccf6;
    }
    .col-16 {
        background-color: #7f7f7f;
    }
    .col-17 {
        background-color: #2ecd71;
    }
    .col-18 {
        background-color: #e63f51;
    }
    .col-19 {
        background-color: #b9bf15;
    }
    .col-20 {
        background-color: #399834;
    }
    .col-21 {
        background-color: #c65186;
    }
    .col-22{
        background-color: #2f72c3;
    }
    .col-23{
        background-color: #758f84;
    }
    /* ICONS */
    /* Icon Back */
    .hvr-icon-back {
        display: inline-block;
        vertical-align: middle;
        -webkit-transform: translateZ(0);
        transform: translateZ(0);
        box-shadow: 0 0 1px rgba(0, 0, 0, 0);
        -webkit-backface-visibility: hidden;
        backface-visibility: hidden;
        -moz-osx-font-smoothing: grayscale;
        position: relative;
        padding-left: 2.2em;
        -webkit-transition-duration: 0.1s;
        transition-duration: 0.1s;
    }
    .hvr-icon-back:before {
        content: "\f137";
        position: absolute;
        left: 1em;
        padding: 0 1px;
        font-family: FontAwesome;
        -webkit-transform: translateZ(0);
        transform: translateZ(0);
        -webkit-transition-duration: 0.1s;
        transition-duration: 0.1s;
        -webkit-transition-property: transform;
        transition-property: transform;
        -webkit-transition-timing-function: ease-out;
        transition-timing-function: ease-out;
    }
    .hvr-icon-back:hover:before, .hvr-icon-back:focus:before, .hvr-icon-back:active:before {
        -webkit-transform: translateX(-4px);
        transform: translateX(-4px);
    }

    /* Icon Forward */
    .hvr-icon-forward {
        display: inline-block;
        vertical-align: middle;
        -webkit-transform: translateZ(0);
        transform: translateZ(0);
        box-shadow: 0 0 1px rgba(0, 0, 0, 0);
        -webkit-backface-visibility: hidden;
        backface-visibility: hidden;
        -moz-osx-font-smoothing: grayscale;
        position: relative;
        padding-right: 2.2em;
        -webkit-transition-duration: 0.1s;
        transition-duration: 0.1s;
    }
    .hvr-icon-forward:before {
        content: "\f138";
        position: absolute;
        right: 1em;
        padding: 0 1px;
        font-family: FontAwesome;
        -webkit-transform: translateZ(0);
        transform: translateZ(0);
        -webkit-transition-duration: 0.1s;
        transition-duration: 0.1s;
        -webkit-transition-property: transform;
        transition-property: transform;
        -webkit-transition-timing-function: ease-out;
        transition-timing-function: ease-out;
    }
    .hvr-icon-forward:hover:before, .hvr-icon-forward:focus:before, .hvr-icon-forward:active:before {
        -webkit-transform: translateX(4px);
        transform: translateX(4px);
    }

    /* Icon Down */
    @-webkit-keyframes hvr-icon-down {
        0%,
        50%,
        100% {
            -webkit-transform: translateY(0);
            transform: translateY(0);
        }

        25%,
        75% {
            -webkit-transform: translateY(6px);
            transform: translateY(6px);
        }
    }

    @keyframes hvr-icon-down {
        0%,
        50%,
        100% {
            -webkit-transform: translateY(0);
            transform: translateY(0);
        }

        25%,
        75% {
            -webkit-transform: translateY(6px);
            transform: translateY(6px);
        }
    }

    /* Icon Down */
    .hvr-icon-down {
        display: inline-block;
        vertical-align: middle;
        -webkit-transform: translateZ(0);
        transform: translateZ(0);
        box-shadow: 0 0 1px rgba(0, 0, 0, 0);
        -webkit-backface-visibility: hidden;
        backface-visibility: hidden;
        -moz-osx-font-smoothing: grayscale;
        position: relative;
        padding-right: 2.2em;
    }
    .hvr-icon-down:before {
        content: "\f01a";
        position: absolute;
        right: 1em;
        padding: 0 1px;
        font-family: FontAwesome;
        -webkit-transform: translateZ(0);
        transform: translateZ(0);
    }
    .hvr-icon-down:hover:before, .hvr-icon-down:focus:before, .hvr-icon-down:active:before {
        -webkit-animation-name: hvr-icon-down;
        animation-name: hvr-icon-down;
        -webkit-animation-duration: 0.75s;
        animation-duration: 0.75s;
        -webkit-animation-timing-function: ease-out;
        animation-timing-function: ease-out;
    }

    /* Icon Up */
    @-webkit-keyframes hvr-icon-up {
        0%,
        50%,
        100% {
            -webkit-transform: translateY(0);
            transform: translateY(0);
        }

        25%,
        75% {
            -webkit-transform: translateY(-6px);
            transform: translateY(-6px);
        }
    }

    @keyframes hvr-icon-up {
        0%,
        50%,
        100% {
            -webkit-transform: translateY(0);
            transform: translateY(0);
        }

        25%,
        75% {
            -webkit-transform: translateY(-6px);
            transform: translateY(-6px);
        }
    }

    /* Icon Up */
    .hvr-icon-up {
        display: inline-block;
        vertical-align: middle;
        -webkit-transform: translateZ(0);
        transform: translateZ(0);
        box-shadow: 0 0 1px rgba(0, 0, 0, 0);
        -webkit-backface-visibility: hidden;
        backface-visibility: hidden;
        -moz-osx-font-smoothing: grayscale;
        position: relative;
        padding-right: 2.2em;
    }
    .hvr-icon-up:before {
        content: "\f01b";
        position: absolute;
        right: 1em;
        padding: 0 1px;
        font-family: FontAwesome;
        -webkit-transform: translateZ(0);
        transform: translateZ(0);
    }
    .hvr-icon-up:hover:before, .hvr-icon-up:focus:before, .hvr-icon-up:active:before {
        -webkit-animation-name: hvr-icon-up;
        animation-name: hvr-icon-up;
        -webkit-animation-duration: 0.75s;
        animation-duration: 0.75s;
        -webkit-animation-timing-function: ease-out;
        animation-timing-function: ease-out;
    }

    /* Icon Spin */
    .hvr-icon-spin {
        display: inline-block;
        vertical-align: middle;
        -webkit-transform: translateZ(0);
        transform: translateZ(0);
        box-shadow: 0 0 1px rgba(0, 0, 0, 0);
        -webkit-backface-visibility: hidden;
        backface-visibility: hidden;
        -moz-osx-font-smoothing: grayscale;
        position: relative;
        padding-right: 2.2em;
    }
    .hvr-icon-spin:before {
        content: "\f021";
        position: absolute;
        right: 1em;
        padding: 0 1px;
        font-family: FontAwesome;
        -webkit-transition-duration: 1s;
        transition-duration: 1s;
        -webkit-transition-property: transform;
        transition-property: transform;
        -webkit-transition-timing-function: ease-in-out;
        transition-timing-function: ease-in-out;
    }
    .hvr-icon-spin:hover:before, .hvr-icon-spin:focus:before, .hvr-icon-spin:active:before {
        -webkit-transform: rotate(360deg);
        transform: rotate(360deg);
    }

    /* Icon Drop */
    @-webkit-keyframes hvr-icon-drop {
        0% {
            opacity: 0;
        }

        50% {
            opacity: 0;
            -webkit-transform: translateY(-100%);
            transform: translateY(-100%);
        }

        51%,
        100% {
            opacity: 1;
        }
    }

    @keyframes hvr-icon-drop {
        0% {
            opacity: 0;
        }

        50% {
            opacity: 0;
            -webkit-transform: translateY(-100%);
            transform: translateY(-100%);
        }

        51%,
        100% {
            opacity: 1;
        }
    }

    /* Icon Drop */
    .hvr-icon-drop {
        display: inline-block;
        vertical-align: middle;
        -webkit-transform: translateZ(0);
        transform: translateZ(0);
        box-shadow: 0 0 1px rgba(0, 0, 0, 0);
        -webkit-backface-visibility: hidden;
        backface-visibility: hidden;
        -moz-osx-font-smoothing: grayscale;
        position: relative;
        padding-right: 2.2em;
    }
    .hvr-icon-drop:before {
        content: "\f041";
        position: absolute;
        right: 1em;
        opacity: 1;
        padding: 0 1px;
        font-family: FontAwesome;
        -webkit-transform: translateZ(0);
        transform: translateZ(0);
    }
    .hvr-icon-drop:hover:before, .hvr-icon-drop:focus:before, .hvr-icon-drop:active:before {
        opacity: 0;
        -webkit-transition-duration: 0.3s;
        transition-duration: 0.3s;
        -webkit-animation-name: hvr-icon-drop;
        animation-name: hvr-icon-drop;
        -webkit-animation-duration: 0.5s;
        animation-duration: 0.5s;
        -webkit-animation-delay: 0.3s;
        animation-delay: 0.3s;
        -webkit-animation-fill-mode: forwards;
        animation-fill-mode: forwards;
        -webkit-animation-timing-function: ease-in-out;
        animation-timing-function: ease-in-out;
        -webkit-animation-timing-function: cubic-bezier(0.52, 1.64, 0.37, 0.66);
        animation-timing-function: cubic-bezier(0.52, 1.64, 0.37, 0.66);
    }

    /* Icon Fade */
    .hvr-icon-fade {
        display: inline-block;
        vertical-align: middle;
        -webkit-transform: translateZ(0);
        transform: translateZ(0);
        box-shadow: 0 0 1px rgba(0, 0, 0, 0);
        -webkit-backface-visibility: hidden;
        backface-visibility: hidden;
        -moz-osx-font-smoothing: grayscale;
        position: relative;
        padding-right: 2.2em;
    }
    .hvr-icon-fade:before {
        content: "\f00c";
        position: absolute;
        right: 1em;
        padding: 0 1px;
        font-family: FontAwesome;
        -webkit-transform: translateZ(0);
        transform: translateZ(0);
        -webkit-transition-duration: 0.5s;
        transition-duration: 0.5s;
        -webkit-transition-property: color;
        transition-property: color;
    }
    .hvr-icon-fade:hover:before, .hvr-icon-fade:focus:before, .hvr-icon-fade:active:before {
        color: #0F9E5E;
    }

    /* Icon Float Away */
    @-webkit-keyframes hvr-icon-float-away {
        0% {
            opacity: 1;
        }

        100% {
            opacity: 0;
            -webkit-transform: translateY(-1em);
            transform: translateY(-1em);
        }
    }

    @keyframes hvr-icon-float-away {
        0% {
            opacity: 1;
        }

        100% {
            opacity: 0;
            -webkit-transform: translateY(-1em);
            transform: translateY(-1em);
        }
    }

    /* Icon Float Away */
    .hvr-icon-float-away {
        display: inline-block;
        vertical-align: middle;
        -webkit-transform: translateZ(0);
        transform: translateZ(0);
        box-shadow: 0 0 1px rgba(0, 0, 0, 0);
        -webkit-backface-visibility: hidden;
        backface-visibility: hidden;
        -moz-osx-font-smoothing: grayscale;
        position: relative;
        padding-right: 2.2em;
    }
    .hvr-icon-float-away:before, .hvr-icon-float-away:after {
        content: "\f055";
        position: absolute;
        right: 1em;
        padding: 0 1px;
        font-family: FontAwesome;
    }
    .hvr-icon-float-away:after {
        opacity: 0;
        -webkit-animation-duration: 0.5s;
        animation-duration: 0.5s;
        -webkit-animation-fill-mode: forwards;
        animation-fill-mode: forwards;
    }
    .hvr-icon-float-away:hover:after, .hvr-icon-float-away:focus:after, .hvr-icon-float-away:active:after {
        -webkit-animation-name: hvr-icon-float-away;
        animation-name: hvr-icon-float-away;
        -webkit-animation-timing-function: ease-out;
        animation-timing-function: ease-out;
    }

    /* Icon Sink Away */
    @-webkit-keyframes hvr-icon-sink-away {
        0% {
            opacity: 1;
        }

        100% {
            opacity: 0;
            -webkit-transform: translateY(1em);
            transform: translateY(1em);
        }
    }

    @keyframes hvr-icon-sink-away {
        0% {
            opacity: 1;
        }

        100% {
            opacity: 0;
            -webkit-transform: translateY(1em);
            transform: translateY(1em);
        }
    }

    /* Icon Sink Away */
    .hvr-icon-sink-away {
        display: inline-block;
        vertical-align: middle;
        -webkit-transform: translateZ(0);
        transform: translateZ(0);
        box-shadow: 0 0 1px rgba(0, 0, 0, 0);
        -webkit-backface-visibility: hidden;
        backface-visibility: hidden;
        -moz-osx-font-smoothing: grayscale;
        position: relative;
        padding-right: 2.2em;
    }
    .hvr-icon-sink-away:before, .hvr-icon-sink-away:after {
        content: "\f056";
        position: absolute;
        right: 1em;
        padding: 0 1px;
        font-family: FontAwesome;
        -webkit-transform: translateZ(0);
        transform: translateZ(0);
    }
    .hvr-icon-sink-away:after {
        opacity: 0;
        -webkit-animation-duration: 0.5s;
        animation-duration: 0.5s;
        -webkit-animation-fill-mode: forwards;
        animation-fill-mode: forwards;
    }
    .hvr-icon-sink-away:hover:after, .hvr-icon-sink-away:focus:after, .hvr-icon-sink-away:active:after {
        -webkit-animation-name: hvr-icon-sink-away;
        animation-name: hvr-icon-sink-away;
        -webkit-animation-timing-function: ease-out;
        animation-timing-function: ease-out;
    }

    /* Icon Grow */
    .hvr-icon-grow {
        display: inline-block;
        vertical-align: middle;
        -webkit-transform: translateZ(0);
        transform: translateZ(0);
        box-shadow: 0 0 1px rgba(0, 0, 0, 0);
        -webkit-backface-visibility: hidden;
        backface-visibility: hidden;
        -moz-osx-font-smoothing: grayscale;
        position: relative;
        padding-right: 2.2em;
        -webkit-transition-duration: 0.3s;
        transition-duration: 0.3s;
    }
    .hvr-icon-grow:before {
        content: "\f118";
        position: absolute;
        right: 1em;
        padding: 0 1px;
        font-family: FontAwesome;
        -webkit-transform: translateZ(0);
        transform: translateZ(0);
        -webkit-transition-duration: 0.3s;
        transition-duration: 0.3s;
        -webkit-transition-property: transform;
        transition-property: transform;
        -webkit-transition-timing-function: ease-out;
        transition-timing-function: ease-out;
    }
    .hvr-icon-grow:hover:before, .hvr-icon-grow:focus:before, .hvr-icon-grow:active:before {
        -webkit-transform: scale(1.3) translateZ(0);
        transform: scale(1.3) translateZ(0);
    }

    /* Icon Shrink */
    .hvr-icon-shrink {
        display: inline-block;
        vertical-align: middle;
        -webkit-transform: translateZ(0);
        transform: translateZ(0);
        box-shadow: 0 0 1px rgba(0, 0, 0, 0);
        -webkit-backface-visibility: hidden;
        backface-visibility: hidden;
        -moz-osx-font-smoothing: grayscale;
        position: relative;
        padding-right: 2.2em;
        -webkit-transition-duration: 0.3s;
        transition-duration: 0.3s;
    }
    .hvr-icon-shrink:before {
        content: "\f119";
        position: absolute;
        right: 1em;
        padding: 0 1px;
        font-family: FontAwesome;
        -webkit-transform: translateZ(0);
        transform: translateZ(0);
        -webkit-transition-duration: 0.3s;
        transition-duration: 0.3s;
        -webkit-transition-property: transform;
        transition-property: transform;
        -webkit-transition-timing-function: ease-out;
        transition-timing-function: ease-out;
    }
    .hvr-icon-shrink:hover:before, .hvr-icon-shrink:focus:before, .hvr-icon-shrink:active:before {
        -webkit-transform: scale(0.8);
        transform: scale(0.8);
    }

    /* Icon Pulse */
    @-webkit-keyframes hvr-icon-pulse {
        25% {
            -webkit-transform: scale(1.3);
            transform: scale(1.3);
        }

        75% {
            -webkit-transform: scale(0.8);
            transform: scale(0.8);
        }
    }

    @keyframes hvr-icon-pulse {
        25% {
            -webkit-transform: scale(1.3);
            transform: scale(1.3);
        }

        75% {
            -webkit-transform: scale(0.8);
            transform: scale(0.8);
        }
    }

    .hvr-icon-pulse {
        display: inline-block;
        vertical-align: middle;
        -webkit-transform: translateZ(0);
        transform: translateZ(0);
        box-shadow: 0 0 1px rgba(0, 0, 0, 0);
        -webkit-backface-visibility: hidden;
        backface-visibility: hidden;
        -moz-osx-font-smoothing: grayscale;
        position: relative;
        padding-right: 2.2em;
    }
    .hvr-icon-pulse:before {
        content: "\f015";
        position: absolute;
        right: 1em;
        padding: 0 1px;
        font-family: FontAwesome;
        -webkit-transform: translateZ(0);
        transform: translateZ(0);
        -webkit-transition-timing-function: ease-out;
        transition-timing-function: ease-out;
    }
    .hvr-icon-pulse:hover:before, .hvr-icon-pulse:focus:before, .hvr-icon-pulse:active:before {
        -webkit-animation-name: hvr-icon-pulse;
        animation-name: hvr-icon-pulse;
        -webkit-animation-duration: 1s;
        animation-duration: 1s;
        -webkit-animation-timing-function: linear;
        animation-timing-function: linear;
        -webkit-animation-iteration-count: infinite;
        animation-iteration-count: infinite;
    }

    /* Icon Pulse Grow */
    @-webkit-keyframes hvr-icon-pulse-grow {
        to {
            -webkit-transform: scale(1.3);
            transform: scale(1.3);
        }
    }

    @keyframes hvr-icon-pulse-grow {
        to {
            -webkit-transform: scale(1.3);
            transform: scale(1.3);
        }
    }

    .hvr-icon-pulse-grow {
        display: inline-block;
        vertical-align: middle;
        -webkit-transform: translateZ(0);
        transform: translateZ(0);
        box-shadow: 0 0 1px rgba(0, 0, 0, 0);
        -webkit-backface-visibility: hidden;
        backface-visibility: hidden;
        -moz-osx-font-smoothing: grayscale;
        position: relative;
        padding-right: 2.2em;
    }
    .hvr-icon-pulse-grow:before {
        content: "\f015";
        position: absolute;
        right: 1em;
        padding: 0 1px;
        font-family: FontAwesome;
        -webkit-transform: translateZ(0);
        transform: translateZ(0);
        -webkit-transition-timing-function: ease-out;
        transition-timing-function: ease-out;
    }
    .hvr-icon-pulse-grow:hover:before, .hvr-icon-pulse-grow:focus:before, .hvr-icon-pulse-grow:active:before {
        -webkit-animation-name: hvr-icon-pulse-grow;
        animation-name: hvr-icon-pulse-grow;
        -webkit-animation-duration: 0.3s;
        animation-duration: 0.3s;
        -webkit-animation-timing-function: linear;
        animation-timing-function: linear;
        -webkit-animation-iteration-count: infinite;
        animation-iteration-count: infinite;
        -webkit-animation-direction: alternate;
        animation-direction: alternate;
    }

    /* Icon Pulse Shrink */
    @-webkit-keyframes hvr-icon-pulse-shrink {
        to {
            -webkit-transform: scale(0.8);
            transform: scale(0.8);
        }
    }

    @keyframes hvr-icon-pulse-shrink {
        to {
            -webkit-transform: scale(0.8);
            transform: scale(0.8);
        }
    }

    .hvr-icon-pulse-shrink {
        display: inline-block;
        vertical-align: middle;
        -webkit-transform: translateZ(0);
        transform: translateZ(0);
        box-shadow: 0 0 1px rgba(0, 0, 0, 0);
        -webkit-backface-visibility: hidden;
        backface-visibility: hidden;
        -moz-osx-font-smoothing: grayscale;
        position: relative;
        padding-right: 2.2em;
    }
    .hvr-icon-pulse-shrink:before {
        content: "\f015";
        position: absolute;
        right: 1em;
        padding: 0 1px;
        font-family: FontAwesome;
        -webkit-transform: translateZ(0);
        transform: translateZ(0);
        -webkit-transition-timing-function: ease-out;
        transition-timing-function: ease-out;
    }
    .hvr-icon-pulse-shrink:hover:before, .hvr-icon-pulse-shrink:focus:before, .hvr-icon-pulse-shrink:active:before {
        -webkit-animation-name: hvr-icon-pulse-shrink;
        animation-name: hvr-icon-pulse-shrink;
        -webkit-animation-duration: 0.3s;
        animation-duration: 0.3s;
        -webkit-animation-timing-function: linear;
        animation-timing-function: linear;
        -webkit-animation-iteration-count: infinite;
        animation-iteration-count: infinite;
        -webkit-animation-direction: alternate;
        animation-direction: alternate;
    }

    /* Icon Push */
    @-webkit-keyframes hvr-icon-push {
        50% {
            -webkit-transform: scale(0.5);
            transform: scale(0.5);
        }
    }

    @keyframes hvr-icon-push {
        50% {
            -webkit-transform: scale(0.5);
            transform: scale(0.5);
        }
    }

    .hvr-icon-push {
        display: inline-block;
        vertical-align: middle;
        -webkit-transform: translateZ(0);
        transform: translateZ(0);
        box-shadow: 0 0 1px rgba(0, 0, 0, 0);
        -webkit-backface-visibility: hidden;
        backface-visibility: hidden;
        -moz-osx-font-smoothing: grayscale;
        position: relative;
        padding-right: 2.2em;
        -webkit-transition-duration: 0.3s;
        transition-duration: 0.3s;
    }
    .hvr-icon-push:before {
        content: "\f006";
        position: absolute;
        right: 1em;
        padding: 0 1px;
        font-family: FontAwesome;
        -webkit-transform: translateZ(0);
        transform: translateZ(0);
        -webkit-transition-duration: 0.3s;
        transition-duration: 0.3s;
        -webkit-transition-property: transform;
        transition-property: transform;
        -webkit-transition-timing-function: ease-out;
        transition-timing-function: ease-out;
    }
    .hvr-icon-push:hover:before, .hvr-icon-push:focus:before, .hvr-icon-push:active:before {
        -webkit-animation-name: hvr-icon-push;
        animation-name: hvr-icon-push;
        -webkit-animation-duration: 0.3s;
        animation-duration: 0.3s;
        -webkit-animation-timing-function: linear;
        animation-timing-function: linear;
        -webkit-animation-iteration-count: 1;
        animation-iteration-count: 1;
    }

    /* Icon Pop */
    @-webkit-keyframes hvr-icon-pop {
        50% {
            -webkit-transform: scale(1.5);
            transform: scale(1.5);
        }
    }

    @keyframes hvr-icon-pop {
        50% {
            -webkit-transform: scale(1.5);
            transform: scale(1.5);
        }
    }

    .hvr-icon-pop {
        display: inline-block;
        vertical-align: middle;
        -webkit-transform: translateZ(0);
        transform: translateZ(0);
        box-shadow: 0 0 1px rgba(0, 0, 0, 0);
        -webkit-backface-visibility: hidden;
        backface-visibility: hidden;
        -moz-osx-font-smoothing: grayscale;
        position: relative;
        padding-right: 2.2em;
        -webkit-transition-duration: 0.3s;
        transition-duration: 0.3s;
    }
    .hvr-icon-pop:before {
        content: "\f005";
        position: absolute;
        right: 1em;
        padding: 0 1px;
        font-family: FontAwesome;
        -webkit-transform: translateZ(0);
        transform: translateZ(0);
        -webkit-transition-duration: 0.3s;
        transition-duration: 0.3s;
        -webkit-transition-property: transform;
        transition-property: transform;
        -webkit-transition-timing-function: ease-out;
        transition-timing-function: ease-out;
    }
    .hvr-icon-pop:hover:before, .hvr-icon-pop:focus:before, .hvr-icon-pop:active:before {
        -webkit-animation-name: hvr-icon-pop;
        animation-name: hvr-icon-pop;
        -webkit-animation-duration: 0.3s;
        animation-duration: 0.3s;
        -webkit-animation-timing-function: linear;
        animation-timing-function: linear;
        -webkit-animation-iteration-count: 1;
        animation-iteration-count: 1;
    }

    /* Icon Bounce */
    .hvr-icon-bounce {
        display: inline-block;
        vertical-align: middle;
        -webkit-transform: translateZ(0);
        transform: translateZ(0);
        box-shadow: 0 0 1px rgba(0, 0, 0, 0);
        -webkit-backface-visibility: hidden;
        backface-visibility: hidden;
        -moz-osx-font-smoothing: grayscale;
        position: relative;
        padding-right: 2.2em;
        -webkit-transition-duration: 0.3s;
        transition-duration: 0.3s;
    }
    .hvr-icon-bounce:before {
        content: "\f087";
        position: absolute;
        right: 1em;
        padding: 0 1px;
        font-family: FontAwesome;
        -webkit-transform: translateZ(0);
        transform: translateZ(0);
        -webkit-transition-duration: 0.3s;
        transition-duration: 0.3s;
        -webkit-transition-property: transform;
        transition-property: transform;
        -webkit-transition-timing-function: ease-out;
        transition-timing-function: ease-out;
    }
    .hvr-icon-bounce:hover:before, .hvr-icon-bounce:focus:before, .hvr-icon-bounce:active:before {
        -webkit-transform: scale(1.5);
        transform: scale(1.5);
        -webkit-transition-timing-function: cubic-bezier(0.47, 2.02, 0.31, -0.36);
        transition-timing-function: cubic-bezier(0.47, 2.02, 0.31, -0.36);
    }

    /* Icon Rotate */
    .hvr-icon-rotate {
        display: inline-block;
        vertical-align: middle;
        -webkit-transform: translateZ(0);
        transform: translateZ(0);
        box-shadow: 0 0 1px rgba(0, 0, 0, 0);
        -webkit-backface-visibility: hidden;
        backface-visibility: hidden;
        -moz-osx-font-smoothing: grayscale;
        position: relative;
        padding-right: 2.2em;
        -webkit-transition-duration: 0.3s;
        transition-duration: 0.3s;
    }
    .hvr-icon-rotate:before {
        content: "\f0c6";
        position: absolute;
        right: 1em;
        padding: 0 1px;
        font-family: FontAwesome;
        -webkit-transform: translateZ(0);
        transform: translateZ(0);
        -webkit-transition-duration: 0.3s;
        transition-duration: 0.3s;
        -webkit-transition-property: transform;
        transition-property: transform;
        -webkit-transition-timing-function: ease-out;
        transition-timing-function: ease-out;
    }
    .hvr-icon-rotate:hover:before, .hvr-icon-rotate:focus:before, .hvr-icon-rotate:active:before {
        -webkit-transform: rotate(20deg);
        transform: rotate(20deg);
    }

    /* Icon Grow Rotate */
    .hvr-icon-grow-rotate {
        display: inline-block;
        vertical-align: middle;
        -webkit-transform: translateZ(0);
        transform: translateZ(0);
        box-shadow: 0 0 1px rgba(0, 0, 0, 0);
        -webkit-backface-visibility: hidden;
        backface-visibility: hidden;
        -moz-osx-font-smoothing: grayscale;
        position: relative;
        padding-right: 2.2em;
        -webkit-transition-duration: 0.3s;
        transition-duration: 0.3s;
    }
    .hvr-icon-grow-rotate:before {
        content: "\f095";
        position: absolute;
        right: 1em;
        padding: 0 1px;
        font-family: FontAwesome;
        -webkit-transform: translateZ(0);
        transform: translateZ(0);
        -webkit-transition-duration: 0.3s;
        transition-duration: 0.3s;
        -webkit-transition-property: transform;
        transition-property: transform;
        -webkit-transition-timing-function: ease-out;
        transition-timing-function: ease-out;
    }
    .hvr-icon-grow-rotate:hover:before, .hvr-icon-grow-rotate:focus:before, .hvr-icon-grow-rotate:active:before {
        -webkit-transform: scale(1.5) rotate(12deg);
        transform: scale(1.5) rotate(12deg);
    }

    /* Icon Float */
    .hvr-icon-float {
        display: inline-block;
        vertical-align: middle;
        -webkit-transform: translateZ(0);
        transform: translateZ(0);
        box-shadow: 0 0 1px rgba(0, 0, 0, 0);
        -webkit-backface-visibility: hidden;
        backface-visibility: hidden;
        -moz-osx-font-smoothing: grayscale;
        position: relative;
        padding-right: 2.2em;
        -webkit-transition-duration: 0.3s;
        transition-duration: 0.3s;
    }
    .hvr-icon-float:before {
        content: "\f01b";
        position: absolute;
        right: 1em;
        padding: 0 1px;
        font-family: FontAwesome;
        -webkit-transform: translateZ(0);
        transform: translateZ(0);
        -webkit-transition-duration: 0.3s;
        transition-duration: 0.3s;
        -webkit-transition-property: transform;
        transition-property: transform;
        -webkit-transition-timing-function: ease-out;
        transition-timing-function: ease-out;
    }
    .hvr-icon-float:hover:before, .hvr-icon-float:focus:before, .hvr-icon-float:active:before {
        -webkit-transform: translateY(-4px);
        transform: translateY(-4px);
    }

    /* Icon Sink */
    .hvr-icon-sink {
        display: inline-block;
        vertical-align: middle;
        -webkit-transform: translateZ(0);
        transform: translateZ(0);
        box-shadow: 0 0 1px rgba(0, 0, 0, 0);
        -webkit-backface-visibility: hidden;
        backface-visibility: hidden;
        -moz-osx-font-smoothing: grayscale;
        position: relative;
        padding-right: 2.2em;
        -webkit-transition-duration: 0.3s;
        transition-duration: 0.3s;
    }
    .hvr-icon-sink:before {
        content: "\f01a";
        position: absolute;
        right: 1em;
        padding: 0 1px;
        font-family: FontAwesome;
        -webkit-transform: translateZ(0);
        transform: translateZ(0);
        -webkit-transition-duration: 0.3s;
        transition-duration: 0.3s;
        -webkit-transition-property: transform;
        transition-property: transform;
        -webkit-transition-timing-function: ease-out;
        transition-timing-function: ease-out;
    }
    .hvr-icon-sink:hover:before, .hvr-icon-sink:focus:before, .hvr-icon-sink:active:before {
        -webkit-transform: translateY(4px);
        transform: translateY(4px);
    }

    /* Icon Bob */
    @-webkit-keyframes hvr-icon-bob {
        0% {
            -webkit-transform: translateY(-6px);
            transform: translateY(-6px);
        }

        50% {
            -webkit-transform: translateY(-2px);
            transform: translateY(-2px);
        }

        100% {
            -webkit-transform: translateY(-6px);
            transform: translateY(-6px);
        }
    }

    @keyframes hvr-icon-bob {
        0% {
            -webkit-transform: translateY(-6px);
            transform: translateY(-6px);
        }

        50% {
            -webkit-transform: translateY(-2px);
            transform: translateY(-2px);
        }

        100% {
            -webkit-transform: translateY(-6px);
            transform: translateY(-6px);
        }
    }

    @-webkit-keyframes hvr-icon-bob-float {
        100% {
            -webkit-transform: translateY(-6px);
            transform: translateY(-6px);
        }
    }

    @keyframes hvr-icon-bob-float {
        100% {
            -webkit-transform: translateY(-6px);
            transform: translateY(-6px);
        }
    }

    .hvr-icon-bob {
        display: inline-block;
        vertical-align: middle;
        -webkit-transform: translateZ(0);
        transform: translateZ(0);
        box-shadow: 0 0 1px rgba(0, 0, 0, 0);
        -webkit-backface-visibility: hidden;
        backface-visibility: hidden;
        -moz-osx-font-smoothing: grayscale;
        position: relative;
        padding-right: 2.2em;
        -webkit-transition-duration: 0.3s;
        transition-duration: 0.3s;
    }
    .hvr-icon-bob:before {
        content: "\f077";
        position: absolute;
        right: 1em;
        padding: 0 1px;
        font-family: FontAwesome;
        -webkit-transform: translateZ(0);
        transform: translateZ(0);
    }
    .hvr-icon-bob:hover:before, .hvr-icon-bob:focus:before, .hvr-icon-bob:active:before {
        -webkit-animation-name: hvr-icon-bob-float, hvr-icon-bob;
        animation-name: hvr-icon-bob-float, hvr-icon-bob;
        -webkit-animation-duration: .3s, 1.5s;
        animation-duration: .3s, 1.5s;
        -webkit-animation-delay: 0s, .3s;
        animation-delay: 0s, .3s;
        -webkit-animation-timing-function: ease-out, ease-in-out;
        animation-timing-function: ease-out, ease-in-out;
        -webkit-animation-iteration-count: 1, infinite;
        animation-iteration-count: 1, infinite;
        -webkit-animation-fill-mode: forwards;
        animation-fill-mode: forwards;
        -webkit-animation-direction: normal, alternate;
        animation-direction: normal, alternate;
    }

    /* Icon Hang */
    @-webkit-keyframes hvr-icon-hang {
        0% {
            -webkit-transform: translateY(6px);
            transform: translateY(6px);
        }

        50% {
            -webkit-transform: translateY(2px);
            transform: translateY(2px);
        }

        100% {
            -webkit-transform: translateY(6px);
            transform: translateY(6px);
        }
    }

    @keyframes hvr-icon-hang {
        0% {
            -webkit-transform: translateY(6px);
            transform: translateY(6px);
        }

        50% {
            -webkit-transform: translateY(2px);
            transform: translateY(2px);
        }

        100% {
            -webkit-transform: translateY(6px);
            transform: translateY(6px);
        }
    }

    @-webkit-keyframes hvr-icon-hang-sink {
        100% {
            -webkit-transform: translateY(6px);
            transform: translateY(6px);
        }
    }

    @keyframes hvr-icon-hang-sink {
        100% {
            -webkit-transform: translateY(6px);
            transform: translateY(6px);
        }
    }

    .hvr-icon-hang {
        display: inline-block;
        vertical-align: middle;
        -webkit-transform: translateZ(0);
        transform: translateZ(0);
        box-shadow: 0 0 1px rgba(0, 0, 0, 0);
        -webkit-backface-visibility: hidden;
        backface-visibility: hidden;
        -moz-osx-font-smoothing: grayscale;
        position: relative;
        padding-right: 2.2em;
        -webkit-transition-duration: 0.3s;
        transition-duration: 0.3s;
    }
    .hvr-icon-hang:before {
        content: "\f078";
        position: absolute;
        right: 1em;
        padding: 0 1px;
        font-family: FontAwesome;
        -webkit-transform: translateZ(0);
        transform: translateZ(0);
    }
    .hvr-icon-hang:hover:before, .hvr-icon-hang:focus:before, .hvr-icon-hang:active:before {
        -webkit-animation-name: hvr-icon-hang-sink, hvr-icon-hang;
        animation-name: hvr-icon-hang-sink, hvr-icon-hang;
        -webkit-animation-duration: .3s, 1.5s;
        animation-duration: .3s, 1.5s;
        -webkit-animation-delay: 0s, .3s;
        animation-delay: 0s, .3s;
        -webkit-animation-timing-function: ease-out, ease-in-out;
        animation-timing-function: ease-out, ease-in-out;
        -webkit-animation-iteration-count: 1, infinite;
        animation-iteration-count: 1, infinite;
        -webkit-animation-fill-mode: forwards;
        animation-fill-mode: forwards;
        -webkit-animation-direction: normal, alternate;
        animation-direction: normal, alternate;
    }

    /* Icon Wobble Horizontal */
    @-webkit-keyframes hvr-icon-wobble-horizontal {
        16.65% {
            -webkit-transform: translateX(6px);
            transform: translateX(6px);
        }

        33.3% {
            -webkit-transform: translateX(-5px);
            transform: translateX(-5px);
        }

        49.95% {
            -webkit-transform: translateX(4px);
            transform: translateX(4px);
        }

        66.6% {
            -webkit-transform: translateX(-2px);
            transform: translateX(-2px);
        }

        83.25% {
            -webkit-transform: translateX(1px);
            transform: translateX(1px);
        }

        100% {
            -webkit-transform: translateX(0);
            transform: translateX(0);
        }
    }

    @keyframes hvr-icon-wobble-horizontal {
        16.65% {
            -webkit-transform: translateX(6px);
            transform: translateX(6px);
        }

        33.3% {
            -webkit-transform: translateX(-5px);
            transform: translateX(-5px);
        }

        49.95% {
            -webkit-transform: translateX(4px);
            transform: translateX(4px);
        }

        66.6% {
            -webkit-transform: translateX(-2px);
            transform: translateX(-2px);
        }

        83.25% {
            -webkit-transform: translateX(1px);
            transform: translateX(1px);
        }

        100% {
            -webkit-transform: translateX(0);
            transform: translateX(0);
        }
    }

    .hvr-icon-wobble-horizontal {
        display: inline-block;
        vertical-align: middle;
        -webkit-transform: translateZ(0);
        transform: translateZ(0);
        box-shadow: 0 0 1px rgba(0, 0, 0, 0);
        -webkit-backface-visibility: hidden;
        backface-visibility: hidden;
        -moz-osx-font-smoothing: grayscale;
        position: relative;
        padding-right: 2.2em;
        -webkit-transition-duration: 0.3s;
        transition-duration: 0.3s;
    }
    .hvr-icon-wobble-horizontal:before {
        content: "\f061";
        position: absolute;
        right: 1em;
        padding: 0 1px;
        font-family: FontAwesome;
        -webkit-transform: translateZ(0);
        transform: translateZ(0);
    }
    .hvr-icon-wobble-horizontal:hover:before, .hvr-icon-wobble-horizontal:focus:before, .hvr-icon-wobble-horizontal:active:before {
        -webkit-animation-name: hvr-icon-wobble-horizontal;
        animation-name: hvr-icon-wobble-horizontal;
        -webkit-animation-duration: 1s;
        animation-duration: 1s;
        -webkit-animation-timing-function: ease-in-out;
        animation-timing-function: ease-in-out;
        -webkit-animation-iteration-count: 1;
        animation-iteration-count: 1;
    }

    /* Icon Wobble Vertical */
    @-webkit-keyframes hvr-icon-wobble-vertical {
        16.65% {
            -webkit-transform: translateY(6px);
            transform: translateY(6px);
        }

        33.3% {
            -webkit-transform: translateY(-5px);
            transform: translateY(-5px);
        }

        49.95% {
            -webkit-transform: translateY(4px);
            transform: translateY(4px);
        }

        66.6% {
            -webkit-transform: translateY(-2px);
            transform: translateY(-2px);
        }

        83.25% {
            -webkit-transform: translateY(1px);
            transform: translateY(1px);
        }

        100% {
            -webkit-transform: translateY(0);
            transform: translateY(0);
        }
    }

    @keyframes hvr-icon-wobble-vertical {
        16.65% {
            -webkit-transform: translateY(6px);
            transform: translateY(6px);
        }

        33.3% {
            -webkit-transform: translateY(-5px);
            transform: translateY(-5px);
        }

        49.95% {
            -webkit-transform: translateY(4px);
            transform: translateY(4px);
        }

        66.6% {
            -webkit-transform: translateY(-2px);
            transform: translateY(-2px);
        }

        83.25% {
            -webkit-transform: translateY(1px);
            transform: translateY(1px);
        }

        100% {
            -webkit-transform: translateY(0);
            transform: translateY(0);
        }
    }

    .hvr-icon-wobble-vertical {
        display: inline-block;
        vertical-align: middle;
        -webkit-transform: translateZ(0);
        transform: translateZ(0);
        box-shadow: 0 0 1px rgba(0, 0, 0, 0);
        -webkit-backface-visibility: hidden;
        backface-visibility: hidden;
        -moz-osx-font-smoothing: grayscale;
        position: relative;
        padding-right: 2.2em;
        -webkit-transition-duration: 0.3s;
        transition-duration: 0.3s;
    }
    .hvr-icon-wobble-vertical:before {
        content: "\f062";
        position: absolute;
        right: 1em;
        padding: 0 1px;
        font-family: FontAwesome;
        -webkit-transform: translateZ(0);
        transform: translateZ(0);
    }
    .hvr-icon-wobble-vertical:hover:before, .hvr-icon-wobble-vertical:focus:before, .hvr-icon-wobble-vertical:active:before {
        -webkit-animation-name: hvr-icon-wobble-vertical;
        animation-name: hvr-icon-wobble-vertical;
        -webkit-animation-duration: 1s;
        animation-duration: 1s;
        -webkit-animation-timing-function: ease-in-out;
        animation-timing-function: ease-in-out;
        -webkit-animation-iteration-count: 1;
        animation-iteration-count: 1;
    }

    /* Icon Buzz */
    @-webkit-keyframes hvr-icon-buzz {
        50% {
            -webkit-transform: translateX(3px) rotate(2deg);
            transform: translateX(3px) rotate(2deg);
        }

        100% {
            -webkit-transform: translateX(-3px) rotate(-2deg);
            transform: translateX(-3px) rotate(-2deg);
        }
    }

    @keyframes hvr-icon-buzz {
        50% {
            -webkit-transform: translateX(3px) rotate(2deg);
            transform: translateX(3px) rotate(2deg);
        }

        100% {
            -webkit-transform: translateX(-3px) rotate(-2deg);
            transform: translateX(-3px) rotate(-2deg);
        }
    }

    .hvr-icon-buzz {
        display: inline-block;
        vertical-align: middle;
        -webkit-transform: translateZ(0);
        transform: translateZ(0);
        box-shadow: 0 0 1px rgba(0, 0, 0, 0);
        -webkit-backface-visibility: hidden;
        backface-visibility: hidden;
        -moz-osx-font-smoothing: grayscale;
        position: relative;
        padding-right: 2.2em;
        -webkit-transition-duration: 0.3s;
        transition-duration: 0.3s;
    }
    .hvr-icon-buzz:before {
        content: "\f017";
        position: absolute;
        right: 1em;
        padding: 0 1px;
        font-family: FontAwesome;
        -webkit-transform: translateZ(0);
        transform: translateZ(0);
    }
    .hvr-icon-buzz:hover:before, .hvr-icon-buzz:focus:before, .hvr-icon-buzz:active:before {
        -webkit-animation-name: hvr-icon-buzz;
        animation-name: hvr-icon-buzz;
        -webkit-animation-duration: 0.15s;
        animation-duration: 0.15s;
        -webkit-animation-timing-function: linear;
        animation-timing-function: linear;
        -webkit-animation-iteration-count: infinite;
        animation-iteration-count: infinite;
    }

    /* Icon Buzz Out */
    @-webkit-keyframes hvr-icon-buzz-out {
        10% {
            -webkit-transform: translateX(3px) rotate(2deg);
            transform: translateX(3px) rotate(2deg);
        }

        20% {
            -webkit-transform: translateX(-3px) rotate(-2deg);
            transform: translateX(-3px) rotate(-2deg);
        }

        30% {
            -webkit-transform: translateX(3px) rotate(2deg);
            transform: translateX(3px) rotate(2deg);
        }

        40% {
            -webkit-transform: translateX(-3px) rotate(-2deg);
            transform: translateX(-3px) rotate(-2deg);
        }

        50% {
            -webkit-transform: translateX(2px) rotate(1deg);
            transform: translateX(2px) rotate(1deg);
        }

        60% {
            -webkit-transform: translateX(-2px) rotate(-1deg);
            transform: translateX(-2px) rotate(-1deg);
        }

        70% {
            -webkit-transform: translateX(2px) rotate(1deg);
            transform: translateX(2px) rotate(1deg);
        }

        80% {
            -webkit-transform: translateX(-2px) rotate(-1deg);
            transform: translateX(-2px) rotate(-1deg);
        }

        90% {
            -webkit-transform: translateX(1px) rotate(0);
            transform: translateX(1px) rotate(0);
        }

        100% {
            -webkit-transform: translateX(-1px) rotate(0);
            transform: translateX(-1px) rotate(0);
        }
    }

    @keyframes hvr-icon-buzz-out {
        10% {
            -webkit-transform: translateX(3px) rotate(2deg);
            transform: translateX(3px) rotate(2deg);
        }

        20% {
            -webkit-transform: translateX(-3px) rotate(-2deg);
            transform: translateX(-3px) rotate(-2deg);
        }

        30% {
            -webkit-transform: translateX(3px) rotate(2deg);
            transform: translateX(3px) rotate(2deg);
        }

        40% {
            -webkit-transform: translateX(-3px) rotate(-2deg);
            transform: translateX(-3px) rotate(-2deg);
        }

        50% {
            -webkit-transform: translateX(2px) rotate(1deg);
            transform: translateX(2px) rotate(1deg);
        }

        60% {
            -webkit-transform: translateX(-2px) rotate(-1deg);
            transform: translateX(-2px) rotate(-1deg);
        }

        70% {
            -webkit-transform: translateX(2px) rotate(1deg);
            transform: translateX(2px) rotate(1deg);
        }

        80% {
            -webkit-transform: translateX(-2px) rotate(-1deg);
            transform: translateX(-2px) rotate(-1deg);
        }

        90% {
            -webkit-transform: translateX(1px) rotate(0);
            transform: translateX(1px) rotate(0);
        }

        100% {
            -webkit-transform: translateX(-1px) rotate(0);
            transform: translateX(-1px) rotate(0);
        }
    }

    .hvr-icon-buzz-out {
        display: inline-block;
        vertical-align: middle;
        -webkit-transform: translateZ(0);
        transform: translateZ(0);
        box-shadow: 0 0 1px rgba(0, 0, 0, 0);
        -webkit-backface-visibility: hidden;
        backface-visibility: hidden;
        -moz-osx-font-smoothing: grayscale;
        position: relative;
        padding-right: 2.2em;
        -webkit-transition-duration: 0.3s;
        transition-duration: 0.3s;
    }
    .hvr-icon-buzz-out:before {
        content: "\f023";
        position: absolute;
        right: 1em;
        padding: 0 1px;
        font-family: FontAwesome;
        -webkit-transform: translateZ(0);
        transform: translateZ(0);
    }
    .hvr-icon-buzz-out:hover:before, .hvr-icon-buzz-out:focus:before, .hvr-icon-buzz-out:active:before {
        -webkit-animation-name: hvr-icon-buzz-out;
        animation-name: hvr-icon-buzz-out;
        -webkit-animation-duration: 0.75s;
        animation-duration: 0.75s;
        -webkit-animation-timing-function: linear;
        animation-timing-function: linear;
        -webkit-animation-iteration-count: 1;
        animation-iteration-count: 1;
    }
    /*-- //icon-hover-effects --*/
    /*-- //buttons --*/
    /*-- gallery --*/
    .gallery-grids {
        margin: 0;
        padding: 2em;
        background: #fff;
        margin-bottom: 2em;
        box-shadow: 0 1px 1px rgba(0,0,0,.05);
        -o-box-shadow: 0 1px 1px rgba(0,0,0,.05);
        -webkit-box-shadow: 0 1px 1px rgba(0,0,0,.05);
        -moz-box-shadow: 0 1px 1px rgba(0,0,0,.05);
    }
    .item-desc {
        background-color: rgba(0,0,0,0.5);
        color: white;
        position: absolute;
        text-transform: uppercase;
        text-align: center;
        padding: 1em;
        z-index: 1;
        bottom: 1em;
        left: 1em;
        right: 1em;
    }
    /* Filter controls */
    .simplefilter li, .multifilter li, .sortandshuffle li {
        color: #fff;
        cursor: pointer;
        display: inline-block;
        padding: .3em 0.6em;
        font-size: 1em;
        margin: 0 1.5em 0 1.8em;
        background: none;
        border-radius: 4px;
        position: relative;
    }
    .simplefilter li:before {
        content: '';
        width: 22px;
        height: 1px;
        background-color: #fff;
        position: absolute;
        transform: rotate(-68deg);
        top: 14px;
        left: -37px;
    }
    .simplefilter li:nth-child(1):before {
        height: 0;
    }
    .simplefilter li.active {
        color: #fff;
        background: #fe7200;
    }
    /* Shuffle and sort controls */
    select {
        padding: 1rem 1rem;
        text-transform: uppercase;
    }
    .sortandshuffle .shuffle-btn {
        background-color: #dec800;
    }
    .sortandshuffle .sort-btn {
        background-color: #de0000;
    }
    .sortandshuffle .sort-btn.active {
        background-color: #9d0000;
    }
    /*----*/
    ul.simplefilter {
        text-align: center;
        margin-bottom: 1em;
    }
    .gallery-grids-left-sub,.gallery-grid-sub{
        margin:2.2em 0 0;
    }
    .gallery-grids-left {
        padding-right: 0;
    }
    .gallery-grids-left-subl{
        padding-left:0;
    }
    .gallery-grids-left-subr {
        padding-right: 0;
    }
    .gallery-grids-right1 {
        padding: 0 1em;
        margin:2em 0;
    }
    .gallery-grid img {
        width: 100%;
        cursor: pointer;
    }
    .gallery-grid{
        position:relative;
    }
    .gallery-grid-pos{
        position:absolute;
        top:0%;
        left:5%;
        text-align:center;
        opacity:0;
        background:#000;
        transition:.5s ease-in-out;
        -webkit-transition:.5s ease-in-out;
        -moz-transition:.5s ease-in-out;
        -o-transition:.5s ease-in-out;
        -ms-transition:.5s ease-in-out;
    }
    .gallery-grid:hover .gallery-grid-pos{
        opacity:1;
    }
    .gallery-grid:hover img{
        opacity:.5;
    }
    /*-- //gallery --*/
    .map {
        background: #fff;
        padding: 2em;
        box-shadow: 0 1px 1px rgba(0,0,0,.05);
        -o-box-shadow: 0 1px 1px rgba(0,0,0,.05);
        -webkit-box-shadow: 0 1px 1px rgba(0,0,0,.05);
        -moz-box-shadow: 0 1px 1px rgba(0,0,0,.05);
        margin:2em 0;
    }
    .map iframe{
        width:100%;
        height:400px;
    }
    /*-- faq --*/
    .banner {
        background: #fff;
        display: block;
        padding: 1em;
        border: 1px solid #ebeff6;
        border-color: #ebeff6;
        -webkit-box-shadow: 0 1px 1px rgba(0,0,0,.05);
        box-shadow: 0 1px 1px rgba(0,0,0,.05);
    }
    .banner h2 {
        font-size: 0.9em;
    }
    .banner h2 a {
        color: #00bcd4;
        text-decoration: none;
        padding: 0.3em;
    }
    .banner h2 i {
        color: #000;
        vertical-align: middle;
        padding: 0.3em;
    }
    .banner h2 span {
        color: #000;
        padding: 0.3em;
    }
    .asked {
        padding: 2.5em;
        background: #fff;
        margin: 2em 0;
        border: 1px solid #ebeff6;
        box-shadow: 0 1px 1px rgba(0,0,0,.05);
        -o-box-shadow: 0 1px 1px rgba(0,0,0,.05);
        -webkit-box-shadow: 0 1px 1px rgba(0,0,0,.05);
        -moz-box-shadow: 0 1px 1px rgba(0,0,0,.05);
    }
    .questions h5,.questions h2 {
        color:#1b93e1;
        font-size: 1.3em;
        line-height: 1.6em;
    }
    .questions p {
        font-size: 0.9em;
        color: #999;
        padding: 1em 0;
        line-height: 2em;
    }
    /*-- //faq --*/
    .button-size-grids button.btn.btn-lg.btn-primary.btn-block {
        width:100%;
    }
    /*-- icons --*/
    .codes a {
        color: #999;
    }
    .icon-box {
        padding: 8px 15px;
        background:rgba(149, 149, 149, 0.18);
        margin: 1em 0 1em 0;
        border: 5px solid #ffffff;
        text-align: left;
        -moz-box-sizing: border-box;
        -webkit-box-sizing: border-box;
        box-sizing: border-box;
        font-size: 13px;
        transition: 0.5s all;
        -webkit-transition: 0.5s all;
        -o-transition: 0.5s all;
        -ms-transition: 0.5s all;
        -moz-transition: 0.5s all;
        cursor: pointer;
    }
    .icon-box:hover {
        background: #000;
        transition:0.5s all;
        -webkit-transition:0.5s all;
        -o-transition:0.5s all;
        -ms-transition:0.5s all;
        -moz-transition:0.5s all;
    }
    .icon-box:hover i.fa {
        color:#fff !important;
    }
    .icon-box:hover a.agile-icon {
        color:#fff !important;
    }
    .codes .bs-glyphicons li {
        float: left;
        width: 12.5%;
        height: 115px;
        padding: 10px;
        line-height: 1.4;
        text-align: center;
        font-size: 12px;
        list-style-type: none;
    }
    .codes .bs-glyphicons .glyphicon {
        margin-top: 5px;
        margin-bottom: 10px;
        font-size: 24px;
    }
    .codes .glyphicon {
        position: relative;
        top: 1px;
        display: inline-block;
        font-family: 'Glyphicons Halflings';
        font-style: normal;
        font-weight: 400;
        line-height: 1;
        -webkit-font-smoothing: antialiased;
        -moz-osx-font-smoothing: grayscale;
        color: #777;
    }
    .codes .bs-glyphicons .glyphicon-class {
        display: block;
        text-align: center;
        word-wrap: break-word;
    }
    h3.icon-subheading {
        font-size: 28px;
        color:#1b93e1 !important;
        margin: 30px 0 15px;
    }
    h2.agileits-icons-title,h3.agileits-icons-title {
        text-align: center;
        font-size: 33px;
        color: #e74c3c;
    }
    .icons a {
        color: #999;
    }
    .icon-box i {
        margin-right: 10px !important;
        font-size: 20px !important;
        color: #282a2b !important;
    }
    .bs-glyphicons li {
        float: left;
        width: 18%;
        height: 115px;
        padding: 10px;
        line-height: 1.4;
        text-align: center;
        font-size: 12px;
        list-style-type: none;
        background:rgba(149, 149, 149, 0.18);
        margin: 1%;
    }
    .bs-glyphicons .glyphicon {
        margin-top: 5px;
        margin-bottom: 10px;
        font-size: 24px;
        color: #282a2b;
    }
    .glyphicon {
        position: relative;
        top: 1px;
        display: inline-block;
        font-family: 'Glyphicons Halflings';
        font-style: normal;
        font-weight: 400;
        line-height: 1;
        -webkit-font-smoothing: antialiased;
        -moz-osx-font-smoothing: grayscale;
        color: #777;
    }
    .bs-glyphicons .glyphicon-class {
        display: block;
        text-align: center;
        word-wrap: break-word;
    }
    @media (max-width:991px){
        h2.agileits-icons-title,h3.agileits-icons-title {
            font-size: 28px;
        }
        h3.icon-subheading {
            font-size: 22px;
        }
    }
    @media (max-width:768px){
        h2.agileits-icons-title,h3.agileits-icons-title {
            font-size: 28px;
        }
        h3.icon-subheading {
            font-size: 25px;
        }
        .row {
            margin-right: 0;
            margin-left: 0;
        }
        .icon-box {
            margin: 0;
        }
    }
    @media (max-width: 640px){
        .icon-box {
            float: left;
            width: 50%;
        }
    }
    @media (max-width: 480px){
        .bs-glyphicons li {
            width: 31%;
        }
    }
    @media (max-width: 414px){
        h2.agileits-icons-title,h3.agileits-icons-title {
            font-size: 23px;
        }
        h3.icon-subheading {
            font-size: 18px;
        }
        .bs-glyphicons li {
            width: 31.33%;
        }
    }
    @media (max-width: 384px){
        .icon-box {
            float: none;
            width: 100%;
        }
    }
    /*-- //icons --*/
    /*--Typography--*/
    .well {
        font-weight: 300;
        font-size: 14px;
    }
    .list-group-item {
        font-weight: 300;
        font-size: 14px;
    }
    li.list-group-item1 {
        font-size: 14px;
        font-weight: 300;
    }
    .typo p {
        margin: 0;
        font-size: 14px;
        font-weight: 300;
    }
    .show-grid [class^=col-] {
        background: #fff;
        text-align: center;
        margin-bottom: 10px;
        line-height: 2em;
        border: 10px solid #f0f0f0;
    }
    .show-grid [class*="col-"]:hover {
        background: #e0e0e0;
    }
    .grid_3{
        margin-bottom:2em;
    }
    .xs h3, h3.m_1{
        color:#000;
        font-size:1.7em;
        font-weight:300;
        margin-bottom: 1em;
    }
    .grid_3 p{
        color: #999;
        font-size: 0.85em;
        margin-bottom: 1em;
        font-weight: 300;
    }

    .label {
        font-weight: 300 !important;
        border-radius:4px;
    }
    .grid_5{
        background:none;
        padding:2em 0;
    }
    .grid_5 h3, .grid_5 h2, .grid_5 h1, .grid_5 h4, .grid_5 h5, h3.hdg, h3.bars {
        margin-bottom: 1em;
        color:#1b93e1;
        font-weight: bold;
    }
    .table > thead > tr > th, .table > tbody > tr > th, .table > tfoot > tr > th, .table > thead > tr > td, .table > tbody > tr > td, .table > tfoot > tr > td {
        border-top: none !important;
    }
    .tab-content > .active {
        display: block;
        visibility: visible;
    }
    .pagination > .active > a, .pagination > .active > span, .pagination > .active > a:hover, .pagination > .active > span:hover, .pagination > .active > a:focus, .pagination > .active > span:focus {
        z-index: 0;
    }
    .badge-primary {
        background-color: #03a9f4;
    }
    .badge-success {
        background-color: #8bc34a;
    }
    .badge-warning {
        background-color: #ffc107;
    }
    .badge-danger {
        background-color: #e51c23;
    }
    .grid_3 p{
        line-height: 2em;
        color: #888;
        font-size: 0.9em;
        margin-bottom: 1em;
        font-weight: 300;
    }
    .bs-docs-example {
        margin: 1em 0;
    }
    section#tables  p {
        margin-top: 1em;
    }
    .tab-container .tab-content {
        border-radius: 0 2px 2px 2px;
        border: 1px solid #e0e0e0;
        padding: 16px;
        background-color: #ffffff;
    }
    .table td, .table>tbody>tr>td, .table>tbody>tr>th, .table>tfoot>tr>td, .table>tfoot>tr>th, .table>thead>tr>td, .table>thead>tr>th {
        padding: 15px!important;
    }
    .table > thead > tr > th, .table > tbody > tr > th, .table > tfoot > tr > th, .table > thead > tr > td, .table > tbody > tr > td, .table > tfoot > tr > td {
        font-size: 0.9em;
        color: #999;
        border-top: none !important;
    }
    .tab-content > .active {
        display: block;
        visibility: visible;
    }
    .label {
        font-weight: 300 !important;
    }
    .label {
        padding: 4px 6px;
        border: none;
        text-shadow: none;
    }
    .alert {
        font-size: 0.85em;
    }
    h1.t-button,h2.t-button,h3.t-button,h4.t-button,h5.t-button {
        line-height:2em;
        margin-top:0.5em;
        margin-bottom: 0.5em;
    }
    li.list-group-item1 {
        line-height: 2.5em;
    }
    .input-group {
        margin-bottom: 20px;
    }
    .in-gp-tl{
        padding:0;
    }
    .in-gp-tb{
        padding-right:0;
    }
    .list-group {
        margin-bottom: 48px;
    }
    ol {
        margin-bottom: 44px;
    }
    h2.typoh2{
        margin: 0 0 10px;
    }
    @media (max-width:768px){
        .grid_5 {
            padding: 0 0 1em;
        }
        .grid_3 {
            margin-bottom: 0em;
        }
    }
    @media (max-width:640px){
        h1, .h1, h2, .h2, h3, .h3 {
            margin-top: 0px;
            margin-bottom: 0px;
        }
        .grid_5 h3, .grid_5 h2, .grid_5 h1, .grid_5 h4, .grid_5 h5, h3.hdg, h3.bars {
            margin-bottom: .5em;
        }
        .progress {
            height: 10px;
            margin-bottom: 10px;
        }
        ol.breadcrumb li,.grid_3 p,ul.list-group li,li.list-group-item1 {
            font-size: 14px;
        }
        .breadcrumb {
            margin-bottom: 25px;
        }
        .well {
            font-size: 14px;
            margin-bottom: 10px;
        }
        h2.typoh2 {
            font-size: 1.5em;
        }
        .label {
            font-size: 60%;
        }
        .in-gp-tl {
            padding: 0 1em;
        }
        .in-gp-tb {
            padding-right: 1em;
        }
    }
    @media (max-width:480px){
        .grid_5 h3, .grid_5 h2, .grid_5 h1, .grid_5 h4, .grid_5 h5, h3.hdg, h3.bars {
            font-size: 1.2em;
        }
        .table h1 {
            font-size: 26px;
        }
        .table h2 {
            font-size: 23px;
        }
        .table h3 {
            font-size: 20px;
        }
        .label {
            font-size: 53%;
        }
        .alert,p {
            font-size: 14px;
        }
        .pagination {
            margin: 20px 0 0px;
        }
        .grid_3.grid_4.w3layouts {
            margin-top: 0;
        }
    }
    @media (max-width: 320px){
        .grid_4 {
            margin-top: 18px;
        }
        h3.title {
            font-size: 1.6em;
        }
        .alert, p,ol.breadcrumb li, .grid_3 p,.well, ul.list-group li, li.list-group-item1,a.list-group-item {
            font-size: 13px;
        }
        .alert {
            padding: 10px;
            margin-bottom: 10px;
        }
        ul.pagination li a {
            font-size: 14px;
            padding: 5px 11px;
        }
        .list-group {
            margin-bottom: 10px;
        }
        .well {
            padding: 10px;
        }
        .nav > li > a {
            font-size: 14px;
        }
        table.table.table-striped,.table-bordered,.bs-docs-example {
            display: none;
        }
    }
    .grid_3.grid_4 {
        background: #fff ! important;
        padding: 2em ! important; box-shadow: 0 1px 1px rgba(0,0,0,.05);
        -o-box-shadow: 0 1px 1px rgba(0,0,0,.05);
        -webkit-box-shadow: 0 1px 1px rgba(0,0,0,.05);
        -moz-box-shadow: 0 1px 1px rgba(0,0,0,.05);
    }
    .wthree-typo {
        padding: 3em;
        background: #fff;
        margin-bottom: 2em;
    }
    .grid_3.grid_4.w3layouts {
        padding: 0 ! important;
    }
    /*-- //typography --*/
    .w3ls-high h2 {
        margin: 0;
        line-height: 100%;
        font-size: 20px;
        font-weight: 400;
        margin-bottom: 2em;
        color: #1b93e1;
    }
    h4.title, .hightchat-grid1 h3 {
        margin: 0;
        line-height: 100%;
        font-size: 20px;
        font-weight: 400;
        margin-bottom: 2em;
        color: #1b93e1;
    }
    /*--//charts--*/
    .widget-shadow {
        background-color: #fff;
        box-shadow: 0 1px 1px rgba(0,0,0,.05);
        -o-box-shadow: 0 1px 1px rgba(0,0,0,.05);
        -webkit-box-shadow: 0 1px 1px rgba(0,0,0,.05);
        -moz-box-shadow: 0 1px 1px rgba(0,0,0,.05);
    }
    /*--statistics--*/
    .stats-info.widget {
        padding: 1em;
        background-color: #fff;
    }
    .stats-info ul li {
        margin-bottom: 1em;
        border-bottom: 1px solid #EFE9E9;
        padding-bottom: 10px;
        font-size: 0.9em;
        color: #555;
    }
    .progress.progress-right {
        width: 25%;
        float: right;
        height: 8px;
        margin-bottom: 0;
    }
    .stats-info ul li.last {
        border-bottom: none;
        padding-bottom: 0;
        margin-bottom: 0.5em;
    }
    .stats-info span.pull-right {
        font-size: 0.7em;
        margin-left: 11px;
        line-height: 2em;
    }
    .stats-info.stats-last {
        padding: 1.15em 1em 0.4em;
    }
    .agile-info-stat {
        padding-right: 0;
    }
    .table.stats-table {
        margin-bottom: 0;
    }
    .stats-table span.label{
        font-weight: 500;
    }
    .stats-table h5 {
        color: #4F52BA;
        font-size: 0.9em;
    }
    .stats-table h5.down {
        color: #D81B60;
    }
    .stats-table h5 i.fa {
        font-size: 1.2em;
        font-weight: 800;
        margin-left: 3px;
    }
    .stats-table thead tr th {
        color: #555;
    }
    .stats-table td {
        font-size: 0.9em;
        color: #555;
        padding: 11px !important;
    }
    /*--//statistics--*/
    .hightchat-grid, .hightchat-grid1 {
        padding: 1em;
    }
    .blank-page {
        margin-top: 6em;
    }
    #map, #map1, #map2, #map3 {
        height: 200px !important;
    }
    .grid-form {
        width: 100%;
    }
    .widget_1_box1 {
        padding: 0;
    }
    .login-form, .sign-form {
        margin: 7em auto 0;
    }
    .hight-chat {
        margin-top: 2em;
    }
    .gallery-grid {
        width: 100%;
        padding: 0;
    }
    .jqcandlestick-container {
        width: 100%;
        height: 480px;
    }
    .hightchat-grid,.hightchat-grid1 {
        padding: 2em;
        background: #fff;
        box-shadow: 0 1px 1px rgba(0,0,0,.05);
        -o-box-shadow: 0 1px 1px rgba(0,0,0,.05);
        -webkit-box-shadow: 0 1px 1px rgba(0,0,0,.05);
        -moz-box-shadow: 0 1px 1px rgba(0,0,0,.05);
        border: 1px solid #FFFFFF;
    }
    canvas#canvas {
        width: 100% !important;
        height: 400px !important;
    }
    .w3-agile-chat {
        margin: 2em 0;
    }
    canvas#bar,canvas#line,canvas#pie {
        width: 100% !important;
        height: 300px !important;
    }
    .charts-grids.widget {
        padding: 2em;
        background: #fff;
    }
    .w3layouts-char {
        padding-left: 0;
    }
    .w3l-char {
        padding-right: 0;
    }
    .w3ls-high {
        padding-left: 0;
    }
    .agileits-high {
        padding-right: 0;
    }
    /*--form--*/
    .grid-form {
        margin: 2em 0;
    }
    .grid-form1 {
        background: #fff;
        margin-bottom: 1em;
        padding: 1em;
        border: 1px solid #ebeff6;
        border-radius: 4px;
        -webkit-border-radius: 4px;
        -o-border-radius: 4px;
        -moz-border-radius: 4px;
        -ms-border-radius: 4px;
        -webkit-box-shadow: 0 1px 1px rgba(0,0,0,.05);
        box-shadow: 0 1px 1px rgba(0,0,0,.05);
    }
    .grid-form1:last-child {
        margin-bottom: 0em;
    }
    .grid-form1 h2,.grid-form1 h3{
        color: #1b93e1;
        font-size:2em;
        margin-bottom: 1em;
    }
    .grid-form1 form {
        margin: 1.5em 0;
    }
    .form-control {
        box-shadow: none;
        outline: none;
        border-radius: 0px;
    }
    .form-control:focus {
        border-color: #ccc;
        box-shadow: none;
    }
    .btn {
        border-radius: 0px;
        outline: none;
    }
    .btn-default:active, .btn-default:focus, .btn-default:hover {
        outline: none !important;
    }
    input.form-control.input-lg ,select.form-control.input-lg{
        margin-bottom: 1em;
    }
    input.form-control.input-sm,select.form-control.input-sm {
        margin: 1.5em 0;
    }
    input#disabledTextInput,select#disabledSelect {
        background-color: #FFF;
    }
    .email-list1{
        background-color: #fff;
        padding: 1.8em;
        border: 1px solid #ebeff6;
        border-radius: 4px;
        -webkit-border-radius: 4px;
        -o-border-radius: 4px;
        -moz-border-radius: 4px;
        -ms-border-radius: 4px;
        -webkit-box-shadow: 0 1px 1px rgba(0,0,0,.05);
        box-shadow: 0 1px 1px rgba(0,0,0,.05);
    }
    .form-control1 {
        border: 1px solid #e0e0e0;
        padding: 5px 8px;
        color: #616161;
        width: 100%;
        font-size: 0.85em;
        font-weight: 300;
        height: 40px;
        -webkit-appearance: none;
        outline: none;
        background: none;
        box-shadow:none !important;
    }
    .input-lg {
        border-radius: 0px;
    }
    .panel-footer {
        background: none;
    }
    .input-icon.right > i, .input-icon.right .icon {
        right: 12px;
        float: right;
    }
    .input-icon > i, .input-icon .icon {
        position: absolute;
        display: block;
        margin: 10px 8px;
        line-height: 14px;
        color: #999;
    }
    .input-group {
        position: relative;
        display: table;
        width: 100%;
        border-collapse: separate;
        margin-bottom: 0em;
    }
    .has-success .input-group-addon {
        border-color:#A4E7A5 !important;
    }
    .has-feedback label~.form-control-feedback {
        top: 28px !important;
    }
    .has-success .form-control1 {
        background-color: #f1f8e9;
        border-color: #c5e1a5 !important;
    }
    .has-feedback label~.form-control-feedback {
        top: 28px !important;
    }
    .has-error .form-control1 {
        background-color: #fde0dc;
        border-color: #f69988 !important;
    }
    .checkbox-inline label,.checkbox-inline1 label,.form-group label{
        font-weight:400;
    }
    /*--validation--*/
    .validation-form{
        background: #fff;
        margin-bottom: 1em;
        padding: 1em;
        border: 1px solid #ebeff6;
        border-radius: 4px;
        -webkit-border-radius: 4px;
        -o-border-radius: 4px;
        -moz-border-radius: 4px;
        -ms-border-radius: 4px;
        -webkit-box-shadow: 0 1px 1px rgba(0,0,0,.05);
        box-shadow: 0 1px 1px rgba(0,0,0,.05);
    }
    .validation-system {
        margin: 2em 0;
    }
    .validation-form h2 {
        color: #1abc9c;
        font-size: 1.8em;
        border-bottom: 1px solid rgb(241, 233, 233);
        padding-bottom: 0.3em;
        margin-bottom: 1em;
    }
    /*----*/
    label.control-label {
        color: #000;
        font-size: 0.9em;
        margin: 0;
    }
    .form-group1 input[type="text"],.form-group1 textarea,
    .form-group1 input[type="password"],.form-group1 input[type="date"]{
        border: 1px solid #E9E9E9;
        font-size: 0.9em;
        width: 100%;
        outline: none;
        padding: 0.5em 1em;
        color: #999;
        margin-top: 0.5em;
    }
    .form-group1 textarea{
        min-height: 100px;
    }
    .form-group2 select{
        width: 100%;
        border: 1px solid #E9E9E9;
        font-size: 0.9em;
        width: 100%;
        outline: none;
        padding: 0.5em 1em;
        color: #999;
        margin-top: 0.5em;
    }
    .vali-form {
        padding: 1.5em 0;
    }
    .group-mail {
        padding-bottom: 1.5em;
    }
    .vali-form1{
        padding: 0 0 1.5em;
    }
    .agile-tables {
        background: #fff;
        padding: 0em;
        margin: 2em 0;
    }
    .w3l-calendar-left {
        background: #fff;
        padding: 2em;
        margin: 2em 0;
    }
    /*---errorpage-----*/
    .main {
        background: #3b8fc5;
        min-height: 794px;
    }
    .main p {
        font-weight: 600;
        font-size: 20px;
        text-align: left;
        color: #ffffff;
        line-height: 32px;
        padding-top: 10px;
    }

    .image {
        width: 30%;
        float: left;
        margin-top:40px;
    }
    .image img{
        width:100%;
    }
    .text {
        width: 64%;
        float: left;
        padding: 5em 0em 3em 0em;
    }
    .text a{
        color:#000;
        text-decoration:undrline;
    }
    .text a:hover{
        color:#003b64;
        text-decoration:underline;
    }
    .main h1 {
        font-size: 70px;
        text-align: left;
        margin-bottom: 20px;
        margin-top: 0px;
        color: #ffffff;
        font-weight: 700;
    }
    .agileits_main_grid_right {
        float: right;
        margin: 1.2em 0 0;
    }
    .agileits_main_grid_left {
        float: left;
    }
    .footer {
        padding: 1em 1em;
    }
    .footer p {
        font-size: 17px;
        color:#ffffff;
        letter-spacing: 1px;
        text-align: center;
        margin: 20px 0;
        padding: 0;
    }
    .footer a{
        color:#000000;
        text-decoration:none;
    }
    .footer a:hover{
        text-decoration:underline;
        color:#00337f;
    }
    .wthree {
        background: #000;
        padding: 1em;
    }
    .back a {
        display: block;
        font-size: 1.2em;
        color: #e74c3c;
        text-decoration: none;
        padding-top: 6px;
        text-align: center;
        margin: 2em 0 0;
    }
    .w3l-txt {
        margin: 6.5em 0;
    }
    /*---- responsive-design -----*/
    @media(max-width:1336px){
        .main h1 {
            font-size: 66px;
        }
        .main p {
            font-size: 18px;
        }
    }
    @media(max-width:1280px){
        .main h1 {
            font-size: 62px;
        }
    }
    @media(max-width:1024px){
        .main h1 {
            font-size: 56px;
        }
        .w3l-txt {
            margin: 1em 0;
        }
    }
    @media(max-width:800px){
        .text {
            width: 70%;
            padding: 3em 0em 3em 0em;
        }
        .main h1 {
            font-size: 52px;
        }
        p {
            font-size: 16px;
        }
        .footer {
            padding: 1em 0em;
        }
    }
    @media(max-width:768px){

    }
    @media(max-width:736px){
        .footer p{
            font-size:16px;

        }
        .main h1 {
            font-size: 48px;
        }
    }
    @media(max-width:667px){
        .footer p{
            font-size:15px;
        }
        .main h1 {
            font-size: 43px;
        }
        .text {
            padding: 3em 0em 1em 0em;
        }
    }
    @media(max-width:640px){
        .main h1 {
            font-size: 40px;
        }
        .main p {
            line-height: 26px;
        }
    }
    @media(max-width:600px){
        .main h1 {
            font-size: 37px;
        }
        .footer p{
            font-size:15px;
        }
    }
    @media(max-width:568px){
        .main p{
            font-size:16px;
        }
        .footer p{
            font-size:14px;
        }
        .main h1 {
            font-size: 34px;
        }
        .back a {
            font-size: 1em;
            padding-top: 8px;
        }
    }
    @media(max-width:480px){
        .main h1 {
            font-size: 32px;
        }
        .text {
            padding: 3em 0em 0em 0em;
        }
    }
    @media(max-width:414px){
        .text{
            width:100%;
            float: none;
        }
        .footer p{
            font-size:14px;
        }
        .text {
            padding: 2em 0em 0em 0em;
        }
        .image {
            width: 60%;
            float: none;
            margin: 16px auto;
        }
        .footer {
            padding: 0em 0em;
        }
    }
    @media(max-width:384px){
        .footer p{
            font-size:14px;
            margin: 0px 0 10px;
        }
    }
    @media(max-width:375px){

        .footer p{
            font-size:14px;
        }
    }
    @media(max-width:320px){
        .agileits_main_grid_left h1 {
            font-size: 1.8em;
        }
        .main h1 {
            font-size: 28px;
            margin-bottom:0;
        }
        .main p {
            font-size: 14px;
            line-height:24px;
        }
        .footer p {
            font-size: 14px;
            padding-top: 0px;
        }
        .back a {
            padding-top: 0px;
        }
        .text {
            padding: 1em 0em 0em 0em;
        }
    }
    /*---//errorpage-----*/
    ul.bt-list {
        padding: 0;
    }
    /*---signin-----*/
    .main-wthree{
        background:#3b8fc5;
        min-height:794px;
    }
    span.prfil-img img {
        border-radius: 50%;
        border: 3px solid #fff;
        width: 50px;
        height: 50px;
    }
    .main-wthree h2 {
        font-size: 30px;
        color: #FFF;
        margin-bottom: 2em;
        letter-spacing: 3px;
        text-align:center;
    }
    .main-wthree form span {
        width: 29%;
        float: left;
        background: #e74c3c;
        padding: 10.2px 10px;
        position: relative;
        color: #fff;
        font-size: 15px;
        letter-spacing: 1px;
    }

    .main-wthree form span:after {
        content: '';
        position: absolute;
        width: 0;
        height: 0;
        right: -11px;
        border-top: 6px solid rgba(0, 0, 0, 0);
        border-left: 11px solid #e74c3c;
        border-bottom: 6px solid rgba(0, 0, 0, 0);
        top: 14px;
    }
    .main-wthree input.name {
        width: 71%;
        padding:10px 10px 10px 15px;
        border: none;
        outline: none;
        font-size: 15px;
        letter-spacing: 1px;
        margin-bottom: 35px;
        float:left;
    }

    .main-wthree input.password {
        width: 71%;
        padding:10px 10px 10px 15px;
        border: none;
        outline: none;
        font-size: 15px;
        letter-spacing: 1px;
        margin-bottom: 35px;
        float:left;
    }
    .rem-for-agile{
        width:50%;
        float:left;
        text-align:left;
        font-size:13px;
        color:rgb(238, 223, 179);
    }
    .rem-for-agile a{
        color:rgb(238, 223, 179);
        margin-top:3px;
        display:inline-block;
        padding-left:18px;
    }
    .rem-for-agile a:hover{
        color: #fff;
    }
    .main-wthree input[type="checkbox"] {
        margin: 10px 5px 0px 0px;
        vertical-align: sub;
    }
    .login-w3 {
        width: 50%;
        float: right;
        text-align: right;
    }
    .main-wthree input[type="submit"]{
        background-color:#005377;
        color:#fff;
        padding:11px;
        outline: none;
        border:none;
        font-size: 17px;
        width:50%;
        cursor:pointer;
        margin-top:5px;
        transition: 0.5s all;
        -webkit-transition: 0.5s all;
        -moz-transition: 0.5s all;
        -o-transition: 0.5s all;
        -ms-transition: 0.5s all;
    }
    .main-wthree input[type="submit"]:hover{
        background:#e74c3c;
    }

    .sin-w3-agile {
        padding: 8em 0 0;
        margin: 0 auto;
        width: 50%;
    }
    .footer-w3l{
        margin-top: 150px;
        margin-bottom: 20px;
    }
    .footer-w3l p {
        color:white;
        text-align:center;
        font-size:13px;
        letter-spacing:1px;
    }
    .footer-w3l a{
        color:white;
        text-decoration:none;
    }
    .footer-w3l a:hover{
        text-decoration:underline;
    }
    @media screen and (max-width: 1440px) {
        .main-wthree form span {
            font-size:14px;
            padding:10.5px 10px;
        }
    }
    @media screen and (max-width: 1366px) {

    }

    @media screen and (max-width: 1080px) {
        .sin-w3-agile {
            width: 59%;
            padding: 3em 0 0;
        }
        .main-wthree {
            min-height: 675px;
        }
    }
    @media screen and (max-width: 991px) {
        .sin-w3-agile {
            width: 77%;
        }
        .main-wthree {
            min-height: 600px;
        }
    }

    @media screen and (max-width: 800px) {

        .main-wthree {
            min-height: 929px;
        }
    }
    @media screen and (max-width: 768px) {
        .main-wthree input.name {
            width: 70%;

        }
        .main-wthree input.password{
            width: 70%;
        }
        .main-wthree form span {
            width: 30%;
        }
    }
    @media screen and (max-width: 736px) {
        .main-wthree h2 {
            font-size: 28px;
            letter-spacing: 2px;
        }
        .main-wthree {
            min-height: 530px;
        }

    }
    @media screen and (max-width: 667px) {
        .main-wthree input.name {
            width: 67%;

        }
        .main-wthree input.password{
            width: 67%;
        }
        .main-wthree form span {
            width: 33%;
        }
    }
    @media screen and (max-width: 640px) {
        .main-wthree input.name {
            width: 66%;

        }
        .main-wthree input.password{
            width: 66%;
        }
        .main-wthree form span {
            width: 34%;
        }
    }
    @media screen and (max-width: 600px) {
        .main-wthree input.name {
            width: 63%;

        }
        .main-wthree input.password{
            width: 63%;
        }
        .main-wthree form span {
            width: 37%;
        }
    }
    @media screen and (max-width: 568px) {
        .footer p {
            line-height: 1.7em;
        }
        .main-wthree input.name {
            width: 61%;

        }
        .main-wthree input.password{
            width: 61%;
        }
        .main-wthree form span {
            width: 39%;
        }
    }
    @media screen and (max-width: 480px) {
        .main-wthree input[type="submit"] {
            margin-top:8px;
        }
        .sin-w3-agile {
            width: 80%;
        }
        .main-wthree {
            min-height: 600px;
        }
        .main-wthree form span {
            width: 45%;
        }
        .main-wthree input.name {
            width: 55%;
            padding: 9px 9px 9px 15px;
        }
        .main-wthree input.password{
            width: 55%;
            padding: 9px 9px 9px 15px;
        }
    }
    @media screen and (max-width: 414px) {
        .main-wthree form span {
            font-size: 12px;
        }
        .main-wthree input.name {
            width: 55%;
            padding: 9px 9px 9px 15px;
        }
        .main-wthree input.password{
            width: 55%;
            padding: 9px 9px 9px 15px;
        }
        .footer-w3l p {
            letter-spacing:0;
        }
        .main-wthree {
            min-height: 672px;
        }
        .main-wthree form span {
            width: 45%;
        }
    }

    @media screen and (max-width: 384px) {
        .main-wthree form span {
            width: 51%;
        }
        .main-wthree input.name {
            width: 49%;
        }
        .main-wthree input.password{
            width: 49%;
        }
        .main-wthree input[type="submit"] {
            width: 71%;
        }
    }

    @media screen and (max-width: 375px) {
        .main-wthree h2 {
            font-size: 24px;
        }
        .main-wthree form span{
            padding-left:5px;
        }
        .sin-w3-agile {
            width: 90%;
        }
        .main-wthree form span {
            width: 45%;
        }
        .main-wthree input.name {
            width: 55%;
        }
        .main-wthree input.password{
            width: 55%;
        }
        .main-wthree {
            min-height: 603px;
        }
    }
    @media screen and (max-width: 320px) {
        .main-wthree h2 {
            font-size: 19px;
            letter-spacing:1px;
            padding-top:25px;
        }
        .main-wthree form span {
            font-size: 11px;
        }
        .rem-for-agile{
            font-size:11px;
        }
        .main-wthree input[type="submit"] {
            padding: 9px;
            font-size: 16px;
            width: 60%;
            margin-top:10px;
        }
        .main-wthree {
            min-height: 504px;
        }
        .main-wthree form span {
            width: 51%;
        }
        .main-wthree input.name {
            width: 49%;
        }
        .main-wthree input.password{
            width:49%;
        }
        .sin-w3-agile {
            padding: 0em 0 0;
        }
    }
    ul.bs-glyphicons-list {
        padding: 0;
    }
    /*---//signin-----*/
    .breadcrumb {
        padding: 8px 15px ! important;
        margin: 20px 0 ! important;
        background-color: #ffffff ! important;
        border-radius: 0 ! important;
    }
    ul.nofitications-dropdown {
        padding: 0;
    }
    /*---responsive 1600px-----*/
    @media (max-width:1600px){
        .left-content {
            float: right;
            width: 86%;
        }
        .page-container.sidebar-collapsed-back .left-content {
            float: right;
            width: 86%;
        }
        .page-container.sidebar-collapsed .left-content {
            float: right;
            width: 96%;
        }
    }
    /*---responsive 1440px-----*/
    @media (max-width:1440px){
        .left-content {
            float: right;
            width: 84%;
        }
        .stay-left {
            float: left;
            width: 74%;
        }
        .page-container.sidebar-collapsed-back .left-content {
            float: right;
            width: 84%;
        }
        li.dropdown.head-dpdn a.dropdown-toggle {
            margin: 1em 1.5em;
        }
        ul.bt-list li a {
            padding: 1em 2.5em 1em 1em;
        }
    }
    /*---responsive 1366px-----*/
    @media (max-width:1366px){
        .widget-report-table h3 {
            font-size: 19px;
        }
        header.widget-header h4 {
            font-size: 20px;
        }
        .card-header h3 {
            font-size: 23px;
        }
        li.dropdown.head-dpdn a.dropdown-toggle {
            margin: 1em 1.3em;
        }
        .button-sizes {
            padding: 28px 26px;
        }
    }
    /*---responsive 1280px-----*/
    @media (max-width:1280px){
        .left-content {
            float: right;
            width: 83%;
        }
        .page-container.sidebar-collapsed-back .left-content {
            float: right;
            width: 83%;
        }
        li.dropdown.head-dpdn a.dropdown-toggle {
            margin: 1em 1.1em;
        }
        .w3-search-box input[type="text"] {
            width: 85%;
        }
        .profile_details_drop a.dropdown-toggle {
            padding: 0em 1em 0 1em;
        }
        .profile_details li a i.fa {
            font-size: 1.6em;
        }
        .w3layouts-aug{
            padding:0;
        }
        .list-group .list-group-item {
            padding: 18px 12px;
        }
        .agileinfo-cdr {
            padding: 25px 15px;
        }
        hr {
            margin-top: 10px;
            margin-bottom: 10px;
        }
        .streamline .sl-item p {
            margin-bottom: 9px;
        }
        .button-sizes {
            padding: 28px 14px;
        }
        .button-states-top-grid {
            padding: 28px 14px;
        }
        .hover-buttons {
            padding: 28px 14px;
        }
        .icon-box {
            float: left;
            width: 33.33%;
        }
    }
    /*---responsive 1080px-----*/
    @media (max-width:1080px){
        .page-container {
            min-width: 1032px;
            position: relative;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            width: 100%;
            height: 100%;
            margin: 0px auto;
        }
        .page-container.sidebar-collapsed .left-content {
            float: right;
            width: 94%;
        }
        .page-container.sidebar-collapsed-back .left-content {
            float: right;
            width: 78%;
        }
        .left-content {
            float: right;
            width: 78%;
        }
        .logo-w3-agile h1 {
            font-size: 27px;
        }
        .w3-search-box input[type="text"] {
            width: 78%;
        }
        .w3layouts-left {
            padding: 0.73em;
        }
        li.dropdown.head-dpdn a.dropdown-toggle {
            margin: 1em 0.7em;
        }
        li.dropdown.head-dpdn i {
            font-size: 24px;
        }
        .profile_details_drop a.dropdown-toggle {
            padding: 0em 0em 0 0em;
        }
        .profile_img span.prfil-img {
            width: 29%;
        }
        .profile_details li a i.fa {
            right: -7%;
        }
        span.prfil-img img {
            width: 40px;
            height: 40px;
        }
        .user-name p {
            margin-bottom: 0;
        }
        .user-name span {
            font-size: 13px;
        }
        .profile_details {
            padding: 0.28em 1em;
        }
        .wthree-crd {
            padding-left: 0;
            width: 100%;
            padding: 0;
        }
        .w3-agileits-crd {
            float: left;
            width: 50%;
            padding-left: 0;
        }
        .w3-agile-crd {
            padding-right: 0;
            float: left;
            width: 50%;
        }
        hr {
            margin-top: 20px;
            margin-bottom: 20px;
        }
        .wthree-pan {
            float: left;
            width: 40%;
        }
        .agile-info-stat {
            float: left;
            width: 60%;
        }
        .charts-grids.widget {
            padding: 1em;
        }
        h4.title, .hightchat-grid1 h3 {
            font-size: 18px;
        }
        .jqcandlestick-container {
            width: 100%;
            height: 300px;
        }
        canvas#bar, canvas#line, canvas#pie {
            width: 100% !important;
            height: 270px !important;
        }
        .main {
            background: #3b8fc5;
            min-height: 675px;
        }
        .questions h5, .questions h2 {
            font-size: 1.2em;
        }
        .button-states-top-grid {
            float: left;
            width: 50%;
        }
        .button-size-grids {
            float: left;
            width: 50%;
            padding-right:0;
        }
        .hover-buttons {
            width: 100%;
            margin-top: 1em;
            float: left;
        }
        .grid-form1 h2, .grid-form1 h3 {
            font-size: 1.5em;
        }
    }
    /*---responsive 991px-----*/
    @media (max-width:991px){
        #menu li a {
            padding: 12px 20px;
            font-size: 0.85em;
        }
        .sidebar-menu {
            position: fixed;
            float: left;
            width: 200px;
        }
        .page-container.sidebar-collapsed-back .sidebar-menu {
            width: 200px;
            transition: all 100ms ease-in-out;
        }
        .page-container.sidebar-collapsed-back .left-content {
            float: right;
            width: 81%;
        }
        .left-content {
            float: right;
            width: 81%;
        }
        .page-container {
            min-width: 991px;
            position: relative;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            width: 100%;
            height: 100%;
            margin: 0px auto;
        }
        .four-grid {
            float: left;
            width: 50%;
        }
        .four-grid:nth-child(3) {
            padding-left: 0;
            margin-top:2em;
        }
        .four-grid:nth-child(4) {
            padding-right: 0;
            margin-top:2em;
        }
        .four-grid:nth-child(2) {
            padding-right: 0;
        }
        .compose.w3layouts {
            padding: 0;
        }
        .tab-content-in {
            padding: 0;
        }
        .gallery-grids-left {
            padding: 0;
        }
        .gallery-grids-left-subl {
            padding: 0;
        }
        .gallery-grids-left-subr {
            padding: 0;
            margin-top: 1em;
        }
        .gallery-grids-right {
            padding: 0;
            margin-top: 1em;
        }
        .gallery-grids-right1 {
            padding: 0 0em;
            margin: 1em 0;
        }
        .gallery-grids-left-sub, .gallery-grid-sub {
            margin: 1em 0 0;
        }
        .w3layouts-char {
            padding: 0;
        }
        .w3-char {
            padding: 0;
            margin: 1em 0;
        }
        .w3l-char {
            padding: 0;
        }
        .w3ls-high {
            padding: 0;
        }
        .agileits-high {
            padding: 0;
            margin-top: 1em;
        }
        .main {
            min-height: 929px;
        }
        .w3l-txt {
            margin: 12em 0 0;
        }
        .agileits-bnt,.agile-bnt,.w3-agile-bnt,.agileits-w3layouts-bnt,.w3-agileits-bnt,.wthree-bnt,.agileinfo-bnt,.agileits-bnt,.w3layouts-bnt {
            float: left;
            width: 50%;
        }
        .w3l-table-info h2, .agile-tables h3 {
            font-size: 23px;
        }
        .agileinfo-map {
            margin-bottom: 1em;
        }
        .icon-box {
            width: 50%;
        }
    }
    /*---responsive 800px-----*/
    @media (max-width:800px){
        .page-container {
            min-width:800px;
            position: relative;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            width: 100%;
            height: 100%;
            margin: 0px auto;
        }
        .page-container.sidebar-collapsed-back .left-content {
            float: right;
            width: 76%;
        }
        .left-content {
            float: right;
            width: 76%;
        }
        .page-container.sidebar-collapsed .left-content {
            float: right;
            width: 93%;
        }
        .logo-w3-agile {
            width: 48%;
            margin-right: 4%;
            margin-bottom:1em;
        }
        .w3layouts-left {
            width: 48%;
            margin-bottom:1em;
        }
        .w3layouts-right {
            width: 48%;
            margin: 0 4% 0 0;
        }
        li.dropdown.head-dpdn a.dropdown-toggle {
            margin: 1em 1.4em;
        }
        .profile_details {
            width: 48%;
        }
        .profile_details li a i.fa {
            right: -2%;
        }
        .w3-agileits-crd {
            width: 100%;
            padding: 0;
        }
        .w3-agile-crd {
            width: 100%;
            padding: 0;
        }
        .wthree-pan {
            width: 100%;
            padding: 0;
        }
        .agile-info-stat {
            width: 100%;
            padding: 0;
            margin-bottom: 1em;
        }
        .w3-search-box input[type="text"] {
            width: 86%;
        }
        table th, table td {
            padding: 10px 10px;
            text-align: left;
        }
        .w3l-table-info table th, table td {
            padding: 10px 10px ! important;
        }
    }
    /*---responsive 768px-----*/
    @media (max-width:768px){
        .page-container {
            min-width:775px;
            position: relative;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            width: 100%;
            height: 100%;
            margin: 0px auto;
        }
        .sidebar-menu {
            position: fixed;
            float: left;
            width: 200px;
        }
        .page-container.sidebar-collapsed-back .sidebar-menu {
            width: 200px;
            transition: all 100ms ease-in-out;
        }
        .page-container.sidebar-collapsed-back .left-content {
            float: right;
            width:76%;
        }
        .left-content {
            float: right;
            width:76%;
        }
        li.dropdown.head-dpdn a.dropdown-toggle {
            margin: 1em 1.3em;
        }
        /*--inbox--*/
        .tab-content {
            padding: 0 0em;
        }
        .mail-toolbar {
            padding-bottom: 0em;
        }
        .btn-group {
            margin: 0em 0 !important;
        }
        .grid_3.grid_4 {
            padding: 1em ! important;
        }
        .wthree-typo {
            padding: 1em;
        }
        .asked {
            padding: 1em;
        }
        .variations-panel {
            padding: 1em;
        }
        .button-states-top-grid {
            padding: 16px 16px;
        }
        .button-sizes {
            padding: 16px 16px;
        }
        .hover-buttons {
            padding: 16px 16px;
        }
        .agile-tables {
            padding: 1em;
        }
        .map {
            padding: 1em;
        }
        .w3layouts-map,.agileits-map,.agileinfo-map,.w3-agileits-map{
            padding: 0;
        }
        .w3l-table-info table th, table td {
            padding: 10px 10px ! important;
        }
    }
    /*---responsive 736px-----*/
    @media (max-width:736px){
        .page-container {
            min-width:736px;
            position: relative;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            width: 100%;
            height: 100%;
            margin: 0px auto;
        }
        .sidebar-menu {
            position: fixed;
            float: left;
            width: 180px;
        }
        span.name-caret {
            margin: 10px 0px 0px 0px;
            font-size: 1.2em;
        }
        .sidebar-icon {
            margin-top: -2px;
            font-size: 19px;
            padding: 8px 9px;
        }
        .page-container.sidebar-collapsed-back .left-content {
            float: right;
            width: 76%;
        }
        .left-content {
            float: right;
            width: 76%;
        }
        .page-container.sidebar-collapsed .left-content .main-search {
            float: right;
            width: 35%;
            height: 60px;
            padding: 15px 15px 69px 17px;
            position: absolute;
            top: 75px;
            left: 78px;
        }
        .sidebar-menu {
            position:absolute;
        }
        li.dropdown.head-dpdn a.dropdown-toggle {
            margin: 1em 1.2em;
        }
        .w3l-txt {
            margin: 1em 0 0;
        }
        .main {
            min-height: 480px;
        }
        table th, table td {
            padding: 9px 7px;
        }
        .w3l-table-info table th, table td {
            padding: 10px 6px ! important;
        }
    }
    /*---responsive 667px-----*/
    @media (max-width:667px){
        .page-container {
            min-width: 675px;
        }
        li.dropdown.head-dpdn a.dropdown-toggle {
            margin: 1em 1em;
        }
        .w3-search-box input[type="text"] {
            width: 82%;
        }
        .panel-title h3, .hover-buttons h2 {
            font-size: 1.2em;
        }
        table th, table td {
            padding: 9px 4px;
        }
    }
    /*---responsive 640px-----*/
    @media (max-width:640px){
        .page-container {
            min-width:650px;
            position: relative;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            width: 100%;
            height: 100%;
            margin: 0px auto;
        }
        .sidebar-menu {
            position: fixed;
            float: left;
            width: 170px;
        }
        .sidebar-icon {
            margin-top: -6px;
            font-size: 19px;
            padding: 6px 7px;
            margin-right: 0px;
        }
        li.dropdown.note a {
            padding: 1.3em 1.8em;
            display: block;
        }
        .left-content {
            float: right;
            width: 92%;
        }
        .page-container.sidebar-collapsed {
            transition: all 100ms linear;
            transition-delay: 300ms;

        }
        .page-container.sidebar-collapsed .left-content {
            float: right;
            width: 74%;
        }
        .page-container.sidebar-collapsed-back {
            transition: all 100ms linear;
        }
        .page-container.sidebar-collapsed-back .left-content {
            transition: all 100ms linear;
            -webkit-transition: all 0.3s ease;
            -moz-transition: all 0.3s ease;
            transition: all 0.3s ease;
            float: right;
            width: 92%;
        }
        .page-container.sidebar-collapsed .sidebar-menu {
            width:180px;
            transition: all 100ms ease-in-out;
            transition-delay: 300ms;
        }
        .page-container.sidebar-collapsed-back .sidebar-menu {
            width: 65px;
            transition: all 100ms ease-in-out;
        }
        .page-container.sidebar-collapsed .sidebar-icon {
            transition: all 300ms ease-in-out;
            margin-right: 0.1em;
            margin-top: -7px;
            color: #fff;
            background: #1b93e1;
            border-radius: 0;
            transform: rotate(0deg);
        }
        .page-container.sidebar-collapsed-back .sidebar-icon {
            transform: rotate(90deg);
            transition: all 300ms ease-in-out;
            margin-top: -2px;
            font-size: 19px;
            padding: 6px 7px;
            margin: 0px 14px;
        }
        .page-container.sidebar-collapsed .logo {
            padding: 21px 15px;
            height: 63px;
            box-sizing: border-box;
            transition: all 100ms ease-in-out;
            transition-delay: 300ms;
        }
        .logo1 {
            padding: 21px 0;
            height: 63px;
            box-sizing: border-box;
            transition: all 100ms ease-in-out;
            transition-delay: 300ms;
        }
        span#logo1 {
            display: none;
        }
        .page-container.sidebar-collapsed-back span#logo {
            display:block;
        }
        .page-container.sidebar-collapsed-back .logo {
            width: 100%;
            padding: 13px 14px;
            height:60px;
            box-sizing: border-box;
            transition: all 100ms ease-in-out;
        }
        .page-container.sidebar-collapsed #logo {
            opacity: 0;
            transition: all 200ms ease-in-out;
            display:block;
            float:left;
        }
        .page-container.sidebar-collapsed .down {
            display:block;
        }
        .page-container.sidebar-collapsed #logo {
            opacity:1;
            transition: all 200ms ease-in-out;
            display:block;
        }
        .page-container.sidebar-collapsed-back #logo {
            opacity: 1;
            transition: all 200ms ease-in-out;
            transition-delay: 300ms;
            display:block;
        }
        .page-container.sidebar-collapsed-back span#logo{
            opacity: 1;
            transition: all 200ms linear;
            transition-delay: 300ms;
            display:none;
        }
        .page-container.sidebar-collapsed-back #menu span{
            display:none;
        }
        .page-container.sidebar-collapsed #menu span {
            display:block;
        }
        .page-container.sidebar-collapsed #menu span {
            opacity: 1;
            transition: all 50ms linear;
            display: inline-block;
            margin-left: 10px;
        }
        #menu span {
            opacity:0;
            transition: all 50ms linear;
            display: inline-block;
            margin-left: 10px;
        }
        span.fa.fa-angle-right,span.fa.fa-angle-double-right {
            float: right!important;
            position:absolute!important;
            right: 15px!important;
        }
        .sidebar-menu {
            width: 65px;
            transition: all 100ms ease-in-out;
            transition-delay: 300ms;
        }
        .main-search {
            float: right;
            width: 35%;
            height: 60px;
            padding: 9px 10px 67px 10px;
            position: absolute;
            top: 75px;
            left: 75px;
        }
        .page-container.sidebar-collapsed.main-search {
            float: right;
            width: 35%;
            height: 60px;
            padding: 9px 10px 67px 10px;
            position: absolute;
            top: 75px;
            left: 75px;
        }
        .page-container.sidebar-collapsed-back.srch button {
            cursor: pointer;
            background: url('../images/search.png') no-repeat 19px 16px rgba(3, 182, 197, 0.68);
            width: 70px;
            height: 63px;
            display: block;
            border: none;
            outline: none;
            position: absolute;
            top: 0px;
            left: 12%;
        }
        .sidebar-menu {
            position:absolute;
        }
        .page-container.sidebar-collapsed .left-content .srch button {
            cursor: pointer;
            background: url('../images/search.png') no-repeat 25px 15px rgba(3, 182, 197, 0.68);
            width: 80px;
            height: 63px;
            display: block;
            border: none;
            outline: none;
            position: absolute;
            top: 0px;
            left: 32%;
        }
        .page-container.sidebar-collapsed .left-content .main-search {
            float: right;
            width: 35%;
            height: 60px;
            padding: 15px 15px 69px 17px;
            position: absolute;
            top: 75px;
            left: 198px;
        }
        li.dropdown.head-dpdn a.dropdown-toggle {
            margin: 1em 1.4em;
        }
        .w3-search-box input[type="text"] {
            width: 85%;
        }
        .table td, .table>tbody>tr>td, .table>tbody>tr>th, .table>tfoot>tr>td, .table>tfoot>tr>th, .table>thead>tr>td, .table>thead>tr>th {
            padding: 8px !important;
        }
        .main {
            min-height: 600px;
        }
    }
    /*---responsive 600px-----*/
    @media (max-width:600px){
        .page-container {
            min-width:600px;
            position: relative;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            width: 100%;
            height: 100%;
            margin: 0px auto;
        }
        .page-container.sidebar-collapsed .left-content {
            float: right;
            width: 72%;
        }
        .page-container.sidebar-collapsed-back {
            width:72%;
        }
        li.dropdown.head-dpdn a.dropdown-toggle {
            margin: 1em 1.1em;
        }
        .main {
            min-height: 430px;
        }
    }
    /*---responsive 568px-----*/
    @media (max-width: 568px){
        .page-container {
            min-width:568px;
            position: relative;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            width: 100%;
            height: 100%;
            margin: 0px auto;
        }
        .page-container.sidebar-collapsed .left-content .srch button {
            cursor: pointer;
            background: url('../images/search.png') no-repeat 25px 15px rgba(3, 182, 197, 0.68);
            width: 80px;
            height: 63px;
            display: block;
            border: none;
            outline: none;
            position: absolute;
            top: 0px;
            left: 31%;
        }
        .page-container.sidebar-collapsed-back .left-content {
            float: right;
            width: 91%;
        }
        .page-container.sidebar-collapsed .left-content {
            float: right;
            width: 70%;
        }
        li.dropdown.note a {
            padding:1.2em 1.8em;
            display: block;
        }
        span.badge {
            font-size: 10px;
            line-height: 17px;
            width: 20px;
            height: 20px;
            position: absolute;
            top: 10%;
            padding: 2px 0 0;
            left: 67%;
        }
        .logo {
            padding: 18px 0;
            height: 58px;
        }
        .page-container.sidebar-collapsed .left-content .srch button {
            cursor: pointer;
            background: url('../images/search.png') no-repeat 23px 12px rgba(3, 182, 197, 0.68);
            width: 70px;
            height: 60px;
            display: block;
            border: none;
            outline: none;
            position: absolute;
            top: 0px;
            left: 35%;
        }
        li.dropdown.head-dpdn a.dropdown-toggle {
            margin: 1em 1em;
        }
        .w3-search-box input[type="text"] {
            width: 83%;
        }
        .inbox-right {
            padding: 0.8em;
        }
        .mail-toolbar .table td, .table>tbody>tr>td, .table>tbody>tr>th, .table>tfoot>tr>td, .table>tfoot>tr>th, .table>thead>tr>td, .table>thead>tr>th {
            padding: 2px!important;
        }
    }
    /*---responsive 480px-----*/
    @media (max-width:480px){
        .page-container {
            min-width:480px;
            position: relative;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            width: 100%;
            height: 100%;
            margin: 0px auto;
        }
        li.dropdown.note a {
            padding: 1.3em 1.2em;
            display: block;
        }
        .media-body {
            font-size: 0.85em;
        }
        h4.media-heading {
            font-size: 1.6em!important;
        }
        .page-container.sidebar-collapsed .left-content {
            float: right;
            width: 72%;
        }
        .page-container.sidebar-collapsed-back {
            width: 70%;
        }
        .left-content {
            float: right;
            width: 87%;
        }
        .page-container.sidebar-collapsed .left-content {
            float: right;
            width: 64%;
        }
        .page-container.sidebar-collapseddiv #container10 svg {
            width: 224px!important;
        }
        .page-container.sidebar-collapsed-back .left-content {
            float: right;
            width: 87%;
        }
        .page-container.sidebar-collapsed .sidebar-menu {
            width: 180px;
            z-index: 999999999;
        }
        .page-container.sidebar-collapsed .left-content {
            float: right;
            width: 88%;
        }
        .logo-w3-agile {
            width: 100%;
            margin-bottom: 1em;
            margin-right: 0;
        }
        .w3layouts-left {
            width: 100%;
            margin-bottom: 1em;
        }
        .w3-search-box input[type="text"] {
            width: 89%;
        }
        .w3layouts-right {
            width: 100%;
            margin: 0 0 1em 0;
        }
        .profile_details {
            width: 100%;
        }
        .profile_details li a i.fa {
            right: -2%;
        }
        header.agileits-box-header.clearfix h3 {
            font-size: 24px;
        }
        .copyrights p {
            font-size: 0.9em;
            line-height: 1.8em;
        }
        li.dropdown.head-dpdn a.dropdown-toggle {
            margin: 1em 2.2em;
        }
        .dropdown-menu {
            left: -74px;
        }
        .main {
            min-height: 500px;
        }
        .questions h5, .questions h2 {
            font-size: 1em;
        }
        .button-states-top-grid {
            width: 100%;
        }
        .button-size-grids {
            width: 100%;
            padding: 0;
            margin-top: 1em;
        }
        ul.bt-list li {
            width: 100%;
            margin: 2% 0;
        }
        .w3l-calendar-left {
            padding: 1em;
            margin: 1em 0;
        }
        .monthly-day-title-wrap div {
            font-size: 0.85em ! important;
        }
        .icon-box {
            width: 100%;
        }
    }
    /*---responsive 414px-----*/
    @media (max-width:414px){
        .page-container {
            min-width:414px;
            position: relative;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            width: 100%;
            height: 100%;
            margin: 0px auto;
        }
        .left-content {
            float: right;
            width: 85%;
        }
        .page-container.sidebar-collapsed .left-content {
            float: right;
            width: 88%;
        }
        ul.dropdown-menu.two {
            padding: 0;
            min-width: 234px;
            top: 99%;
            left: -177px;
        }
        .page-container.sidebar-collapsed .sidebar-menu {
            width: 180px;
            z-index: 999999999;
        }
        .page-container.sidebar-collapsed .left-content {
            float: right;
            width: 88%;
        }
        .header_top {
            width: 79%;
        }
        .w3-search-box input[type="text"] {
            width: 86%;
        }
        li.dropdown.head-dpdn a.dropdown-toggle {
            margin: 1em 1.5em;
        }
        .four-agileits,.four-agileinfo,.four-w3ls,.four-wthree {
            padding: 1em 0;
        }
        .four-grid {
            float: left;
            width: 100%;
            padding: 0;
        }
        .four-grid:nth-child(2) {
            margin: 1em 0;
        }
        .four-grid:nth-child(3) {
            margin-top: 0em;
        }
        .four-grid:nth-child(4) {
            margin-top: 1em;
        }
        .four-grids {
            margin: 1em 0;
        }
        .text-right {

            font-size: 25px;
        }
        .m-t-20 {
            margin-top: 7px!important;
        }
        .table td, .table>tbody>tr>td, .table>tbody>tr>th, .table>tfoot>tr>td, .table>tfoot>tr>th, .table>thead>tr>td, .table>thead>tr>th {
            padding: 6px!important;
        }
        .dropdown-menu {
            left: -102px;
        }
        .table td, .table>tbody>tr>td, .table>tbody>tr>th, .table>tfoot>tr>td, .table>tfoot>tr>th, .table>thead>tr>td, .table>thead>tr>th {
            font-size: 0.7em;
            padding: 4px !important;
        }
        .table-img img {
            width: 40px;
        }
        .gallery-grids {
            padding: 1em;
        }
        .main {
            min-height: 672px;
        }
        .agileits-bnt, .agile-bnt, .w3-agile-bnt, .agileits-w3layouts-bnt, .w3-agileits-bnt, .wthree-bnt, .agileinfo-bnt, .agileits-bnt, .w3layouts-bnt {
            float: left;
            width: 100%;
        }
        .w3l-table-info h2, .agile-tables h3 {
            font-size: 19px;
        }
        .map iframe {
            height: 200px;
        }
        .grid-form1 h2, .grid-form1 h3 {
            font-size: 1.3em;
        }
    }
    /*---responsive 384px-----*/
    @media (max-width:384px){
        .media>.pull-left {
            padding-right: 10px;
        }
        .page-container {
            min-width:384px;
            position: relative;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            width: 100%;
            height: 100%;
            margin: 0px auto;
        }
        .ribbon1 {
            width: 211px;
            height: 80px;
            margin: 0px auto;
            left: -37px;
            top: -29px;
        }
        .ribbon-fold h4 {
            line-height: 75px;
            font-size: 17px;
        }
        .page-container.sidebar-collapsed-back .left-content {
            float: right;
            width: 85%;
        }
        .left-content {
            width: 86%;
        }
        .outter-wp {
            padding: 0.5em 1.5em;
            margin-bottom: 2em;
        }
        .page-container.sidebar-collapsed-back {
            width:86%;
        }
        .table > thead > tr > th, .table > tbody > tr > th, .table > tfoot > tr > th, .table > thead > tr > td, .table > tbody > tr > td, .table > tfoot > tr > td {
            font-size: 0.8em;
        }
        li.dropdown.head-dpdn a.dropdown-toggle {
            margin: 1em 1.3em;
        }
        .main {
            min-height: 600px;
        }
    }
    /*---responsive 375px-----*/
    @media (max-width:375px){
        ul.dropdown-menu.two {
            padding: 0;
            min-width: 234px;
            top: 99%;
            left: -188px;
        }
        ul.dropdown-menu.two.first {
            padding: 0;
            min-width: 234px;
            top: 99%;
            left: -106px;
        }
        .page-container {
            min-width:375px;
            position: relative;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            width: 100%;
            height: 100%;
            margin: 0px auto;
        }
        li.dropdown.head-dpdn a.dropdown-toggle {
            margin: 1em 1.2em;
        }
        .table > thead > tr > th, .table > tbody > tr > th, .table > tfoot > tr > th, .table > thead > tr > td, .table > tbody > tr > td, .table > tfoot > tr > td {
            font-size: 0.75em;
        }
        .bs-glyphicons li {
            width: 48%;
            margin:1% ;
        }
    }
    /*---responsive 320px-----*/
    @media (max-width:320px){
        .page-container {
            min-width:320px;
            position: relative;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            width: 100%;
            height: 100%;
            margin: 0px auto;
        }
        .outter-wp {
            padding: 0.5em 1em;
            margin-bottom: 2em;
        }
        .left-content {
            width: 87%;
            padding: 0 1em 0 2em;
        }
        .logo-w3-agile h1 {
            font-size: 24px;
        }
        .logo-w3-agile {
            padding: 0.5em;
        }
        .w3-search-box input[type="text"] {
            width: 82%;
        }
        li.dropdown.head-dpdn a.dropdown-toggle {
            margin: 0em 0.9em;
        }
        .w3layouts-right {
            padding: 0.5em 1em 0.5em;
        }
        .widget-body.p-15 table.table.table-bordered {
            display: block;
        }
        .widget-report-table h3 {
            font-size: 18px;
            margin-top: 20px;
            line-height: 25px;
        }
        header.agileits-box-header.clearfix h3 {
            font-size: 20px;
        }
        .m-t-20 {
            margin-top: 20px!important;
        }
        .streamline .sl-item p {
            font-size: 14px;
        }
        .text-right {
            font-size: 20px;
        }
        .list-group .list-group-item {
            padding: 12px 4px;
        }
        .panel-body {
            padding: 10px;
        }
        .table td, .table>tbody>tr>td, .table>tbody>tr>th, .table>tfoot>tr>td, .table>tfoot>tr>th, .table>thead>tr>td, .table>thead>tr>th {
            padding: 2px!important;
        }
        .dropdown-menu {
            left: -97px;
        }
        ul.dropdown-menu {
            min-width: 200px;
        }/*--inbox--*/
        .inbox-right {
            padding: 1em;
        }
        .table-img img {
            width: 40px;
        }
        .mail-toolbar {
            padding-bottom: 1em;
        }
        /*--inbox--*/
        .main {
            min-height: 504px;
        }
        .w3l-table-info h2, .agile-tables h3 {
            font-size: 17px;
        }
        .agile-tables {
            margin: 1em 0;
        }
        .monthly-day-title-wrap div {
            font-size: 0.75em ! important;
        }
        .grid-form1 h2, .grid-form1 h3 {
            font-size: 1.2em;
        }
        .copyrights {
            padding: 0.5em 0.3em;
        }
        .pv20 {
            padding-top: 10px !important;
            padding-bottom: 10px !important;
        }
        .mb20 {
            margin-bottom: 0px !important;
        }
        .mb15 {
            margin-bottom: 0px !important;
        }
        .col-sm-offset-2 {
            padding: 0;
        }
        .panel-footer {
            padding: 10px 0;
        }
        .col-sm-offset-2.btn {
            padding: 8px 7px;
            font-size: 13px;
        }
        .page-container.sidebar-collapsed-back .left-content {
            float: right;
            width: 86%;
        }
        .page-container.sidebar-collapsed-back {
            width: 105%;
        }
        .main-wthree input.name,.main-wthree input.password {
            padding: 7px 9px 8px 15px;
        }
    }
    /***responsive***/
</style>
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
                                    <span class="prfil-img"><img src="images/in4.jpg" alt=""> </span>
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
                <li class="breadcrumb-item"><a href="index1.html">Trang chủ</a> <i class="fa fa-angle-right"></i></li>
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
                                                    <a href="/home" class="list-group-item active">Trang chủ</a>
                                                    <a href="/views/book/book-form.jsp" class="list-group-item">Quản lý Sách</a>
                                                    <a href="/category/category-list.jsp" class="list-group-item">Quản lý thể loại</a>
                                                    <a href="/author/author-list" class="list-group-item">Quản lý tác giả</a>
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
                        <li id="menu-academico-avaliacoes" > <a href="" class="list-group-item">Quản lý Sách</a></li>
                        <li id="menu-academico-avaliacoes" ><a href="" class="list-group-item">Quản lý thể loại</a></li>
                        <li id="menu-academico-avaliacoes" ><a href="" class="list-group-item">Quản lý tác giả</a></li>
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
