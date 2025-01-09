<%--
  Created by IntelliJ IDEA.
  User: Nitro V
  Date: 1/9/2025
  Time: 5:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Đăng nhập Admin</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <%--    Bootstrap CSS--%>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body{
            position: relative;
        }

        .bg-primary {
            background-color: #FFD400 !important;
        }

        .bg-hover-primary {
            background-color: #FFEE99 !important;
        }

        .bg-white {
            background-color: #FFFFFF; !important;
        }

        .btn-primary{
            background-color: green !important;
            color: #FEFAFF !important;
        }

        .text-secondary{
            color: #333333 !important;
        }

        .text-center{
            text-align: center;
        }

        .font-primary{
            font-size: 20px;
        }

        .clear-a {
            text-decoration: none;
            color: black;
            font-weight: bold;
        }

        .clear-p{
            margin: 0;
            padding: 0;
        }

        .flex-center{
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .float-left{
            float: left;
        }

        .m-left-5{
            margin-left: 5px;
        }

        .container{
            padding: 0;
        }

        #header {
            position: fixed;
            justify-content: space-between;
            height: 70px;
            width: 100%;
            background-color: black;
            z-index: 2;
            top: 0;
        }

        .logo{
            flex:1;
            width: 100%;
            height: 100%;
        }

        .logo:hover{
            cursor: pointer;
        }

        .logo img {
            width: 230px;
            height: 60%;
            object-fit:contain;
        }

        nav {
            height: 100%;
            max-width: 1140px;
            justify-content: space-evenly !important;
            flex:4;
        }

        .ultility{
            flex:1;
            justify-content: space-around;
            height: 100%;
            width: 100%;
        }

        .cart{
            width: 50%;
            height: 100%;
        }

        .cart:hover{
            cursor: pointer;
            background-color: #FFEE99;
        }

        .user{
            width: 50%;
            height: 100%;
        }

        .user:hover{
            cursor: pointer;
            background-color: #FFEE99;
        }

        #intro img{
            width: 100px;
            object-fit: contain;
        }

        #intro p{
            text-align: justify;
        }

        #footer{
            height: 300px;
            width: 100%;
            padding: 40px 350px;
        }

    </style>
</head>
<body class="bg-white text-secondary">
<header id="header" class="bg-primary flex-center">
    <div class="logo flex-center">
        <img src="webapp/image/Logo Thế Giới Di Động - MWG - B-H.png" alt="Logo">
    </div>
    <nav class="flex-center">
        <a href class="clear-a font-primary">Trang Chủ</a>
        <a href class="clear-a font-primary">Iphone</a>
        <a href class="clear-a font-primary">Samsung</a>
        <a href class="clear-a font-primary">Vivo</a>
    </nav>
    <div class="ultility">
        <div class="flex-center cart float-left">
            <i class="fa-solid fa-cart-shopping font-primary"></i>
            <p class="font-primary clear-p m-left-5">Giỏ hàng</p>
        </div>
        <div class="flex-center user float-left">
            <i class="fa-solid fa-circle-user font-primary"></i>
            <p class="font-primary clear-p m-left-5">Đăng nhập</p>
        </div>
    </div>
</header>
<div class="container">
    <div class="row justify-content-center">
        </header>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-6 p-5 rounded bg-hover-primary shadow mt-5">
                    <h3 class="text-center text-secondary mb-4">Đăng Nhập Admin</h3>
                    <form action="/adminLogin" method="post">
                        <div class="form-group">
                            <label for="phone">Nhập số điện thoại</label>
                            <input type="text" id="phone" name="phone"
                                   class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label for="password">Mật khẩu</label>
                            <input type="password" id="password" name="password"
                                   class="form-control" required>
                        </div>
                        <button type="submit" class="btn btn-primary btn-block">Đăng nhập</button>
                        <button type="submit" class="btn btn-primary btn-block">Đăng ký</button>
                        <p id="error" class="text-danger mt-2 text-center" style="display: none">
                            <c:if test="${not empty error}">
                                %{error}
                            </c:if>
                        </p>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<footer id="footer" class="bg-primary">
    <div class="row">
        <div class="col-12 " style="text-align: left;">
            <h5>Tổng đài hỗ trợ</h5>
            <div class="col-6">
                <p class="clear-p">Tư Vấn:     0123456789 </p>
                <p class="clear-p">Bảo Hành:   0123456789</p>
                <p class="clear-p">Khiếu nại:  0123456789</p>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-12 " style="text-align: left;">
            <h5>Thông tin khác</h5>
            <div class="col-6">
                <p class="clear-p">Tuyển Dụng</p>
                <p class="clear-p">Góp Ý Kiến</p>
                <p class="clear-p">Chính Sách Bảo Hành</p>
            </div>
        </div>
    </div>
</footer>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"

        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
<script
        src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
        crossorigin="anonymous"></script>
</body>
</html>
