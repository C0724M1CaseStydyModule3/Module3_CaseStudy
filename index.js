const iphoneList = [
    {
        imagePath: 'path/to/image1.jpg',
        name: 'iPhone 13',
        price: 799,
        description: 'Mô tả về iPhone 13'
    },
    {
        imagePath: 'path/to/image2.jpg',
        name: 'iPhone 13 Pro',
        price: 999,
        description: 'Mô tả về iPhone 13 Pro'
    },
    {
        imagePath: 'path/to/image3.jpg',
        name: 'iPhone 12',
        price: 699,
        description: 'Mô tả về iPhone 12'
    },
    {
        imagePath: 'path/to/image4.jpg',
        name: 'iPhone 11',
        price: 599,
        description: 'Mô tả về iPhone 11'
    },
    {
        imagePath: 'path/to/image5.jpg',
        name: 'iPhone SE',
        price: 399,
        description: 'Mô tả về iPhone SE'
    },
    {
        imagePath: 'path/to/image6.jpg',
        name: 'iPhone 13 Mini',
        price: 699,
        description: 'Mô tả về iPhone 13 Mini'
    },
    {
        imagePath: 'path/to/image7.jpg',
        name: 'iPhone 14',
        price: 899,
        description: 'Mô tả về iPhone 14'
    },
    {
        imagePath: 'path/to/image8.jpg',
        name: 'iPhone 14 Pro',
        price: 1099,
        description: 'Mô tả về iPhone 14 Pro'
    },
    {
        imagePath: 'path/to/image9.jpg',
        name: 'iPhone 14 Pro Max',
        price: 1199,
        description: 'Mô tả về iPhone 14 Pro Max'
    }
];

var phoneType = 'iphone';

function displayPhone() {
    switch (phoneType) {
        case 'iphone': {
            console.log(phoneType)
            let divPhone = document.getElementById('phoneList');
            divPhone.innerHTML = iphoneList.map(phone => `
                <div class="card" style="width: 18rem;">
                    <img src="${phone.imagePath}" class="card-img-top" alt="${phone.name}">
                    <div class="card-body">
                        <h5 class="card-title">${phone.name}</h5>
                        <p class="card-text">${phone.description}</p>
                        <p class="card-text"><strong>Price: $${phone.price}</strong></p>
                    </div>
                </div>
            `).join('');
            break;
        }
    }
}