<%--
  Created by IntelliJ IDEA.
  User: Nitro V
  Date: 1/9/2025
  Time: 2:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Danh sách điện thoại</title>
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
        <div class="card-header bg-hover-primary text-secondary">
            <h4 class="text-center">Danh Sách Điện Thoại</h4>
        </div>
        <div class="card-body">
            <button class="btn btn-primary" onclick="window.location.href='/phone?action=create'">Thêm mới</button>
            <table class="table table-hover bg-white text-secondary">
                <thead>
                <tr>
                    <th scope="col" style="text-align: center">STT</th>
                    <th scope="col" style="text-align: center">ID Điện Thoại</th>
                    <th scope="col" style="text-align: center">Tên Điện Thoại</th>
                    <th scope="col" style="text-align: center">Thương Hiệu</th>
                    <th scope="col" style="text-align: center">Mô tả</th>
                    <th scope="col" style="text-align: center">Giá</th>
                    <th scope="col" style="text-align: center">Số Lượng</th>
                    <th colspan="2" style="text-align: center">Chức Năng</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${phones}" var="phone" varStatus="temp">
                    <tr>
                        <td style="text-align: center">${temp.count}</td>
                        <td style="text-align: center">${phone.phoneID}</td>
                        <td style="text-align: center">${phone.phoneName}</td>
                        <td style="text-align: center">${phone.phoneBrand}</td>
                        <td style="text-align: center">${phone.description}</td>
                        <td style="text-align: center">${phone.price}</td>
                        <td style="text-align: center">${phone.stock}</td>
                        <td><button class="btn btn-warning">Sửa</button></td>
                        <td><button class="btn btn-danger" data-toggle="modal" data-target="#modalDelete${phone.phoneID}">Xóa</button></td>
                        <div class="modal fade" id="modalDelete${phone.phoneID}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel">Thông báo</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        Bạn có chắc muốn xóa điện thoại ${phone.phoneName} có ID là ${phone.phoneID} không?
                                        <small style="color: red; font-style: italic">Lưu ý hành động này không thể hoàn tác!</small>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
                                        <button type="button" class="btn btn-danger" onclick="window.location.href=''">Xác nhận</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</html>
