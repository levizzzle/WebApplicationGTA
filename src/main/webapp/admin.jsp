<%@ page import="java.util.List" %>
<%@ page import="com.example.webapplicationgta.Application" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <jsp:include page="header.jsp"></jsp:include>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>UMKC | GTA Application Portal</title>
    <link rel="stylesheet" type="text/css" href="css/admin.css">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link href="/docs/5.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>

<body>

<!-- New addition for 4 buttons -->
<section id="subheadpart">
    <button type="button" id="aBtn">Pending Applications</button>
    <button type="button" id="aBtn1">Bookmarked Apps</button>
    <button type="button" id="aBtn2">Recently Denied</button>
    <button type="button" id="aBtn3">Recently Accepted</button>
</section>
<!-- ------------ -->

<%
    List<Application> applications = (List<Application>) request.getAttribute("APPLICATION_LIST");
%>

<section id="bodypart">
    <div class="table-responsive-lg">
        <table class="table table-bordered caption-top" id="myTable">
            <caption>Table</caption>
            <thead class="table-primary">
            <!-- <th scope="col">#</th> -->
            <th scope="col">Application ID</th>
            <th scope="col">First Name</th>
            <th scope="col">Last Name</th>
            <th scope="col">Student ID</th>
            <th scope="col">Email</th>
            <th scope="col">Academic Level</th>
            <th scope="col">Graduated Year</th>
            <th scope="col">GPA</th>
            <th scope="col">Hours</th>
            <th scope="col">Advisor</th>
            <th scope="col">Major</th>
            <th scope="col">Courses</th>
            <th scope="col">Status</th>
            <th scope="col">GTA Certified</th>
            </thead>

            <% for (Application tempApplication : applications){ %>
            <tr>
                <td> <%= tempApplication.getApplicationID() %> </td>
                <td> <%= tempApplication.getFirstName() %> </td>
                <td> <%= tempApplication.getLastName() %> </td>
                <td> <%= tempApplication.getStudentID() %> </td>
                <td> <%= tempApplication.getEmail() %> </td>
                <td> <%= tempApplication.getDegreeLevel() %> </>
                <td> <%=  tempApplication.getGraduateSemester() %> </td>
                <td> <%=  tempApplication.getGpa() %> </td>
                <td> <%=  tempApplication.getHoursAtUMKC() %> </td>
                <td> <%=  tempApplication.getResearchAdvisor() %> </td>
                <td> <%=  tempApplication.getMajor() %> </td>
                <td> <%=  tempApplication.getQualifiedCourses() %> </td>
                <td> <%=  tempApplication.getDomesticInternational() %> </td>
                <td> <%=  tempApplication.getGtaCertified() %> </td>
            </tr>
            <% } %>

        </table>
    </div>
</section>
<script src=".js files/logout.js"></script>
<script src=".js files/getData.js"></script>

<!---JavaScript Bootstrap--->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
        integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
        crossorigin="anonymous"></script>
</body>

</html>
