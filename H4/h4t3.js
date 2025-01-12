async function getNames() {
    const url = 'h4t3.json';
    try {
        const res = await fetch(url);
        return await res.json();
    } catch (error) {
        console.log(error);
    }
}

// seuraa hakutulosta
let filterIndex = -1;

// renderöi hakutulokset
async function renderNames() {
    const Input = document.getElementById("myInput");
    const InputLetters = Input.value.toLowerCase();
    const namelist = await getNames();  

    // suodattaa nimet annettujen merkkien perusteella
    const FilteredNames = namelist.filter(name => name.toLowerCase().startsWith(InputLetters));

    // tulostaa suodatetut nimet
    const lista = document.getElementById("lista");
    lista.innerHTML = FilteredNames.map((name, index) =>
            `<li class="name-item ${index === filterIndex ? 'highlight' : ''}" data-index="${index}">${name}</li>`
        ).join("");

    if (InputLetters == "") filterIndex = -1;
}

// käsitelee näppäinten tapahtumat
function handleKeyUp(event) {
    const nameItems = document.querySelectorAll(".name-item");

    if (["ArrowDown", "ArrowUp", "Enter", "Escape"].includes(event.key)) {
        handleKeyNavigation(event, nameItems);
    } else {
        renderNames();
    }
}

// näppäimien ominaisuudet
function handleKeyNavigation(event, nameItems) {
    if (!nameItems.length) return;

    if (event.key === "ArrowDown") {
        filterIndex = (filterIndex + 1) % nameItems.length;
    } 

    else if (event.key === "ArrowUp") {
        filterIndex = (filterIndex - 1 + nameItems.length) % nameItems.length;
    }

    else if (event.key === "Enter") {
        if (filterIndex >= 0) {
            const selectedName = nameItems[filterIndex].textContent;
            document.getElementById("myInput").value = selectedName;
        }
        document.getElementById("lista").innerHTML = "";
    }

    else if (event.key === "Escape") {
        document.getElementById("myInput").value = "";
        document.getElementById("lista").innerHTML = "";
    }
    renderNames();
}

