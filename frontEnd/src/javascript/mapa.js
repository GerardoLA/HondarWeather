function cargarMapa() {
    var map = L.map('mapid').setView([43.30577097201333, -2.213991338082935], 10);

    L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
        attribution: '© OpenStreetMap contributors'
    }).addTo(map);

    fetch('http://localhost:8085/api/recoger')
        .then(response => { return response.json() })
        .then(data => {

            let lugares = data.lugares
            console.log(lugares)
            // Estructura de datos para realizar un seguimiento de los lugares clicados

            lugares.forEach(lugar => {
                marker = L.marker([lugar.latitud, lugar.longitud])
                    .addTo(map)
                    .on('click', function () {
                        this._icon.classList.add(lugar.nombre);
                        this._icon.classList.add("seleccionado")
                        añadirCiudad(lugar.nombre, this)
                        mostrarCiudades()
                    })
                    .bindTooltip(lugar.nombre, {
                        permanent: false,
                        direction: 'top',
                        offset: L.point(0, -20)
                    });

                marker._icon.classList.add(lugar.nombre)

                //Si la ciudad está registrada al cargar la página cambia el color del marker
                if (localStorage.getItem("lugares") && localStorage.getItem("lugares").includes(lugar.nombre)) {
                    $(document.getElementsByClassName(lugar.nombre)[0]).css("filter", "hue-rotate(140deg)")
                }
            });

        })
}