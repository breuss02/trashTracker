document.addEventListener('DOMContentLoaded', function() {
    const urlParams = new URLSearchParams(window.location.search);
    const locationId = urlParams.get('location');

    if (locationId) {
        initializeMapBasedOnLocationId(locationId);
    } else {
        console.log('Location ID not provided.');
    }
});

function initializeMapBasedOnLocationId(locationId) {
    const locations = {
        '1': {
            name: "COOKS WASTEPAPER AND RECYCLING",
            coords: [44.31531117879602, -96.74828563073861]
        },
        '2': {
            name: "Brookings Regional Landfill",
            coords: [44.34229392827269, -96.7367824595727]
        },
        '3': {
            name: "Brookings Dumpster Service",
            coords: [44.32219015989707, -96.81465094608073]
        }
    };

    const location = locations[locationId];

    if (location) {
        var map = L.map('map').setView(location.coords, 13);
        L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
            attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/">OpenStreetMap</a> contributors',
            maxZoom: 18,
        }).addTo(map);
        L.marker(location.coords).addTo(map)
            .bindPopup(location.name)
            .openPopup();
    } else {
        console.log('Invalid location ID.');
    }
}
