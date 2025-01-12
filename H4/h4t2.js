// haetaan json tiedostosta talot
async function getHouses() {
    let url = 'h4t1.json';
    try {
        let res = await fetch(url);
        return await res.json();
    } catch (error) {
        console.log(error);
    }
}


async function renderHouses() {
    let houses = await getHouses();
    console.log(houses);

    // haetaan boxien tila
    let sizeCheck = document.querySelector('input[value="size"]').checked;
    let priceCheck = document.querySelector('input[value="price"]').checked;

    // suodatetaan boxien tilan mukaan
    let filteredhouses = houses.filter(house => {
        let sizeState = sizeCheck ? house.size <= 200 : true;
        let priceState = priceCheck ? house.price <= 1000000 : true;
        return sizeState && priceState
    })

//tyhjennetään aiemmat talot
    let housediv = document.getElementById("talot");
    housediv.innerHTML = '';

// luodaan ehtojen mukainen näkymä
    filteredhouses.forEach(house => {

        let housecontainer = document.createElement('div');
        housecontainer.className = 'houseContainer';

        let image = document.createElement('img');
        image.src = house.image;
        image.className = 'houseImage';

        let header = document.createElement('p');
        header.className = 'header';
        header.innerHTML = house.address;

        let size = document.createElement('p');
        size.className = 'text';
        size.innerHTML = house.size + "m2";

        let text = document.createElement('p');
        text.className = 'text';
        text.innerHTML = house.text;

        let price = document.createElement('p');
        price.className = 'text';
        let numberstr = new Intl.NumberFormat('fi-FI').format(house.price);
        price.innerHTML = numberstr + "euroa";

        housecontainer.appendChild(image);
        housecontainer.appendChild(header);
        housecontainer.appendChild(size);
        housecontainer.appendChild(text);
        housecontainer.appendChild(price);

        housediv.appendChild(housecontainer); 
    });    
}

renderHouses();