<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trang Thanh Toán</title>
</head>
<body>
<header>
    <h1>Thanh Toán</h1>
</header>
<main>
    <!-- Hiển thị giỏ hàng -->
    <section id="cart-items">
        <h2>Sản phẩm trong giỏ hàng</h2>
        <ul id="cart-list">
            <!-- Danh sách sản phẩm sẽ được hiển thị bằng JavaScript -->
        </ul>
    </section>

    <!-- Form nhập thông tin giao hàng -->
    <section id="shipping-info">
        <h2>Thông tin giao hàng</h2>
        <form id="checkout-form">
            <label for="recipient-name">Tên người nhận:</label>
            <input type="text" id="recipient-name" name="recipient-name" placeholder="Nhập tên người nhận" required>

            <label for="phone">Số điện thoại:</label>
            <input type="tel" id="phone" name="phone" placeholder="Nhập số điện thoại" required>

            <label for="address">Địa chỉ nhận hàng:</label>
            <input type="text" id="address" name="address" placeholder="Nhập địa chỉ nhận hàng" required>

            <button type="submit">Thanh Toán</button>

            <!-- Nút thanh toán qua VNPay -->
            <button type="button" id="vnpay-button">Thanh toán qua VNPay</button>
        </form>
    </section>

    <!-- Kết quả thanh toán -->
    <section id="payment-status">
        <h2>Kết quả thanh toán</h2>
        <p id="status-message">Chưa thực hiện thanh toán.</p>
    </section>
</main>

<script>
    // Hiển thị sản phẩm trong giỏ hàng
    const cartItems = JSON.parse(localStorage.getItem('cart')) || [];
    const cartList = document.getElementById('cart-list');

    if (cartItems.length === 0) {
        cartList.innerHTML = '<li>Giỏ hàng trống</li>';
    } else {
        cartItems.forEach(item => {
            const li = document.createElement('li');
            li.textContent = `${item.name} - ${item.price.toLocaleString()} VND`;
            cartList.appendChild(li);
        });
    }

    // Xử lý form thanh toán
    document.getElementById('checkout-form').addEventListener('submit', (e) => {
        e.preventDefault();

        // Thu thập thông tin từ form
        const name = document.getElementById('recipient-name').value.trim();
        const phone = document.getElementById('phone').value.trim();
        const address = document.getElementById('address').value.trim();

        if (!validateInput(name, phone, address)) {
            alert('Vui lòng nhập đầy đủ và đúng thông tin.');
            return;
        }

    // Hiển thị kết quả thanh toán
        const statusMessage = document.getElementById('status-message');
        statusMessage.textContent = 'Thông tin thanh toán đã được gửi thành công!';
        statusMessage.style.color = 'green';
    });

    // Xử lý nút VNPay
    document.getElementById('vnpay-button').addEventListener('click', () => {
        alert('Đây là nút thanh toán qua VNPay (Cần kết nối với server để xử lý).');
    });

    // Kiểm tra đầu vào
    function validateInput(name, phone, address) {
        const phoneRegex = /^\d{10,11}$/; // Số điện thoại 10-11 chữ số
        return name !== '' && phoneRegex.test(phone) && address !== '';
    }
</script>
</body>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f5f5f5;
        color: #333;
    }

    header {
        background-color: #fdd835;
        color: #333;
        padding: 1rem;
        text-align: center;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }

    header h1 {
        margin: 0;
        font-size: 1.5rem;
    }

    main {
        max-width: 800px;
        margin: 2rem auto;
        padding: 1rem;
        background: #fff;
        box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
        border-radius: 8px;
    }

    section {
        margin-bottom: 2rem;
    }

    section h2 {
        font-size: 1.2rem;
        color: #333;
        border-bottom: 2px solid #fdd835;
        padding-bottom: 0.5rem;
        margin-bottom: 1rem;
    }

    #cart-list {
        list-style: none;
        padding: 0;
        margin: 0;
    }

    #cart-list li {
        padding: 0.5rem 0;
        border-bottom: 1px solid #eee;
    }

    form label {
        display: block;
        font-weight: bold;
        margin: 1rem 0 0.5rem;
    }

    form input {
        width: 100%;
        padding: 0.5rem;
        font-size: 1rem;
        margin-bottom: 1rem;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }

    form button {
        width: 100%;
        padding: 0.75rem;
        font-size: 1rem;
        color: #fff;
        background-color: #fdd835;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        transition: background-color 0.3s ease;
        margin-bottom: 1rem; /* Khoảng cách giữa các nút */
    }

    form button:hover {
        background-color: #e6be00;
    }

    #vnpay-button {
        background-color: #007bff; /* Màu xanh VNPay */
        color: white;
        transition: background-color 0.3s ease, transform 0.2s ease;
    }

    #vnpay-button:hover {
        background-color: #0056b3; /* Màu xanh đậm hơn khi hover */
        transform: scale(1.02); /* Phóng to nhẹ khi hover */
    }

    #vnpay-button:active {
        background-color: #003f7f;
    }
</style>



