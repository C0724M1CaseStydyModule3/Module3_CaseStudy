const iphoneList = [
    {
        imagePath: './src/image/iphone13.webp',
        name: 'iPhone 13',
        price: 799,
        description: 'Mô tả về iPhone 13'
    },
    {
        imagePath: './src/image/iphone13.webp',
        name: 'iPhone 13 Pro',
        price: 999,
        description: 'Mô tả về iPhone 13 Pro'
    },
    {
        imagePath: './src/image/iphone13.webp',
        name: 'iPhone 12',
        price: 699,
        description: 'Mô tả về iPhone 12'
    },
    {
        imagePath: './src/image/iphone13.webp',
        name: 'iPhone 11',
        price: 599,
        description: 'Mô tả về iPhone 11'
    },
    {
        imagePath: './src/image/iphone13.webp',
        name: 'iPhone SE',
        price: 399,
        description: 'Mô tả về iPhone SE'
    },
    {
        imagePath: './src/image/iphone13.webp',
        name: 'iPhone 13 Mini',
        price: 699,
        description: 'Mô tả về iPhone 13 Mini'
    },
    {
        imagePath: './src/image/iphone13.webp',
        name: 'iPhone 14',
        price: 899,
        description: 'Mô tả về iPhone 14'
    },
    {
        imagePath: './src/image/iphone13.webp',
        name: 'iPhone 14 Pro',
        price: 1099,
        description: 'Mô tả về iPhone 14 Pro'
    },
    {
        imagePath: './src/image/iphone13.webp',
        name: 'iPhone 14 Pro Max',
        price: 1199,
        description: 'Mô tả về iPhone 14 Pro Max'
    }
];



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
                 <button onclick ="Themvaogiohang(this)" class="btn btn-primary">Mua hàng</button>
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

displayPhone();