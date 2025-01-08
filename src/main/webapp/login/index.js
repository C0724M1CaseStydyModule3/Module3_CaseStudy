let users = [
    { phone: "0123456789", password: "123456" },
    { phone: "0987654321", password: "abcdef" }
];

// Xử lý đăng nhập
document.querySelector("#loginForm").addEventListener("submit", function (e) {
    e.preventDefault(); // Ngăn chặn reload trang
    const phone = document.querySelector("#phone").value.trim();
    const password = document.querySelector("#password").value.trim();
    const errorElement = document.querySelector("#error");

    const user = users.find(u => u.phone === phone);

    if (user && user.password === password) {
        errorElement.style.display = "none";
        alert("Đăng nhập thành công!");

        window.location.href = "order_list.html";
    } else if (user) {
        errorElement.textContent = "Sai mật khẩu!";
        errorElement.style.display = "block";
    } else {
        errorElement.textContent = "Số điện thoại không tồn tại!";
        errorElement.style.display = "block";
    }
});

// Xử lý đăng ký
document.querySelector(".btn.bg-primary").addEventListener("click", function (e) {
    e.preventDefault(); // Ngăn chặn reload trang
    const phone = document.querySelector("#phone").value.trim();
    const password = document.querySelector("#password").value.trim();
    const errorElement = document.querySelector("#error");

    if (!phone || !password) {
        errorElement.textContent = "Vui lòng nhập đầy đủ thông tin!";
        errorElement.style.display = "block";
        return;
    }

    const user = users.find(u => u.phone === phone);

    if (user) {
        errorElement.textContent = "Số điện thoại đã được đăng ký!";
        errorElement.style.display = "block";
    } else {
        users.push({ phone, password });
        errorElement.style.display = "none";
        alert("Đăng ký thành công!");
    }
});