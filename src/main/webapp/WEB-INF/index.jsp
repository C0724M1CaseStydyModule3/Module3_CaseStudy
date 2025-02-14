<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>JSP - Hello World</title>
  <!-- Bootstrap CSS -->
  <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/4.6.2/css/bootstrap.min.css">

  <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">
  <!-- Link file CSS -->
  <link rel="stylesheet" href="style.css" />
</head>
</head>
<body>
<!-- Header -->
<header id="header" class="bg-primary flex-center">
  <div class="logo flex-center">
    <a href="./">
      <img src="./src/image/Logo Thế Giới Di Động - MWG - B-H.png" alt="Logo">
    </a>
  </div>
  <nav class="flex-center">

    <div class="input-group">
      <input type="text" class="form-control" placeholder="Nhập tên sản phẩm"
             aria-label="Recipient's username" aria-describedby="basic-addon2"
             oninput="searchProducts(this.value)">
      <div id="searchResults" class="search-results"></div>
    </div>

    <a href class="clear-a font-primary">Iphone</a>
    <a href class="clear-a font-primary">Samsung</a>
    <a href class="clear-a font-primary">Vivo</a>
  </nav>
  <div class="ultility">
    <div id="cart" class="dropdown">
        <button class="btn btn-primary dropdown-toggle" type="button" id="cartDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Giỏ hàng
        </button>
        <div class="dropdown-menu" aria-labelledby="cartDropdown" id="cartList">
            <!-- Giỏ hàng sẽ được hiển thị ở đây -->
        </div>
        <button class="btn btn-success" onclick="checkout()">Thanh toán</button>
    </div>
    <div class="flex-center user float-left">
      <a href="adminLogin">
        <i class="fa-solid fa-circle-user font-primary"></i>
        <p class="font-primary clear-p m-left-5">Đăng nhập
        </p>
      </a>
    </div>
  </div>
</header>

<div class="container">

  <!-- Carousel -->
  <div id="carouselExampleControls" class="carousel slide m-top-70"
       data-ride="carousel">
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img src="./src/carousel/banner-web-slide-12series.webp"
             class="d-block w-100" alt="...">
      </div>
      <div class="carousel-item">
        <img src="./src/carousel/banner-web-slide-13.webp"
             class="d-block w-100" alt="...">
      </div>
      <div class="carousel-item">
        <img src="./src/carousel/banner-web-slide-s24u.webp"
             class="d-block w-100" alt="...">
      </div>
    </div>
    <button class="carousel-control-prev opa-02" type="button"
            data-target="#carouselExampleControls" data-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </button>
    <button class="carousel-control-next opa-02" type="button"
            data-target="#carouselExampleControls" data-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </button>
  </div>


  <c:forEach items="${phones}" var="phone">
    <div class="card">
      <img src="../src/image/iphone13.png" class="card-img-top" alt="Image of ${phone.phoneName}" style="width: 50px">
      <h5 class="card-title">${phone.phoneName}</h5>
      <p class="card-text">${phone.description}</p>
      <a href="#" class="btn btn-primary">Thêm vào giỏ hàng</a>
    </div>
  </c:forEach>

  <c:forEach items="${phones}" var="phone" varStatus="temp">
 ${phone}
  </c:forEach>


  <div id="intro">
    <div class="row">

      <!-- Intro's logo -->
      <div class="col-2 m-0 flex-center p-right-0">
        <img src="./src/image/Logo Thế Giới Di Động - MWG.png" alt>
      </div>

      <!-- Intro's text -->
      <div class="col-10 p-left-0 m-0">
        <p class="clear-p">
          Công ty TNHH Thế Giới Di Động (Mobile World Co. Ltd) thành lập vào
          tháng 03/2004 bởi 5 thành viên đồng sáng lập là Trần Lê Quân,
          Nguyễn Đức Tài, Đinh Anh Huân, Điêu Chính Hải Triều và Trần Huy
          Thanh Tùng, lĩnh vực hoạt động chính của công ty bao gồm: mua bán
          sửa chữa các thiết bị liên quan đến điện thoại di động, thiết bị
          kỹ thuật số và các lĩnh vực liên quan đến thương mại điện tử.Bằng
          trải nghiệm về thị trường điện thoại di động từ đầu những năm
          1990, cùng với việc nghiên cứu kỹ tập quán mua hàng của khách hàng
          Việt Nam, thegioididong.com đã xây dựng một phương thức kinh doanh
          chưa từng có ở Việt Nam trước đây. Công ty đã xây
        </p>
      </div>
    </div>
    <div class="row">
      <div class="col-12 p-h-15 m-0">
        <p class="clear-p">
          dựng được một phong cách tư vấn bán hàng đặc biệt nhờ vào một đội
          ngũ nhân viên chuyên nghiệp và trang web www.thegioididong.com hỗ
          trợ như là một cẩm nang về điện thoại di động và một kênh thương
          mại điện tử hàng đầu tại Việt Nam.Hiện nay, số lượng điện thoại
          bán ra trung bình tại thegioididong.com khoảng 300.000 máy/tháng
          chiếm khoảng 15% thị phần điện thoại chính hãng cả nước. Trung
          bình một tháng bán ra hơn 10.000 laptop trở thành Nhà bán lẻ bán
          ra số lượng laptop lớn nhất cả nước.Việc bán hàng qua mạng và giao
          hàng tận nhà trên phạm vi toàn quốc đã được triển khai từ đầu năm
          2007, hiện nay lượng khách hàng mua laptop thông qua website
          www.thegioididong.com và tổng đài 1900.561.292 đã tăng lên đáng
          kể, trung bình 5.000 - 6.000 đơn hàng mỗi tháng. Đây là một kênh
          bán hàng tiềm năng và là một công cụ hữu hiệu giúp các khách hàng
          ở những khu vực xa mua được một sản phẩm ưng ý khi không có điều
          kiện xem trực tiếp sản phẩm.www.thegioididong.com là website
          thương mại điện tử lớn nhất Việt Nam với số lượng truy cập hơn
          1.200.000 lượt ngày, cung cấp thông tin chi tiết về giá cả, tính
          năng kĩ thuật của hơn 500 model điện thoại và 200 model laptop của
          tất cả các nhãn hiệu chính thức tại Việt Nam.Thegioididong.com đã
          nhận được nhiều giải thưởng do người tiêu dùng cũng như các đối
          tác bình chọn trong nhiều năm liền. Một số giải thưởng tiêu biểu:
        </p>
        <p class="clear-p">
          Tháng 3/2004: Ra quyết định thành lập công tySau 3 tháng thành
          lập, công ty ra mắt website www.thegioimobi.com và 3 cửa hàng nhỏ
          tại đường Hoàng Văn Thụ, Lê Lai, CMT8 (Tp.HCM).Tháng 10/2004, ban
          giám đốc công ty quyết định khai trương siêu thị đầu tiên tại 89A,
          Nguyễn Đình Chiểu, Tp.HCM với tên gọi ban đầu là
          www.thegioididong.com. Với quy mô hơn 200 m2, siêu thị được xây
          dựng khang trang này đã thành công rực rỡ bởi nó khác biệt hoàn
          toàn với hơn 10.000 cửa hàng điện thoại di động nhỏ lẻ lúc bấy giờ
          trên địa bàn thành phố Hồ Chí Minh.Tháng 1/2005 siêu thị thứ 2 của
          www.thegioididong.com ra mắt tại số 330 Cộng Hòa (TPHCM).Tháng
          1/2006, siêu thị thứ 3 được khai trương tại 26 Phan Đăng Lưu và 2
          tháng sau lại thêm 1 cửa hàng nữa ra đời tại 182A, Nguyễn Thị Minh
          Khai.Giai đoạn 2007 - 2009 là giai đoạn thegioididong.com mở rộng
          ở TPHCM, Đà Nẵng và Hà Nội.Đến cuối năm 2009, thegioididong.com có
          tổng cộng 38 siêu thị với 19 siêu thị tại TPCHM, 5 siêu thị tại Hà
          Nội, 2 siêu thị tại Đà Nẵng và 12 siêu thị khác tại các tỉnh Đồng
          Nai, Long An, Bình Dương, Cà Mau,…2007 cũng là năm Công ty TNHH
          Thế Giới Di Động chuyển đổi sang Công ty Cổ phần để mở rộng cơ hội
          phát triển.Từ năm 2010 tới 2011 đánh dấu bước phát triển vượt bậc
          với sự ra đời liên tiếp của các siêu thị thegioididong.com. Đoàn
          quân thegioididong.com đã thực hiện cuộc dàn quân đầy kiêu hãnh,
          khắp nơi trên cả nước đều có sự hiện diện của màu vàng đen đặc
          trưng. Cuối năm 2010, thegioididong.com tăng gấp đôi số siêu thị
          so với năm 2009, cuối năm 2011, số siêu thị tăng lên gần gấp 3 so
          với năm 2010.Một sự kiện có ý nghĩa quan trọng vào cuối năm 2010
          là sự ra mắt của một thành viên khác thuộc thegioididong.com - Hệ
          thống bán lẻ điện máy toàn quốc - dienmayxanh.com. Tính đến tháng
          6/2012, dienmayxanh.com đã có 12 siêu thị tại 9 tỉnh thành trên cả
          nước và sẽ tiếp tục mở rộng để phục vụ khách hàng trên cả nước.Đến
          nay, thegioididong.com đã có hơn 220 siêu thị phủ sóng khắp 63/63
          tỉnh thành trên cả nước.3. Đội ngũ nhân sựHội Đồng Quản Trị do Đại
          hội đồng cổ đông tín nhiệm bầu ra. Hội đồng quản trị là cơ quan
          quản trị toàn bộ mọi hoạt động của công ty, các chiến lược, kế
          hoạch sản xuất và kinh doanh trong nhiệm kỳ của mình.Ban Giám đốc
          sẽ chịu trách nhiệm về các mặt hoạt động của công ty trước Hội
          đồng Quản trị và pháp luật hiện hành, quyết định các chủ trương,
          chính sách, mục tiêu chiến lược của công ty, đồng thời giám sát và
          kiểm tra tất cả các hoạt động về sản xuất kinh doanh, đầu tư của
          công ty.Gồm có 5 khối hoạt động chính và độc lập với nhau, với đội
          ngũ nhân viên phần lớn là trình độ cao đẳng, đại học và một số sau
          đại học.
        </p>
      </div>
    </div>
  </div>

</div>

<!-- Introduction -->

</div>

<!-- Footer -->
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

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/4.6.2/js/bootstrap.bundle.min.js"></script>

<script
        src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/4.6.2/js/bootstrap.bundle.min.js"></script>

<!-- Link file javascript -->
<script src="index.js"></script>
</body>
</html>