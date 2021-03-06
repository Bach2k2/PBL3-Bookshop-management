<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html lang="vi">
<head>
    <title>dashboard</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content="laptop"/>
        <script type="application/x-javascript"> addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        } </script>
        <!-- Bootstrap Core CSS -->
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
        <%--AJAX--%>
<%--    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>--%>
    <script type="text/javascript">
        $(document).ready(function () {
            // $('[data-toggle="tooltip"]').tooltip();
            $('table #delete-btn').on('click', function () {
                {
                    var id = $(this).parent().find('#deleteId').val();
                    $('#confirmDelete #idProductDelete').val(id);
                }
            });
            $('table #edit-btn').on('click', function () {
                var id = $(this).parent().find('#editId').val();
                $.ajax({
                    type: 'GET',
                    url: 'admin',
                    data: {action: 'find', idProduct: id},

                    success: function (result) {
                        $('#editProductModal #upt_idProduct').val(result.idProduct);
                        $('#editProductModal #upt_bookTitle').val(result.bookTitle);
                        $('#editProductModal #upt_quantity').val(result.quantity);
                        $('#editProductModal #upt_price').val(result.price);
                        $('#editProductModal #upt_category').select(result.idCategory);
                        $('#editProductModal #upt_author').select(result.idAuthor);
                        $('#editProductModal #upt_description').val(result.productDescription);
                        $('#editProductModal #upt_publisher').val(result.publisher);
                        $('input[name=publishDate2]').val(result.publishDate);
                        $('#editProductModal #idProductEdit').val(result.idProduct);
                    }
                });
            });
        });
    </script>
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
                                    <div class="user-name">
                                        <p>Th??ng tin</p>
                                        <span>Admin</span>
                                    </div>
                                    <i class="fa fa-angle-down"></i>
                                    <i class="fa fa-angle-up"></i>
                                    <div class="clearfix"></div>
                                </div>
                            </a>
                            <ul class="dropdown-menu drp-mnu">
                                <li><a href="/setting"><i class="fa fa-cog"></i> C??i ?????t</a></li>
                                <li><a href="/product/admin-profile"><i class="fa fa-user"></i> Th??ng tin</a></li>
                                <li><a href="/home?action=logout"><i class="fa fa-sign-out"></i> ????ng xu???t</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>

                <div class="clearfix"></div>
            </div>
            <!--heder end here-->
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="/admin">Trang ch???</a><i class="fa fa-angle-right"></i>S???n ph???m</li>
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
                                        <h2>Th??m s???n ph???m</h2>
                                        <div class="row">
                                            <div class="col-xs-1 col-sm-1 col-md-1 col-lg-1">

                                            </div>
                                            <div class="col-xs-10 col-sm-10 col-md-10 col-lg-10">
                                                <form action="admin?action=create-product" method="post">
                                                    <div class="form-group">
                                                        <label for="tensach">T??n s??ch:</label>
                                                        <input type="text" class="form-control" id="tensach"
                                                               name="Book_title" required>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="comment">M?? t???:</label>
                                                        <textarea class="form-control" rows="5" id="comment"
                                                                  name="Product_description" required></textarea>
                                                    </div>

                                                    <div class="form-group">
                                                        <label for="theloai">Th??? Lo???i s??ch:</label>
                                                        <select name="category_name" id="theloai" class="form-control" required>
                                                            <option value="0" selected>--Ch???n th??? lo???i s??ch --</option>
                                                            <c:forEach var="category" items="${categoryList}">
                                                                <option value="${category.getIdCategory()}">${category.getCategoryName()}</option>
                                                            </c:forEach>
                                                        </select>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="nhasb">Nh?? xu???t b???n:</label>
                                                        <input type="text" class="form-control" id="nhasb"
                                                               name="publisher" required>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="ngaysb">Ng??y xu???t b???n:</label>
                                                        <input type="date" class="form-control" id="ngaysb"
                                                               name="publish_date" required>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="author">T??c gi???:</label>
                                                        <select id="author" name="author" required>
                                                            <option value="0" selected>--Ch???n t??c gi??? --</option>
                                                            <c:forEach var="author" items="${authorList}">
                                                                <option value="${author.getIdAuthor()}">${author.getAuthorName()}</option>
                                                            </c:forEach>
                                                        </select>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="gia">Gi?? b??n:</label>
                                                        <input type="number" class="form-control" id="gia" name="price" required>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="gia">S??? l?????ng:</label>
                                                        <input type="number" class="form-control" id="quantity"
                                                               name="quantity" required>
                                                    </div>
                                                    <button type="submit" class="btn btn-default">Th??m s???n ph???m</button>
                                                </form>
                                            </div>
                                            <div class="col-xs-1 col-sm-1 col-md-1 col-lg-1">

                                            </div>
                                        </div>
                                        <%--                                        C???p nh???t s???n ph???m--%>
                                        <h2>Danh s??ch s???n ph???m</h2>
                                        <table id="table">
                                            <thead>
                                            <tr>
                                                <th>M?? s??ch</th>
                                                <th>T??n s??ch</th>
                                                <th>Th??? lo???i</th>
                                                <th>S??? l?????ng</th>
                                                <th>Nh?? xu???t b???n</th>
                                                <th>Ng??y xu???t b???n</th>
                                                <th>T??c gi???</th>
                                                <th>Gi?? b??n</th>
                                                <th style="text-align: center;">M?? t???</th>
                                                <th colspan="2">Ch???nh s???a</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <c:forEach var="product" items="${productList}">
                                                <tr class="info">
                                                    <td>${product.getIdProduct()}</td>
                                                    <td>${product.getBookTitle()}</td>
                                                    <td>
                                                        <c:forEach var="category" items="${categoryList}">
                                                            <c:choose>
                                                                <c:when test="${product.getIdCategory()==category.getIdCategory()}">
                                                                    ${category.getCategoryName()}
                                                                </c:when>
                                                                <c:otherwise>
                                                                </c:otherwise>
                                                            </c:choose>
                                                        </c:forEach>
                                                    </td>
                                                    <td>${product.getQuantity()}</td>
                                                    <td>${product.getPublisher()}</td>
                                                    <td>${product.getPublishDate()}</td>
                                                    <td>
                                                        <c:forEach var="author" items="${authorList}">
                                                            <c:choose>
                                                                <c:when test="${product.getIdAuthor()==author.getIdAuthor()}">
                                                                    ${author.getAuthorName()}
                                                                </c:when>
                                                                <c:otherwise>
                                                                </c:otherwise>
                                                            </c:choose>
                                                        </c:forEach>
                                                    </td>
                                                    <td>${product.getPrice()}</td>
                                                    <td>${product.getProductDescription()}</td>
                                                    <td style="text-align: center;">
							                            <span>
								                            <a id="edit-btn" data-target="#editProductModal"
                                                               href="#editProductModal"
                                                               class="agile-icon" data-toggle="modal">
                                                                <i class="fa fa-pencil fa-fw"
                                                                   data-toggle="tooltip"></i>Edit</a>
                                                              <input type="hidden" name="editId" id="editId"
                                                                     value="${product.getIdProduct()}">
							                            </span>
                                                    </td>
                                                    <td><span><a class="btn btn-danger" id="delete-btn"
                                                                 href="#confirmDelete"
                                                                 aria-label="Delete" data-toggle="modal"
                                                                 data-target="#confirmDelete">
                                        <i class="fa fa-trash-o" data-toggle="tooltip" aria-hidden="true"></i>Delete</a>
                                                        <input type="hidden" id="deleteId"
                                                               value="${product.getIdProduct()}">
                                                        </span>
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>

                                    <%--                                           Ph???n hi???n th??? th??ng tin c???p nh???t--%>
                                    <!-- Modal -->
                                        <div class="modal fade" id="editProductModal" role="dialog"
                                             aria-labelledby="modelTitleId"
                                             aria-hidden="true">
                                            <div class="modal-dialog">

                                                <!-- Modal content-->
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal">&times;
                                                        </button>
                                                        <h4 class="modal-title">C???p nh???t th??ng tin s???n ph???m</h4>
                                                    </div>
                                                    <form action="${pageContext.request.contextPath}/admin?action=edit-product"
                                                          method="post">
                                                        <div class="modal-body">
                                                            <p>M???i b???n nh???p th??ng tin s???n ph???m: </p>

                                                            <div class="form-group">
                                                                <label>M?? s??ch:</label>
                                                                <input type="text" class="form-control"
                                                                       id="upt_idProduct"
                                                                       name="idProduct2"  readonly>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="upt_bookTitle">T??n s??ch:</label>
                                                                <input type="text" class="form-control"
                                                                       id="upt_bookTitle"
                                                                       name="bookTitle2" required>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="upt_description">M?? t???:</label>
                                                                <textarea class="form-control" rows="6"
                                                                          id="upt_description"
                                                                          name="description2" required></textarea>
                                                            </div>

                                                            <div class="form-group">
                                                                <label for="upt_category">Th??? Lo???i s??ch:</label>
                                                                <select name="category2" id="upt_category"
                                                                        class="form-control">
                                                                    <c:forEach var="category" items="${categoryList}">
                                                                        <option value="${category.getIdCategory()}">${category.getCategoryName()}</option>
                                                                    </c:forEach>
                                                                </select>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="upt_publisher">Nh?? xu???t b???n:</label>
                                                                <input type="text" class="form-control"
                                                                       id="upt_publisher"
                                                                       name="publisher2">
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="upt_publisherDate">Ng??y xu???t b???n:</label>
                                                                <input type="date" class="form-control"
                                                                       id="upt_publisherDate"
                                                                       name="publishDate2" required>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="upt_author">T??c gi???:</label>
                                                                <select name="author2"
                                                                        class="form-control" id="upt_author">
                                                                    <c:forEach var="author" items="${authorList}">
                                                                        <option value="${author.getIdAuthor()}">${author.getAuthorName()}</option>
                                                                    </c:forEach>
                                                                </select>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="upt_price">Gi?? b??n:</label>
                                                                <input type="number" class="form-control" id="upt_price"
                                                                       name="price2">
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="upt_quantity">S??? l?????ng:</label>
                                                                <input type="number" class="form-control"
                                                                       id="upt_quantity"
                                                                       name="quantity2">
                                                            </div>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button
                                                                    type="submit" id="updateOption"
                                                                    class="btn btn-default">
                                                                C???p nh???t
                                                            </button>
                                                            <button type="button" class="btn btn-default"
                                                                    data-dismiss="modal">
                                                                Close
                                                            </button>
                                                        </div>
                                                        <input type="hidden" id="idProductEdit" name="idProductEdit">
                                                    </form>
                                                </div>

                                            </div>
                                        </div>
                                    </div>


                                    <!-- end mymodal -->


                                    <!-- sanpham -->
                                    <!-- Modal Delete -->
                                    <div class="modal fade" id="confirmDelete" role="dialog"
                                         aria-labelledby="modelTitleId"
                                         aria-hidden="true">
                                        <div class="modal-dialog" role="document">
                                            <!-- Modal content-->
                                            <div class="modal-content">
                                                <form method="post"
                                                      action="${pageContext.request.contextPath}/admin?action=delete-product">
                                                    <div class="modal-header">
                                                        <h3>Delete a Book</h3>
                                                        <button type="button" class="close" data-dismiss="modal">&times;
                                                        </button>

                                                    </div>
                                                    <div class="modal-body">
                                                        <h5 class="modal-title">B???n c?? ch???c ch???n mu???n x??a<span
                                                                id="productName"></span> hay kh??ng?</h5>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button id="yesOption" type="submit" class="btn btn-default"
                                                                style="margin-left: 43%;">X??a
                                                        </button>
                                                        <button id="close" type="button"
                                                                class="btn btn-default" data-dismiss="modal">
                                                            Close
                                                        </button>
                                                    </div>
                                                    <input type="hidden" name="idProductDelete" id="idProductDelete">
                                                </form>
                                            </div>
                                        </div>
                                    </div>


                                    <!-- end modal sanpham -->
                                </div>
                            </div>
                        </div>

                        <div class="clearfix"></div>
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
                $(document).ready(function () {
                    var navoffeset = $(".header-main").offset().top;
                    $(window).scroll(function () {
                        var scrollpos = $(window).scrollTop();
                        if (scrollpos >= navoffeset) {
                            $(".header-main").addClass("fixed");
                        } else {
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
                <p>?? 2022 NBH Memorial. All Rights Reserved Design by <a href="http://w3layouts.com/"
                                                                target="_blank">3GuysLayout</a></p>
            </div>
            <!--COPY rights end here-->
        </div>
    </div>
    <!--//content-inner-->

    <!--/sidebar-menu Menu b??n c???nh-->
    <div class="sidebar-menu">
        <header class="logo1">
            <a class="btn btn-primary" href="#" class="sidebar-icon" aria-label="Skip to main navigation">
                <i class="fa fa-bars" aria-hidden="true"></i>
            </a>
        </header>
        <div style="border-top:1px ridge rgba(255, 255, 255, 0.15)"></div>
        <div class="menu">
            <ul id="menu">
                <li><a href="/admin"><i class="fa fa-tachometer"></i><span>Trang ch???</span>
                    <div class="clearfix"></div>
                </a></li>


                <li id="menu-academico"><a href="donhang.html"><i
                        class="fa fa-envelope nav_icon"></i><span>????n h??ng</span>
                    <div class="clearfix"></div>
                </a></li>
                <!-- <li><a href="gallery.html"><i class="fa fa-picture-o" aria-hidden="true"></i><span>Gallery</span><div class="clearfix"></div></a></li> -->

                <li id="menu-academico"><a href="#"><i class="fa fa-list-ul"
                                                       aria-hidden="true"></i><span>S???n ph???m</span> <span
                        class="fa fa-angle-right" style="float: right"></span>
                    <div class="clearfix"></div>
                </a>
                    <ul id="menu-academico-sub">
                        <li id="menu-academico-avaliacoes"><a href="admin?action=product-management">Qu???n l?? s??ch</a></li>
                        <li id="menu-academico-avaliacoes"><a href="admin?action=category-management">Lo???i s??ch</a></li>
                        <li id="menu-academico-avaliacoes"><a href="admin?action=author-management">T??c gi???</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
    <div class="clearfix"></div>

<script>
    // function DeleteBook(id, name) {
    //     $('productName').text(name);
    //     $('yesOption').attr('href', '/admin?action=delete-product&id=' + id);
    //     $('confirmDelete').modal('show');
    //     alert("B???n ???? nh???n v??o ????y");
    // }
    //
    // function Close() {
    //     window.location = "/admin?action=product-management";
    // }
    //
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
<!--js -->
<script src="<%=request.getContextPath()%>/js/js1/jquery.nicescroll.js"></script>
<script src="<%=request.getContextPath()%>/js/js1/scripts.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="<%=request.getContextPath()%>/js/js1/bootstrap.min.js"></script>
<!-- /Bootstrap Core JavaScript -->
<!-- morris JavaScript -->
<script src="<%=request.getContextPath()%>/js/js1/raphael-min.js"></script>

</body>
</html>