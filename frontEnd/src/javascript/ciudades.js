var lugares = []

cargarCiudades()

setInterval(() => {
    cargarCiudades()
}, 15 * 1000);

function cargarCiudades() {
    console.log("Cargando ciudades...")
    fetch("http://localhost:8085/api/recoger")
        .then((respuesta) => { return respuesta.json() })
        .then((datos) => {
            lugares = datos.lugares
            mostrarCiudades()
        })
}

function mostrarCiudades() {
    const panelMet = document.getElementById('PanelMet');
    let htmlBuilder = ""
    console.log("Mostrando ciudades...")
    lugares.forEach((lugar) => {

        if (localStorage.getItem("lugares") && localStorage.getItem("lugares").includes(lugar.nombre)) {
            htmlBuilder += `
            <div class="card" id="${lugar.nombre}">
                <div class="card-body">
                    <h5 class="card-title">${lugar.nombre}</h5>
                    <p class="card-text"><img src="./imagenes/temperatura.png" alt="temperatura">${lugar.temperatura}ºC </p>
                    <p class="card-text"><img src="./imagenes/humedad.png" alt="humedad"> ${lugar.humedad}% </p>
                    <a href="#" class="btn btn-primary">Botón</a>
                </div>
            </div>
            `;
        }

    })
    panelMet.innerHTML = htmlBuilder
    lugares.forEach((lugar) => {
        if (localStorage.getItem("lugares") && localStorage.getItem("lugares").includes(lugar.nombre)) {
            document.getElementById(lugar.nombre).dataset.cardLugar = lugar.nombre
        }
    })
}

function añadirCiudad(lugar, marker) {
    switch (true) {

        // Comprueba que el local storage existe
        case !localStorage.getItem("lugares"):
            // si no existe, lo crea con solo la ciudad
            localStorage.setItem("lugares", lugar)
            break

        // como existe, compruebo que la ciudad ya está añadida
        case localStorage.getItem("lugares").includes(lugar):
            marker._icon.classList.remove("seleccionado")
            quitarCiudad(lugar)
            break

        // existe, pero la ciudad no está añadida
        case !localStorage.getItem("lugares").includes(lugar):
            // rellenamos el localStorage con lo que habia antes, mas la nueva ciudad
            localStorage.setItem("lugares", localStorage.getItem("lugares") + ";" + lugar);
            break
    }
}

function quitarCiudad(ciudad) {
    switch (true) {
        case localStorage.getItem("lugares").includes(ciudad + ";"):
            localStorage.setItem("lugares", localStorage.getItem("lugares").replace(ciudad + ";", "")); break
        case localStorage.getItem("lugares").includes(";" + ciudad):
            localStorage.setItem("lugares", localStorage.getItem("lugares").replace(";" + ciudad, "")); break
        case localStorage.getItem("lugares").includes(ciudad):
            localStorage.removeItem("lugares"); break
    }
    mostrarCiudades();
}