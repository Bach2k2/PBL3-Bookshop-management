<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>The Account List</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<h1>List of Account</h1>
<a href="/account?action=add">Create a account</a>
<table class="table table-striped" id="table-list">
    <thead>
    <tr>
        <th>Username</th>
        <th>Password</th>
        <th>Sign-up Date</th>
        <th>Last login</th>
        <th>Status</th>
        <th>Role</th>
        <th colspan="2">Action</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${accountList}" var="account">
        <tr>
            <td><c:out value="${account.getUsername()}"></c:out></td>
            <td><c:out value="${account.getPassword()}"></c:out></td>
            <td><c:out value="${account.getSignUpDate()}"></c:out></td>
            <td><c:out value="${account.getLastLogin()}"></c:out></td>
            <td><c:out value="${account.getStatus()}"></c:out></td>
            <td>
                <c:out value="${account.getRole().getName()}"></c:out></td>
            <td><a href="<c:url value="account?action=edit"/>" >Edit</a></td>
            <td><a href="<c:url value="account?action=delete"/>" >Remove</a></td>
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
