document.addEventListener('DOMContentLoaded', function() {
    const urlParams = new URLSearchParams(window.location.search);
    const searchTerm = urlParams.get('search');

    if (searchTerm) {
        document.getElementById('searchResInput').value = decodeURIComponent(searchTerm);
        fetchSearchResults(decodeURIComponent(searchTerm));
    }

    document.getElementById('searchButton').addEventListener('click', function() {
        const newSearchTerm = document.getElementById('searchResInput').value.trim();
        fetchSearchResults(newSearchTerm);
    });
});

function fetchSearchResults(searchTerm) {
    fetch(`http://localhost:3000/search/items?query=${encodeURIComponent(searchTerm)}`)
    .then(response => response.json())
    .then(data => {
        displaySearchResults(data);
    })
    .catch(error => console.error('Error fetching search results:', error));
}

function displaySearchResults(items) {
    const resultsContainer = document.querySelector('.grid');
    resultsContainer.innerHTML = ''; // Clear current results

    const locationMapping = {
        1: { name: "COOKS WASTEPAPER AND RECYCLING", url: "location.html?location=1" },
        2: { name: "Brookings Regional Landfill", url: "location.html?location=2" },
        3: { name: "Brookings Dumpster Service", url: "location.html?location=3" }
    };

    items.forEach(item => {
        const locationInfo = locationMapping[item.location] || { name: "Unknown Location", url: "#" };
        const itemElement = document.createElement('div');
        itemElement.classList.add('bg-white', 'p-6', 'rounded-lg', 'shadow-md');
        itemElement.innerHTML = `
            <h2 class="text-xl font-bold mb-2">${item.name}</h2>
            <p>Category: ${item.category}</p>
            <p>Waste Type: ${item.waste_type}</p>
            <a href="${locationInfo.url}" class="text-blue-500 hover:text-blue-700">Disposal Location: ${locationInfo.name}</a>
        `;
        resultsContainer.appendChild(itemElement);
    });
}
