// var list1 = []; // first name
// var list2 = []; // sur name
// var list3 = []; // id
// var list4 = []; // mail
// var list5 = []; // academic level
// var list6 = []; // graduated year
// var list7 = []; // gpa
// var list8 = []; // hours
// var list9 = []; // advisor
// var list10 = []; // major
// var list11 = []; // courses
// var list12 = []; // status

var n = 1;

function AddRow() {

    var table = document.getElementById("myTable");
    var newRow = table.insertRow(n);

    var cell0 = newRow.insertCell();
    var cell1 = newRow.insertCell();
    var cell2 = newRow.insertCell();
    var cell3 = newRow.insertCell();
    var cell4 = newRow.insertCell();
    var cell5 = newRow.insertCell();
    var cell6 = newRow.insertCell();
    var cell7 = newRow.insertCell();
    var cell8 = newRow.insertCell();
    var cell9 = newRow.insertCell();
    var cell10 = newRow.insertCell();
    var cell11 = newRow.insertCell();
    var cell12 = newRow.insertCell();

    cell0.innerHTML = (n - 1);
    cell1.innerHTML = document.getElementById("fname").value;
    cell2.innerHTML = document.getElementById("sname").value;
    cell3.innerHTML = document.getElementById("studentid").value;
    cell4.innerHTML = document.getElementById("mail").value;
    cell5.innerHTML = document.getElementById("level").value;
    cell6.innerHTML = document.getElementById("gradyear").value;
    cell7.innerHTML = document.getElementById("gpa").value;
    cell8.innerHTML = document.getElementById("hours").value;
    cell9.innerHTML = document.getElementById("advisor").value;
    cell10.innerHTML = document.getElementById("major").value;
    cell11.innerHTML = document.getElementById("courses").value;
    cell12.innerHTML = document.getElementById("status").value;

    // cell1.innerHTML = "Lavy";
    // cell2.innerHTML = "Ngo";
    // cell3.innerHTML = "1234567";
    // cell4.innerHTML = "abcxyz@umsystem.edu";
    // cell5.innerHTML = "BS";
    // cell6.innerHTML = "2022";
    // cell7.innerHTML = "3.5";
    // cell8.innerHTML = "123";
    // cell9.innerHTML = "Jesus";
    // cell10.innerHTML = "CS";
    // cell11.innerHTML = "CS 101";
    // cell12.innerHTML = "International";

    n++;

    return false;
}

