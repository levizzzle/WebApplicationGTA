window.addEventListener("load", function() {

    let form = document.querySelector("form");
    form.addEventListener("submit", function (event) {
        let username = document.querySelector("input[name=username]");
        let password = document.querySelector("input[name=password]");
        if ((username.value === "") || (password.value === "")) {
            alert("Please fill all the information");
            event.preventDefault();
        }else if (username.value.includes("@umsystem.edu")===false) {
            alert("Username have to have @umsystem.edu at the end.")
            event.preventDefault();
        }
    });
});