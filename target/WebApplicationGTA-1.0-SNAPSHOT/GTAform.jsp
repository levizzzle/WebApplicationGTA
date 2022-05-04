<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Title -->
    <title>UMKC | GTA Form</title>

    <!-- style CSS file -->
    <link rel="stylesheet" type="text/css" href="css/style-gta.css">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link href="/docs/5.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>

<body>
<!--header for navigation bar-->
<nav class="navbar navbar-light bg-light">
    <div class="container-fluid justify-content-between">
        <a href="https://www.umkc.edu/"><img src="images\UMKC_white_cropped.png" alt=""></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar"
                aria-controls="offcanvasNavbar">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar"
             aria-labelledby="offcanvasNavbarLabel">
            <div class="offcanvas-header">
                <h2 class="offcanvas-title" id="offcanvasNavbarLabel">UMKC</h2>
                <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas"
                        aria-label="Close"></button>
            </div>
            <div class="offcanvas-body">
                <ul class="navbar-nav justify-content-end flex-grow-1">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="https://www.umkc.edu/">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link"
                           href="https://catalog.umkc.edu/general-graduate-academic-regulations-information/graduate-teaching-research-assistantships/"
                           target="_blank">More
                            Info</a>
                    </li>
                    <li class="nav-item">
                        <button type="reset" id="logOutBtn" onclick="logOut()">Log Out</button>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</nav>

<!--GTA Form-->
<div id="GTAform-page">
    <div class="container">
        <div class="title">GTA Form</div>
        <form method="get" action="SubmitApplicationServlet">
            <div class="info-box">
                <div class="formField">
                    <span class="detail">First Name:</span>
                    <input type="text" id="fname" name="gtaForm" placeholder="First Name">
                </div>
                <div class="formField">
                    <span class="detail">Sur Name:</span>
                    <input type="text" id="sname" name="gtaForm" placeholder="Sur Name">
                </div>
                <div class="formField">
                    <span class="detail">Student ID:</span>
                    <input type="text" id="studentid" name="gtaForm" placeholder="Student ID">
                </div>
                <div class="formField">
                    <span class="detail">UMKC Email:</span>
                    <input type="text" id="mail" name="gtaForm" placeholder="UMKC Email">
                </div>
                <div class="formField">
                    <span class="detail">Level(BS/MS/PHD):</span>
<%--                    <input type="text" id="level" name="gtaForm" placeholder="BS/MS/PHD">--%>
                    <select id="level" name="gtaForm">
                        <option value="BS">BS</option>
                        <option value="MS">MS</option>
                        <option value="PHD">PHD</option>
                    </select>
                </div>
                <div class="formField">
                    <span class="detail">Graduating Semester:</span>
                    <input type="text" id="gradyear" name="gtaForm" placeholder="Season Year">
                </div>
                <div class="formField">
                    <span class="detail">UMKC Cumulative GPA (leave blank if first semester is in progress):</span>
                    <input type="text" id="gpa" name="gtaForm" placeholder="GPA">
                </div>
                <div class="formField">
                        <span class="detail">Hours Completed at UMKC (leave blank if first semester is in
                            progress):</span>
                    <input type="text" id="hours" name="gtaForm" placeholder="Hours">
                </div>
                <div class="formField">
                    <span class="detail">Name of Research Advisor (if applicable):</span>
                    <input type="text" id="advisor" name="gtaForm" placeholder="Advisor Name">
                </div>
                <div class="formField">
                    <span class="detail">Major (CS/IT/ECE/EE):</span>
<%--                    <input type="text" id="major" name="gtaForm" placeholder="Major">--%>
                    <select id="major" name="gtaForm">
                        <option value="CS">CS</option>
                        <option value="IT">IT</option>
                        <option value="ECE">ECE</option>
                        <option value="EE">EE</option>
                    </select>
                </div>
                <div class="formField">
                        <span class="detail">Courses you could teach or grade for (ex. CS 201L/CS 5540/ECE 216,
                            etc.):</span>
                    <input type="text" id="courses" name="gtaForm" placeholder="Courses">
                </div>
                <div class="formField">
                        <span class="detail">Status-International or Domestic (If you are on an F-1 visa you are
                            international.
                            If you are a citizen or permanent resident, you are domestic):</span>
<%--                    <input type="text" id="status" name="gtaForm" placeholder="Status">--%>
                    <select id="status" name="gtaForm">
                        <option value="Domestic">Domestic</option>
                        <option value="International">International</option>
                    </select>
                </div>
                <div class="formField">
                        <span class="detail">(International Students ONLY) Are you GTA Certified? If so, which term did
                            you complete your certification?:</span>
<%--                    <input type="text" id="certificate" name="gtaForm" placeholder="Certificate">--%>
                    <select id="certificate" name="gtaForm">
                        <option value="Yes">Yes</option>
                        <option value="No">No</option>
                    </select>
                </div>
            </div>
            <button type="submit" class="submitBtn" id="submittBtn" onclick="getInput()">Submit</button>
        </form>
    </div>

</div>
<script src=".js files/getData.js"></script>

<!---JavaScript Bootstrap--->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
        integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
        crossorigin="anonymous"></script>
<script src=".js files/logout.js"></script>
</body>

</html>