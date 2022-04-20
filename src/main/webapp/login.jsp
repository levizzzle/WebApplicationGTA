<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
<%--    <jsp:include page="header.jsp"></jsp:include>--%>
    <link rel="preload" href="${pageContext.request.contextPath}/images/UMKC_white_cropped.png" as="image">

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>UMKC | GTA Application Portal</title>
    <link rel="stylesheet" type="text/css" href="css/login-style.css">
</head>

<%--<body>--%>

<%--<section id="bodypart">--%>
<%--    <div class="container-sm">--%>
<%--        <!-- <h1>LOGIN</h1> -->--%>
<%--        <form id="login" name="theform" class="login-form" action="LoginServlet" method="GET">--%>
<%--            <div class="formField">--%>
<%--                <input type="text" placeholder="Username" name="username" id="username" required>--%>
<%--            </div>--%>
<%--            <div class="formField">--%>
<%--                <input type="password" placeholder="Password" name="password" id="password" required>--%>
<%--            </div>--%>
<%--            <button type="submit" class="submitbtn" onclick="getInput()">Log in</button>--%>
<%--            <p class="message">Forgot password? <a href="https://www.umkc.edu/is/password/">Click here!</a>--%>
<%--        </form>--%>
<%--    </div>--%>
<%--</section>--%>

<%--</body>--%>

<body>
<section id="headpart">
    <a href="https://www.umkc.edu/"><img src="images/UMKC_white_cropped.png" alt=""></a>
    <div class="title">GTA Application Portal</div>
    <div class="holder">
        <button type="reset" id="logOutBtn" onclick="logOut()">Log Out</button>
    </div>
</section>
<section id="bodypart">
    <div class="container-sm">
        <!-- <h1>LOGIN</h1> -->
                <form id="login" name="theform" class="login-form" action="LoginServlet" method="GET">
            <div class="formField">
                <input type="text" name="username" placeholder="Username" id="username" required>
            </div>
            <div class="formField">
                <input type="password" name="password" placeholder="Password" id="password" required>
            </div>
            <button type="submit" class="submitbtn" onclick="getInput()">Log in</button>
            <p class="message">Forgot password? <a href="https://www.umkc.edu/is/password/">Click here!</a>
        </form>
    </div>
</section>
</body>

</html>

