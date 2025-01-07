<%--
  Created by IntelliJ IDEA.
  User: Nitro V
  Date: 1/7/2025
  Time: 12:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Danh sách điện thoại</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/4.6.2/css/bootstrap.min.css">

    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">
</head>
<body>
<div class="container">
    <table class="table table-hover">
        <thead>
        <tr>
            <th>PhoneID</th>
            <th>PhoneName</th>
            <th>PhoneBrand</th>
            <th>Description</th>
            <th>Price</th>
            <th>Stock</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${phones}" var="phone" varStatus="temp">
            <tr>
                <td>${temp.count}</td>
                <td>${phone.phoneName}</td>
                <td>${phone.phoneBrand}</td>
                <td>${phone.description}</td>
                <td>${phone.price}</td>
                <td>${phone.stock}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/4.6.2/js/bootstrap.bundle.min.js"></script>
</body>
</html>