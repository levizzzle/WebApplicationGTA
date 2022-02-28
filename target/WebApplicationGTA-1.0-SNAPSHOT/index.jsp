<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- required meta tags -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- title -->
    <title>Home Page | GTA Application</title>

    <!-- style CSS file -->
    <link rel="stylesheet" type="text/css" href="style.css">

    <!-- preload images and css file to prevent flickering problem -->
    <link rel="preload" href="images/background1.jpg" as="image">
    <link rel="preload" href="images/logo2.jpg" as="image">
    <link rel="preload" href="images/subpage4.jpg" as="image">
    <link rel="preload" href="images/subpage5.jpg" as="image">
    <link rel="preload" href="images/subpage7.jpg" as="image">
    <link rel="preload" href="style.css" as="style">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <link href="${pageContext.request.contextPath}/docs/bootstrap5/css/bootstrap.min.css"
          rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>

<body>

    <!--create a top button-->
    <button onclick="topFunction()" id="topBtn" title="Go to top">UP</button>

<%--    <a href="hello-servlet">Servlet</a>--%>

    <!--header for navigation bar-->
    <div id="header">
        <div class="container-fluid justify-content-end">
            <nav class="navbar navbar-expand-md navbar-light">
                <a class="navbar-brand" href="index.jsp"><img class="logo" src="${pageContext.request.contextPath}/images/logo2.jpg" alt=""/>GTAHelper</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                        aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="nav navbar-nav ms-md-auto text-center">
                        <li class="nav-item active"><a class="nav-link" href="#myCarousel" data-text="Home">Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="#" data-text="GTA Form">GTA Form</a></li>
                        <li class="nav-item"><a class="nav-link" href="#aboutUs-page" data-text="About Us">About Us</a></li>
                        <li class="nav-item"><a class="nav-link" href="#" data-text="Help">Help</a></li>
                        <li class="nav-item"><a class="nav-link" href="#" data-bs-toggle="tooltip"
                                                data-bs-placement="bottom" title="This is for admins only!" data-text="Admin Login">Admin Login</a></li>
                    </ul>
                </div>
            </nav>
        </div>
    </div>

    <!--for crousel slider-->
    <div id="myCarousel" class="carousel slide" data-bs-ride="carousel">
        <ol class="carousel-indicators">
            <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </ol>
        <div class="carousel-inner role=listbox" style="width:100%; max-height:100% !important">
        <div class="carousel-item active">
            <img class="card-img" src="images/subpage7.jpg" alt="First slide">
        </div>
        <div class="carousel-item">
            <img class="card-img" src="images/subpage5.jpg" alt="Second slide">
        </div>
        <div class="carousel-item">
            <img class="card-img" src="images/subpage4.jpg" alt="Third slide">
        </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#myCarousel" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#myCarousel" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
    </button>
    </div>

    <!--About Us-->
    <div id="aboutUs-page">

    </div>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <!--TopBtn function-->
    <script>
        //Get the button
        var topbutton = document.getElementById("topBtn");
        // When the user scrolls down 20px from the top of the document, show the button
        window.onscroll = function() {scrollFunction()};
        function scrollFunction(){
            if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
                topbutton.style.display = "block";
            }
            else{
                topbutton.style.display = "none";
            }
        }
        // When the user clicks on the button, scroll to the top of the document
        function topFunction() {
            document.body.scrollTop = 0;
            document.documentElement.scrollTop = 0;
        }</script>
</body>

</html>