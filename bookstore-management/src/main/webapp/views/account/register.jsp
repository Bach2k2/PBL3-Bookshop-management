<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register form</title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/register.css">
</head>
<body>
<section class="vh-100 gradient-custom">
    <div class="container py-5 h-100">
        <div class="row justify-content-center align-items-center h-100">
            <div class="col-12 col-lg-9 col-xl-7">
                <div class="card shadow-2-strong card-registration" style="border-radius: 15px;">
                    <div class="card-body p-4 p-md-5">
                        <h3 class="mb-4 pb-2 pb-md-0 mb-md-5">Register Form</h3>
                        <%--     Form                   ?--%>
                        <form class="form-group" action="/home" method="post">
                            <div class="row">
                                <div class="col-md-6 mb-4">
                                    <div class="form-outline">
                                        <label class="form-label" for="firstName">First Name</label>
                                        <input type="text" id="firstName" name="firstName"
                                               class="form-control form-control-lg"/>
                                    </div>
                                </div>

                                <div class="col-md-6 mb-4">
                                    <div class="form-outline">
                                        <label class="form-label" for="lastName">Last Name</label>
                                        <input type="text" id="lastName" name="lastName"
                                               class="form-control form-control-lg"/>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6 mb-4 d-flex align-items-center">
                                    <div class="form-outline datepicker w-100">
                                        <label for="birthdayDate" class="form-label">Birthday</label>
                                        <input type="date" name="birthday" class="form-control form-control-lg"
                                               id="birthdayDate"/>
                                    </div>
                                </div>
                                <div class="col-md-6 mb-4">
                                    <h6 class="mb-2 pb-1">Gender: </h6>

                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="gender"
                                               id="maleGender"
                                               value="true" checked/>
                                        <label class="form-check-label" for="maleGender">Male</label>
                                    </div>

                                    <div class="form-check form-check-inline">
                                        <label class="form-check-label" for="femaleGender">Female</label>
                                        <input class="form-check-input" type="radio" name="gender"
                                               id="femaleGender"
                                               value="false"/>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6 mb-4 pb-2">

                                    <div class="form-outline">
                                        <label class="form-label" for="emailAddress">Email</label>
                                        <input type="email" id="emailAddress" name="email"
                                               class="form-control form-control-lg"/>
                                    </div>

                                </div>
                                <div class="col-md-6 mb-4 pb-2">

                                    <div class="form-outline">
                                        <label class="form-label" for="phoneNumber">Phone Number</label>
                                        <input type="tel" id="phoneNumber" name="phone"
                                               class="form-control form-control-lg"/>
                                    </div>

                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12">
                                    <div class="form-outline">
                                        <label class="form-label" for="address">Address</label>
                                        <input type="text" id="address" name="address"
                                               class="form-control form-control-lg"/>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-12">
                                    <div class="form-outline">
                                        <label class="form-label" for="username">Username</label>
                                        <input type="text" id="username" name="username"
                                               class="form-control form-control-lg"/>

                                    </div>
                                    <div class="form-outline">
                                        <label class="form-label" for="password">Password</label>
                                        <input type="password" id="password" name="password"
                                               class="form-control form-control-lg"/>

                                    </div>
                                    <div class="form-outline">
                                        <label class="form-label" for="confirmPassword">Confirm Password</label>
                                        <input type="password" id="confirmPassword"
                                               class="form-control form-control-lg"/>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <%--                                <div class="mt-4 pt-2">--%>
                                <div class="col-12">
                                    <input type="hidden" name="action" value="register">
                                    <input class="btn btn-primary btn-lg" type="submit" value="Đăng ký"/>
                                </div>
                                <div class="col-12"><a href="/home">Trở về trang chủ</a></div>
                            </div>

                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</body>
</html>
