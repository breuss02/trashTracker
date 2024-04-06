document.getElementById('searchButton').addEventListener('click', function() {
    const searchTerm = document.getElementById('searchInput').value.trim();
    
    // Save the search term to localStorage
    localStorage.setItem('searchTerm', searchTerm);
    
    // Redirect to the searchRes.html page with the search term as a query parameter
    window.location.href = `searchRes.html?search=${encodeURIComponent(searchTerm)}`;
});