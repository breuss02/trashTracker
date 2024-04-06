var map = L.map('map').setView([52.1614, -7.1493], 13); // Latitude, Longitude, Zoom Level

    L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
        attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/">OpenStreetMap</a> contributors',
        maxZoom: 18,
    }).addTo(map);

    // Example: Adding a marker at the same coordinates
    L.marker([52.1614, -7.1493]).addTo(map)
        .bindPopup('A basic popup.').openPopup();