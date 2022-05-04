<%@ page contentType="text/html;charset=UTF-8" %>
<link rel="preload" href="images/UMKC_white_cropped.png" as="image">
<link rel="stylesheet" type="text/css" href="css/header.css">

<section id="headpart">

    <a href="https://www.umkc.edu/"><img src="${pageContext.request.contextPath}/images/UMKC_white_cropped.png" alt=""></a>
    <div class="title">GTA Application Portal</div>

    <div class="holder">
    <form id="logout" name="logout" class="logout-form"  action="${pageContext.request.contextPath}/Logout" method="GET">
            <button type="submit" id="logOutBtn">Log Out</button>
    </form>
    </div>

</section>
