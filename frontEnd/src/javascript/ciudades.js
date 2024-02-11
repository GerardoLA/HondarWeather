var lugares = [] //Para guardar las localizaciones con sus datos

cargarCiudades() 

setInterval(() => {
    ActualizarCiudades()
}, 15000);

function cargarCiudades() { //Recoge datos de la base para generar las cards
    fetch("http://" + urlActual + ":8085/api/recoger")
        .then((respuesta) => { return respuesta.json() })
        .then((datos) => {
            lugares = datos.lugares 
            mostrarCiudades()
        })
}

function ActualizarCiudades() {
    fetch("http://" + urlActual + ":8085/api/recoger")
        .then((respuesta) => { return respuesta.json() })
        .then((datos) => {
            lugares = datos.lugares
            actualizarCards()
        })
}
function mostrarCiudades() { //Genera las cards y si esta en el localStorage las muestra 
    const panelMet = document.getElementById('PanelMet');
    lugares.forEach((lugar) => {
        let card = document.getElementById(lugar.nombre)
        if (!card) {
            let card = document.createElement('div')
            card.className = 'card'
            card.id = lugar.nombre
            card.innerHTML = `
                <div class="card-body">
                    <h5 class="card-title">${lugar.nombre}</h5>
                    <p class="card-text"><img src="./imagenes/temperatura.png" alt="temperatura">${lugar.temperatura}ºC </p>
                    <p class="card-text"><img src="./imagenes/humedad.png" alt="humedad"> ${lugar.humedad}% </p>
                    
                </div>
            `;
            if(localStorage.getItem("lugares") && localStorage.getItem("lugares").includes(lugar.nombre)){
                card.style.display = 'block'
            }else{
                card.style.display = 'none'
            }
            panelMet.appendChild(card) //las cards van a existir todas, unas visibles otras no
        }
    })


    lugares.forEach((lugar) => {
        card = document.getElementById(lugar.nombre)
        if (card !== null && card.hasAttribute('title')) {
            card.removeAttribute('title');
        }
        predicciones(lugar.nombre)
        if (localStorage.getItem("lugares") && localStorage.getItem("lugares").includes(lugar.nombre)) {
            document.getElementById(lugar.nombre).dataset.cardLugar = lugar.nombre
        }
    })
}

function mostrarCard(lugar) { //Para mostrar u ocultar las cards
    let card = document.getElementById(lugar)
    if(card.style.display == 'block'){
        card.style.display = 'none'
    }else{
        card.style.display = 'block'
    }
}

function actualizarCards() {
    lugares.forEach(lugar => {
        let card = document.getElementById(lugar.nombre)
        if (card != null) {
            let datosMeteorologicos = card.children[0].getElementsByTagName('p')//recoge todas las "p" del card-body
            for (let dato of datosMeteorologicos) { //Por cada dato de datosMeterologicos
                let datoMeteorologico = dato.getElementsByTagName('img')[0].alt //DatoMeteorológico se recibe de el alt, texto alternativo de la imagen.
                switch (datoMeteorologico) { //depende del dato que sea, cambia y pone la imagenn y el dato nuevo actualizado correspondiente.
                    case 'temperatura':
                        dato.innerHTML = `<img src="./imagenes/temperatura.png" alt="temperatura"> ${lugar.temperatura} ºC`
                        break;
                    case 'humedad':
                        dato.innerHTML = `<img src="./imagenes/humedad.png" alt="humedad"> ${lugar.humedad} %`
                        break;
                    case 'viento':
                        dato.innerHTML = `<img src="./imagenes/viento.png" alt="viento"> ${lugar.viento} m/s <button onclick="eliminarDrop(this)">Eliminar</button>`
                        break;
                    case 'lluvia':
                        dato.innerHTML = `<img src="./imagenes/lluvia.png" alt="lluvia"> ${lugar.lluvia} mm <button onclick="eliminarDrop(this)">Eliminar</button>`
                        break;
                }
            }

        }
    });
}
//funciones añadir y quitar del LocalStorage
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

