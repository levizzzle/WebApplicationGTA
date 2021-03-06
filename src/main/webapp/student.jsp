<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>UMKC | GTA Application Portal</title>
    <link rel="stylesheet" type="text/css" href="css/student1.css">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link href="/docs/5.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="js/sorttable.js"></script>
</head>

<body>
<section id="headpart">
    <a href="https://www.umkc.edu/"><img src="${pageContext.request.contextPath}/images/UMKC_white_cropped.png" alt=""></a>
    <div class="title">GTA Application Portal</div>

    <div class="holder">
        <form id="logout" name="logout" class="logout-form"  action="${pageContext.request.contextPath}/Logout" method="GET">
            <button type="submit" id="logOutBtn">Log Out</button>
        </form>
    </div>
</section>

<section id="infopart">
    <div class="info">
        <br/>
        <br/>
        <h2>Graduate Teaching Assistantships</h2>
        <br/>
        <p>Students can apply for a Graduate Teaching Assistant (GTA) position,
            which comes with a stipend of about $12,000 per year and a tuition waiver
            for up to nine credit hours per regular semester.
            <br/><br/>
            Summer teaching is often available, for an additional salary of $2,000 to $4,000.
        </p>
    </div>
</section>

<section id="bodypart">
    <div class="student">
        <div class="holderItem">
            <a href="GTAform.jsp" >
                <img src="data:image/svg+xml,%3Csvg width='24' height='24' viewBox='0 0 24 24' fill='none'
                        xmlns='http://www.w3.org/2000/svg' %3E%3Cpath
                        d='M10 6H14C16 6 16 5 16 4C16 2 15 2 14 2H10C9 2 8 2 8 4C8 6 9 6 10 6Z' stroke='%23292D32'
                        stroke-width='1.5' stroke-miterlimit='10' stroke-linecap='round' stroke-linejoin='round' /%3E%3Cpath
                        d='M14 22H9C4 22 3 20 3 16V10C3 5.44002 4.67 4.20002 8 4.02002' stroke='%23292D32' stroke-width='1.5'
                        stroke-miterlimit='10' stroke-linecap='round' stroke-linejoin='round' /%3E%3Cpath
                        d='M16 4.02002C19.33 4.20002 21 5.43002 21 10V15' stroke='%23292D32' stroke-width='1.5'
                        stroke-miterlimit='10' stroke-linecap='round' stroke-linejoin='round' /%3E%3Cpath d='M15 19V16H18'
                        stroke='%23292D32' stroke-width='1.5' stroke-miterlimit='10' stroke-linecap='round'
                        stroke-linejoin='round' /%3E%3Cpath d='M21 22L15.04 16.04' stroke='%23292D32' stroke-width='1.5'
                        stroke-miterlimit='10' stroke-linecap='round' stroke-linejoin='round' /%3E%3C/svg%3E%0A"
                     alt="">
                <p>Apply</p>
            </a>
        </div>
    </div>
    <div class="staff">
        <div class="holderItem">
            <a>
                <img src=" data:image/svg+xml,%3Csvg width='24' height='24' viewBox='0 0 24 24' fill='none'
                        xmlns='http://www.w3.org/2000/svg' %3E%3Cpath
                        d='M3.34997 2H12.25C12.99 2 13.6 2.61001 13.6 3.35001V4.82999C13.6 5.36999 13.26 6.04 12.93 6.38L10.03 8.94C9.63003 9.28 9.35998 9.94999
                        9.35998 10.49V13.39C9.35998 13.79 9.09 14.33 8.75 14.54L7.81 15.15C6.93 15.69 5.71997 15.08 5.71997 14V10.43C5.71997 9.95999 5.44999 9.35001
                        5.17999 9.01001L2.61999 6.31C2.27999 5.97 2.01001 5.36999 2.01001 4.95999V3.41C2.00001 2.61 2.60997 2 3.34997 2Z'
                        stroke='%23292D32' stroke-width='1.5' stroke-miterlimit='10' stroke-linecap='round'
                        stroke-linejoin='round' /%3E%3Cpath
                        d='M2 12V15C2 20 4 22 9 22H15C20 22 22 20 22 15V9C22 5.88 21.22 3.91999 19.41 2.89999C18.9 2.60999 17.88 2.38999 16.95 2.23999'
                        stroke='%23292D32' stroke-width='1.5' stroke-linecap='round' stroke-linejoin='round' /%3E%3Cpath
                        d='M13 13H18' stroke='%23292D32' stroke-width='1.5' stroke-linecap='round' stroke-linejoin='round'
                        /%3E%3Cpath d='M11 17H18' stroke='%23292D32' stroke-width='1.5' stroke-linecap='round'
                        stroke-linejoin='round' /%3E%3C/svg%3E%0A" alt="">
                <p>My Applications</p>
            </a>
        </div>
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
