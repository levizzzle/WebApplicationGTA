<%@ page contentType="text/html;charset=UTF-8" %>

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
                    <li class="nav-item"><a class="nav-link" href="applicant-form.jsp" data-text="GTA Form">GTA Form</a></li>
                    <li class="nav-item"><a class="nav-link" href="#aboutUs-page" data-text="About Us">About Us</a></li>
                    <li class="nav-item"><a class="nav-link" href="#" data-text="Help">Help</a></li>
                    <li class="nav-item"><a class="nav-link" href="login.jsp" data-bs-toggle="tooltip"
                                            data-bs-placement="bottom" title="This is for admins only!" data-text="Admin Login">Admin Login</a></li>
                </ul>
            </div>
        </nav>
    </div>
</div>