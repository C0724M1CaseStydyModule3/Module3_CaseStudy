<%--
  Created by IntelliJ IDEA.
  User: Nitro V
  Date: 1/9/2025
  Time: 4:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Thêm mới sản phẩm</title>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
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

        .btn-secondary{
            background-color: #333333 !important;
            color: #FFFFFF !important;
        }

        .text-primary{
            color: #FEFAFF !important;
        }

        .text-secondary{
            color: #333333 !important;
        }

        .text-center{
            text-align: center;
        }

        .text-right{
            text-align: right;
        }

        .text-left{
            text-align: left;
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

        .m-bottom-20{
            margin-bottom: 20px;
        }

        .m-0{
            margin: 0;
        }

        .m-h-30{
            margin: 0 30px;
        }

        .m-auto{
            margin: auto;
        }

        .p-30{
            padding: 30px;
        }

        .p-right-0{
            padding-right: 0;
        }

        .p-left-0{
            padding-left: 0;
        }

        .p-right-20{
            padding-right: 20px;
        }

        .p-h-15{
            padding: 0 15px;
        }

        .p-h-left-15{
            padding-left: 15px;
        }

        .p-h-right-15{
            padding-right: 15px;
        }

        .p-0{
            padding: 0;
        }

        .opa-02{
            opacity: 0.2;
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

        #header1 {
            margin-bottom: 50px;
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

        #content{
            margin: 20px 0;
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

        #intro{
            margin: 10px 0;
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

        .carousel-control-next{
            justify-content: flex-end;
            margin-right: 10px;
        }

        .carousel-control-prev{
            justify-content: flex-start;
            margin-left: 10px;
        }
        label{
            font-weight: bold;
            font-size: 1.2rem;
        }
    </style>
</head>
<body class="bg-white text-secondary">
<header id="header" class="bg-primary flex-center">
    <div class="logo flex-center">
        <img src="/webapp/image/Logo Thế Giới Di Động - MWG - B-H.png" alt="Logo">
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
        <div class="bg-hover-primary">
            <h3 class="text-center text-secondary">Thông tin thêm mới</h3>
            <form method="post">
                <div class="form-group">
                    <label for="phoneID">ID Điện Thoại</label>
                    <input type="text" class="form-control" id="phoneID">
                </div>
                <div class="form-group">
                    <label for="phoneName">Tên Điện Thoại</label>
                    <input type="text" class="form-control" id="phoneName">
                </div>
                <div class="form-group">
                    <label for="phoneBrand">Thương Hiệu</label>
                    <input type="text" class="form-control" id="phoneBrand">
                </div>
                <div class="form-group">
                    <label for="description">Mô Tả</label>
                    <input type="text" class="form-control" id="description">
                </div>
                <div class="form-group">
                    <label for="price">Giá</label>
                    <input type="text" class="form-control" id="price">
                </div>
                <div class="form-group">
                    <label for="stock">Số Lượng</label>
                    <input type="text" class="form-control" id="stock">
                </div>
                <div class="d-flex justify-content-center">
                    <button type="submit" class="btn btn-primary">Thêm mới</button>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</html>
