// the code is for switching between login and register page when you hit "Log In" or "Register button

var x = document.getElementById('login');
var y = document.getElementById('register');
var z = document.getElementById('btn');

function login() {
    x.style.left = "50px";
    y.style.left = "400px";
    z.style.left = "0px";
}

function register() {
    x.style.left = "-400px";
    y.style.left = "50px";
    z.style.left = "110px";
}