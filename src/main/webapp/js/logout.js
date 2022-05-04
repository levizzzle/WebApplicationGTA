function logOut() {
    var ask = confirm("Do you want to logout?");
    if (ask) {
        window.location.href = "login.html";
    }
}