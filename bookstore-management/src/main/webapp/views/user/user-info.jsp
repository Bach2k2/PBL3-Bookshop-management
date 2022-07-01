<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="<%=request.getContextPath()%>/css/user-info.css" rel='stylesheet' type='text/css'/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
            integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
            integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
            integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
            crossorigin="anonymous"></script>
</head>
<body>
<div class="container mt-4 mb-4 p-3 d-flex justify-content-center">
    <div class="card p-4">
        <div class=" image d-flex flex-column justify-content-center align-items-center">
            <button class="btn btn-secondary"><img src="https://i.imgur.com/wvxPV9S.png" height="100" width="100"/>
            </button>
            <form method="get" action="/customer?action=edit-profile&ID_U=${account.getIdAccount()}">
                <span class="name mt-3">${account.getUsername()}</span>
                <br>
                <button class="btn1 btn-dark" type="button" href="">Edit Profile</button>
            </form>
            <div class="text mt-3">
                <table>
                    <tbody>
                    <tr>
                        <th>Tên người dùng</th>
                        <td>${user.getFirstName()} ${user.getLastName()}</td>
                    </tr>
                    <tr>
                        <th>Giới tính</th>
                        <c:if test="${user.isGender()}">
                            <td>Nam</td>
                        </c:if>
                        <c:if test="${!user.isGender()}">
                            <td>Nữ</td>
                        </c:if>

                    </tr>
                    <tr>
                        <th>Ngày sinh</th>
                        <td>${user.getDateOfBirth()}</td>
                    </tr>
                    <tr>
                        <th>Email</th>
                        <td>${user.getEmail()}</td>
                    </tr>
                    <tr>
                        <th>Số điện thoại</th>
                        <td>${user.getPhone()}</td>
                    </tr>
                    <tr>
                        <th>Địa chi</th>
                        <td>${user.getAddress()}</td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <div class=" px-2 rounded mt-4 date "><span class="join">Ngày đăng ký : ${account.getSignUpDate()}</span>
            </div>
        </div>
    </div>
</div>
</body>
</html>