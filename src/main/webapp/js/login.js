function getInput() {
    var username = document.getElementById("username").value;
    var password = document.getElementById("password").value;

    // Bao 1
    if (username == "admin1" && password == "12345") {
        window.location.href = 'admin.html';
    }
    // Levi 2
    if (username == "admin2" && password == "12345") {
        window.location.href = 'admin.html';
    }
    // Lavy 3
    if (username == "admin3" && password == "12345") {
        window.location.href = 'admin.html';
    }
    // Jared 4
    if (username == "admin4" && password == "12345") {
        window.location.href = 'admin.html';
    }
    // Parker 5
    if (username == "admin5" && password == "12345") {
        window.location.href = 'admin.html';
    }
    else {
        alert("Again!");
    }
}