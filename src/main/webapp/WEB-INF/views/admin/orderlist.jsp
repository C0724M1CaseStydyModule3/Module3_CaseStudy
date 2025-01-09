<%--
  Created by IntelliJ IDEA.
  User: Nitro V
  Date: 1/9/2025
  Time: 7:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
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

        .m-top-70{
            margin-top: 70px;
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

    </style>
</head>
<body class="bg-white text-secondary">
<header id="header" class="bg-primary flex-center">
    <div class="logo flex-center">
        <img src="./webapp/image/Logo Thế Giới Di Động - MWG - B-H.png" alt="Logo">
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
    </div>
</header>
<div class="container m-top-70 custom-margin">
    <div class="card">
        <div class="card-header bg-hover-primary text-secondary">
            <h4 class="text-center">Danh Sách Đơn Hàng</h4>
        </div>
        <div class="card-body">
            <table class="table table-bordered table-striped">
                <thead class="bg-hover-primary text-secondary">
                <tr>
                    <th>STT</th>
                    <th>Mã Đơn Hàng</th>
                    <th>Tên Khách Hàng</th>
                    <th>Số Điện Thoại</th>
                    <th>Ngày Mua</th>
                    <th>Số Lượng</th>
                    <th>Tổng Tiền</th>
                    <th>Trạng Thái</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>1</td>
                    <td>ORD001</td>
                    <td>Nguyen Van A</td>
                    <td>0123456789</td>
                    <td>2024-12-31</td>
                    <td>1</td>
                    <td>15.000.000</td>
                    <td>Đã Hủy</td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>ORD002</td>
                    <td>Nguyen Van B</td>
                    <td>0987654321</td>
                    <td>2025-01-01</td>
                    <td>2</td>
                    <td>30.000.000</td>
                    <td>Hoàn Thành</td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
        crossorigin="anonymous"></script>
</body>
</html>
