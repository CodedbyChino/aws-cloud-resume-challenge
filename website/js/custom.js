document.addEventListener("DOMContentLoaded", function() {
    let counter = localStorage.getItem('page_view_counter');
    if (counter) {
        counter = parseInt(counter) + 1;
    } else {
        counter = 1;
    }
    localStorage.setItem('page_view_counter', counter);
    document.getElementById('view-counter').innerText = 'Views: ' + counter;
});
