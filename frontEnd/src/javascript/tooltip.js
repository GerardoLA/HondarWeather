const hoy = new Date();
const año = hoy.getFullYear();
const mes = ('0' + (hoy.getMonth() + 1)).slice(-2);
const dia = ('0' + hoy.getDate()).slice(-2);
const fechaFormateada = `${año}/${mes}/${dia}`;

const mañana = new Date();
mañana.setDate(hoy.getDate() + 1);
const añoMañana = mañana.getFullYear();
const mesMañana = ('0' + (mañana.getMonth() + 1)).slice(-2);
const diaMañana = ('0' + mañana.getDate()).slice(-2);

function predicciones(lugar) {
    let card = document.getElementById(lugar)
    let config = {
        method: 'GET',
        headers: {
            Authorization: 'Bearer eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJtZXQwMS5hcGlrZXkiLCJpc3MiOiJJRVMgUExBSUFVTkRJIEJISSBJUlVOIiwiZXhwIjoyMjM4MTMxMDAyLCJ2ZXJzaW9uIjoiMS4wLjAiLCJpYXQiOjE2Mzk3NDc5MDcsImVtYWlsIjoiaWtjZXlAcGxhaWF1bmRpLm5ldCJ9.LrBw0BdqZV102vFxqnR4RqSwcbMTWwiv-cclPaDz9RMR-WhCez8bGo0C8_Oj0HT6uRChm9f7V_B-dL-28vPrFOOfaNMfo04YuwWrg4LfK4-t1nZwp_EfZ_h5X2h9dtI6tZE5okXZkaPhtUWCSvA2oQHrsjuZrtoqGaqzFoEUzxsPGwHOW8yZWGNFwinO5ZfDeGo9RK_UZMdSAydxEnTmTAY3YboWMqu8Ej3Oxin40qubE6JR7qFH6wIzkYSIhDTgfxJMr6LKVRfgjFI0JhJDJ5Sjqu9ylA71ERzNwRx3Wap6NDBIWyF9uXnrEshtpHbA68vzUr8lNi4Nd9_ImoN3lw'
        },
    };
    switch (lugar) {
        case 'Donostia':
            fetch(`https://api.euskadi.eus/euskalmet/weather/regions/basque_country/zones/donostialdea/locations/donostia/forecast/at/${fechaFormateada}/for/${añoMañana + mesMañana + diaMañana}`, config)
                .then(response => {
                    if (!response.ok) {
                        throw new Error(response.statusText);
                    }
                    return response.json();
                })
                
                .then(data => {
                    if (card == null) {
                        return
                    }
                    card.title = data["forecastText"]["SPANISH"]
                });
            break;

        case 'Hondarribia':
            fetch(`https://api.euskadi.eus/euskalmet/weather/regions/basque_country/zones/coast_zone/locations/hondarribia/forecast/at/${fechaFormateada}/for/${añoMañana + mesMañana + diaMañana}`, config)
                .then(response => {
                    if (!response.ok) {
                        throw new Error(response.statusText);
                    }
                    return response.json();
                })
               
                .then(data => {
                    if (card == null) {
                        return
                    }
                    card.title = data["forecastText"]["SPANISH"]
                });
            break;

        case 'Getaria':
            fetch(`https://api.euskadi.eus/euskalmet/weather/regions/basque_country/zones/coast_zone/locations/getaria/forecast/at/${fechaFormateada}/for/${añoMañana + mesMañana + diaMañana}`, config)
                .then(response => {
                    if (!response.ok) {
                        throw new Error(response.statusText);
                    }
                    return response.json();
                })
              
                .then(data => {
                    if (card == null) {
                        return
                    }
                    card.title = data["forecastText"]["SPANISH"]
                });
            break;

        case 'Pasaia':
            fetch(`https://api.euskadi.eus/euskalmet/weather/regions/basque_country/zones/donostialdea/locations/pasaia/forecast/at/${fechaFormateada}/for/${añoMañana + mesMañana + diaMañana}`, config)
                .then(response => {
                    if (!response.ok) {
                        throw new Error(response.statusText);
                    }
                    return response.json();
                })
              
                .then(data => {
                    if (card == null) {
                        return
                    }
                    card.title = data["forecastText"]["SPANISH"]
                });
            break;

        case 'Bilbao':
            fetch(`https://api.euskadi.eus/euskalmet/weather/regions/basque_country/zones/great_bilbao/locations/bilbao/forecast/at/${fechaFormateada}/for/${añoMañana + mesMañana + diaMañana}`, config)
                .then(response => {
                    if (!response.ok) {
                        throw new Error(response.statusText);
                    }
                    return response.json();
                })
        
                .then(data => {
                    if (card == null) {
                        return
                    }
                    card.title = data["forecastText"]["SPANISH"]
                });
            break;

    }
}