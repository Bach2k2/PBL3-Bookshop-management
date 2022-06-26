<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Danh sách khách hàng</title>
</head>
<body>
<h1>List of Account</h1>
<a href="/account?action=add">Create a customer</a>
<table class="table table-striped" border="1px">
    <thead>
    <tr>
        <th>ID customer</th>
        <th>Username</th>
        <th>First name</th>
        <th>Last name</th>
        <th>Gender</th>
        <th>Date of birth</th>
        <th>Email</th>
        <th>Phone</th>
        <th>Address</th>
        <th colspan="2">Action</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${customerList}" var="customer">
        <tr>
            <td><c:out value="${customer.getIdCustomer()}"></c:out></td>
            <td><c:out value="${customer.getUsername()}"></c:out></td>
            <td><c:out value="${customer.getFirstName()}"></c:out></td>
            <td><c:out value="${customer.getLastName()}"></c:out></td>
            <td><c:out value="${customer.isGender()}"></c:out></td>
            <td><c:out value="${customer.getDateOfBirth()}"></c:out></td>
            <td><c:out value="${customer.getEmail()}"></c:out></td>
            <td><c:out value="${customer.getPhone()}"></c:out></td>
            <td><c:out value="${customer.getAddress()}"></c:out></td>
            <td><c:url value="/customer?action=edit">Edit</c:url></td>
            <td><c:url value="/customer?action=delete">Delete</c:url></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>

</html>
