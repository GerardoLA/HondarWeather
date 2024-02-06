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
                        añadirCiudad(lugar.nombre)
                        mostrarCiudades()
                        $(document.getElementsByClassName(lugar.nombre)[0]).css("filter", "hue-rotate(140deg)")
                    })
                    .bindTooltip(lugar.nombre, {
                        permanent: false,
                        direction: 'top',
                        offset: L.point(0, -20)
                    });

                marker._icon.classList.add(lugar.nombre)

                if (localStorage.getItem("lugares") && localStorage.getItem("lugares").includes(lugar.nombre)) {
                    $(document.getElementsByClassName(lugar.nombre)[0]).css("filter", "hue-rotate(140deg)")
                    // cambiar el click para que borre la ciudad
                }
            });

        })
}