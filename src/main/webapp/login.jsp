<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <jsp:include page="header.jsp"></jsp:include>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>UMKC | GTA Application Portal</title>
    <link rel="stylesheet" type="text/css" href="style-login.css">

</head>

<body>

<section id="bodypart">
    <div class="container-sm">
        <!-- <h1>LOGIN</h1> -->
        <form id="login" name="theform" class="login-form" action="TestServlet" method="GET">
            <div class="formField">
                <input type="text" placeholder="Username" name="username" id="username" required>
            </div>
            <div class="formField">
                <input type="password" placeholder="Password" name="password" id="password" required>
            </div>
            <button type="submit" class="submitbtn" onclick="getInput()">Log in</button>
            <p class="message">Forgot password? <a href="https://www.umkc.edu/is/password/">Click here!</a>
        </form>
    </div>
</section>

<%--<script src=".js files/login.js"></script>--%>
</body>

</html>


<%--<!DOCTYPE html>--%>
<%--<html lang="en">--%>
<%--    <head>--%>
<%--        <!---create the title and link the css file to this html file--->--%>
<%--        <meta charset="UTF-8">--%>

<%--        <!-- title -->--%>
<%--        <title>Admin Login |</title>--%>

<%--        <!-- style CSS file -->--%>
<%--        <link rel="stylesheet" type="text/css" href="login-style.css">--%>

<%--        <!-- preload the image and css file to prevent flickering problem -->--%>
<%--        <link rel="preload" href="images/background1.jpg" as="image">--%>
<%--        <link rel="preload" href="login-style.css" as="style">--%>
<%--    </head>--%>
<%--    <body>--%>
<%--        <div class="main-page">--%>
<%--            <div class="navbar">--%>
<%--                <nav class="navi">--%>
<%--                    <!---create a navigation bar on the top right--->--%>
<%--                    <ul id="bar-items">--%>
<%--                        <!---list of items on the navigation bar--->--%>
<%--                        <li> <a href="index.jsp">Home</a></li>--%>
<%--                        <li> <button class="loginbtn" onclick="document.getElementById('login-form').style.display='block'"--%>
<%--                                style="width: auto;">Admin Login</button></li>--%>
<%--                    </ul>--%>
<%--                </nav>--%>
<%--            </div>--%>
<%--            <div id='login-form' class="box">--%>
<%--                <!---creating the log in page for admins like me :v--->--%>
<%--                <div class="form-box">--%>
<%--                    <!---create a box shape for log in and register--->--%>
<%--                    <div class="button-box">--%>
<%--                        <!---create a button box (Log In/Register)--->--%>
<%--                        <div id="btn"></div>--%>
<%--                        <button type="button" onclick="login()" class="togglebtn">Log In</button>--%>
<%--                        <button type="button" onclick="register()" class="togglebtn">Register</button>--%>
<%--                    </div>--%>
<%--                    <!---create log in form; when you click "Log In" button, it will appear--->--%>
<%--                    <form id="login" class="input-group-login">--%>
<%--                        <input type="text" class="input-field" placeholder="Email Address" required>--%>
<%--                        <input type="password" class="input-field" placeholder="Enter Password" required>--%>
<%--                        <input type="checkbox" class="check-box"><span>Remember Password</span>--%>
<%--                        <button type="submit" class="submitbtn">Log in</button>--%>
<%--                    </form>--%>
<%--                    <!---create register form; when you click "Register" button, it will appear--->--%>
<%--                    <form id="register" class="input-group-register">--%>
<%--                        <input type="text" class="input-field" placeholder="First Name" required>--%>
<%--                        <input type="text" class="input-field" placeholder="Last Name" required>--%>
<%--                        <input type="email" class="input-field" placeholder="Email" required>--%>
<%--                        <input type="password" class="input-field" placeholder="Enter Password" required>--%>
<%--                        <input type="password" class="input-field" placeholder="Re-enter Password" required>--%>
<%--                        <input type="checkbox" class="check-box"><span>I agree to the terms and conditions</span>--%>
<%--                        <button type="submit" class="submitbtn">Register</button>--%>
<%--                    </form>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="note">--%>
<%--                <h5>NOTE:</h5>--%>
<%--                <br>--%>
<%--                <p>- Only Admins have the authority to log in to this page. --%>
<%--                    You can register if you are allowed by one of the admins of this page.</p>--%>
<%--                <p>- If you have any questions, go to <mark>Help</mark> when you go back to the home page to find the answers. --%>
<%--                    If you can not find the answer you want, contact us. </p>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <script src="js files/loginandregister.js"></script>--%>
<%--    </body>--%>
<%--</html>--%>