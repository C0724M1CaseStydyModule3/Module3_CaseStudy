<!doctype html>
<html lang="en">

<head>
    <title>Login</title>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <!-- Bootstrap SCC -->
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/4.6.2/css/bootstrap.min.css">

    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">

    <link rel="stylesheet" href="style.css">
</head>
<body class="bg-white text-secondary">
<header id="header" class="bg-primary flex-center">
    <a href="../index.jsp" class="clear-a">
        <div class="logo flex-center">
            <img src="https://raw.githubusercontent.com/C0724M1CaseStydyModule3/Module3_CaseStudy/refs/heads/main/src/image/Logo%20Th%E1%BA%BF%20Gi%E1%BB%9Bi%20Di%20%C4%90%E1%BB%99ng%20-%20MWG%20-%20B-H.png" alt="Logo">
        </div>
    </a>
    <nav class="flex-center">
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
            <p class="font-primary clear-p m-left-5">Đăng nhập
            </p>
        </div>
    </div>
</header>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6 p-5 rounded bg-white shadow mt-5">
            <h3 class="text-center text-secondary mb-4">Đăng Nhập</h3>
            <form id="loginForm">
                <div class="form-group">
                    <label for="phone">Nhập số điện thoại</label>
                    <input type="text" id="phone" name="phone" class="form-control" required>

                </div>
            </div>
        </header>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-6 p-5 rounded bg-hover-primary shadow mt-5">
                    <h3 class="text-center text-secondary mb-4">Đăng Nhập</h3>
                    <form id="loginForm">
                        <div class="form-group">
                            <label for="username">Tên đăng nhập</label>
                            <input type="text" id="username" name="username"
                                class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label for="password">Mật khẩu</label>
                            <input type="password" id="password" name="password"
                                class="form-control" required>
                        </div>
                        <button type="submit"
                            class="btn btn-primary btn-block">Đăng nhập</button>
                        <p id="error" class="text-danger mt-2 text-center"
                            style="display: none">Tên người dùng hoặc mật khẩu
                            không hợp lệ!</p>
                    </form>
                </div>

                <button type="submit" class="btn btn-primary btn-block">Đăng nhập</button>
                <button type="submit" class="btn bg-primary btn-block">Đăng ký</button>
                <p id="error" class="text-danger mt-2 text-center" style="display: none">Tên người dùng hoặc mật khẩu không hợp lệ!</p>
            </form>
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

<script src="index.js"></script>
</body>
</html>