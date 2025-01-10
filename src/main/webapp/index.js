const iphoneList = [
    {
        imagePath: './src/image/iphone14.png',
        name: 'iPhone 13',
        price: 799,
        quantity: 2,
        description: 'Mô tả về iPhone 13'
    },
    {
        imagePath: './src/image/iphone14.png',
        name: 'iPhone 13 Pro',
        price: 999,
        description: 'Mô tả về iPhone 13 Pro'
    },
    {
        imagePath: './src/image/iphone14.png',
        name: 'iPhone 12',
        price: 699,
        description: 'Mô tả về iPhone 12'
    },
    {
        imagePath: './src/image/iphone14.png',
        name: 'iPhone 11',
        price: 599,
        description: 'Mô tả về iPhone 11'
    },
    {
        imagePath: './src/image/iphone14.png',
        name: 'iPhone SE',
        price: 399,
        description: 'Mô tả về iPhone SE'
    },
    {
        imagePath: './src/image/iphone14.png',
        name: 'iPhone 13 Mini',
        price: 699,
        description: 'Mô tả về iPhone 13 Mini'
    },
    {
        imagePath: './src/image/iphone14.png',
        name: 'iPhone 14',
        price: 899,
        description: 'Mô tả về iPhone 14'
    },
    {
        imagePath: './src/image/iphone14.png',
        name: 'iPhone 14 Pro',
        price: 1099,
        description: 'Mô tả về iPhone 14 Pro'
    },
    {
        imagePath: './src/image/iphone14.png',
        name: 'iPhone 14 Pro Max',
        price: 1199,
        description: 'Mô tả về iPhone 14 Pro Max'
    }
];

var cartList = [{
    imagePath: './src/image/iphone14.png',
    name: 'iPhone 13',
    price: 799,
    quantity: 2,
    description: 'Mô tả về iPhone 13'
}];

var phoneType = 'iphone';

function displayPhone() {
    switch (phoneType) {
        case 'iphone': {
            let divPhone = document.getElementById('phoneList');
            divPhone.innerHTML = iphoneList.map(item => `
                <div class="card" style="width: 31%; float:left; margin:10px">
                    <img src="${item.imagePath}" class="card-img-top" alt="${item.name}">
                    <div class="card-body">
                        <h5 class="card-title">${item.name}</h5>
                        <p class="card-text">${item.description}</p>
                        <p class="card-text"><strong>Price: $${item.price}</strong></p>
                    </div>
                 <button onclick="addToCart('${item.name}', ${item.price}, '${item.description}')" class="btn btn-primary">Mua hàng</button>
                </div>
            `).join('');
            break;
        }
    }
}

function searchProducts(keyword) {
    const searchResults = document.getElementById('searchResults');
    
    // Nếu input rỗng, ẩn kết quả
    if (!keyword.trim()) {
        searchResults.style.display = 'none';
        return;
    }

    keyword = keyword.toLowerCase();
    const filteredProducts = iphoneList.filter(phone => 
        phone.name.toLowerCase().includes(keyword)
    );
    
    if (filteredProducts.length === 0) {
        searchResults.innerHTML = '<div class="search-item">Không tìm thấy sản phẩm</div>';
    } else {
        searchResults.innerHTML = filteredProducts.map(phone => `
            <div class="search-item" onclick="selectProduct('${phone.name}')">
                <img src="${phone.imagePath}" alt="${phone.name}">
                <div class="search-item-info">
                    <h6>${phone.name}</h6>
                    <p>$${phone.price}</p>
                </div>
            </div>
        `).join('');
    }
    
    searchResults.style.display = 'block';
}

// Hàm xử lý khi chọn sản phẩm
function selectProduct(productName) {
    const input = document.querySelector('.input-group input');
    input.value = productName;
    document.getElementById('searchResults').style.display = 'none';
}

// Thêm sự kiện click outside để đóng dropdown
document.addEventListener('click', function(e) {
    const searchResults = document.getElementById('searchResults');
    const inputGroup = document.querySelector('.input-group');
    
    if (!inputGroup.contains(e.target)) {
        searchResults.style.display = 'none';
    }
});

// Hàm thêm sản phẩm vào giỏ hàng
function addToCart(name, price, description) {
    const existingProduct = cartList.find(item => item.name === name);
    if (existingProduct) {
        existingProduct.quantity++;
    } else {
        cartList.push({imagePath:"./src/image/iphone14.png", name:name, price:price, description:description, quantity: 1 });
    }
    displayCart();
}

// Hàm hiển thị giỏ hàng
function displayCart() {
    const cartList = document.getElementById('cartList');
    cartList.innerHTML = cartList.map(item => `
        <div class="cart-item">
            <img src="${item.imagePath}" alt="${item.name}">
            <div>${item.name}</div>
            <div>$${item.price} x ${item.quantity}</div>
            <button onclick="removeFromCart('${item.name}')">-</button>
            <button onclick="increaseQuantity('${item.name}')">+</button>
        </div>
    `).join('');
}

// Hàm tăng số lượng sản phẩm
function increaseQuantity(productName) {
    const product = cartList.find(item => item.name === productName);
    if (product) {
        product.quantity++;
        displayCart();
    }
}

// Hàm giảm số lượng sản phẩm
function removeFromCart(productName) {
    const productIndex = cartList.findIndex(item => item.name === productName);
    if (productIndex > -1) {
        cart[productIndex].quantity--;
        if (cart[productIndex].quantity === 0) {
            cartList.splice(productIndex, 1);
        }
        displayCart();
    }
}

displayPhone();