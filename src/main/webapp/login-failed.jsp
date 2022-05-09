<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <link rel="preload" href="${pageContext.request.contextPath}/images/UMKC_white_cropped.png" as="image">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>UMKC | GTA Application Portal</title>
    <link rel="stylesheet" type="text/css" href="css/login.css">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link href="/docs/5.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>

<body>
<section id="headpart">
    <a href="https://www.umkc.edu/"><img src="${pageContext.request.contextPath}/images/UMKC_white_cropped.png" alt=""></a>
    <div class="title">GTA Application Portal</div>

    <div class="holder">
        <form id="logout" name="logout" class="logout-form"  action="${pageContext.request.contextPath}/Logout" method="GET">
            <button type="submit" id="logOutBtn">0.0 0.0</button>
        </form>
    </div>
</section>

<section id="bodypart">
    <div class="container-sm">
        <!-- <h1>LOGIN</h1> -->
    </div>
</section>


<!---JavaScript Bootstrap--->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
        integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
        crossorigin="anonymous"></script>
</body>

</html>

