<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*"%>
<%@ page import="com.example.webapplicationgta.User" %>
<html>
<head>
    <title>Application Data</title>

    <link type="text/css" rel="stylesheet" href="css/style.css">
</head>

<%
    String[] gtaApplication = (String[]) request.getAttribute("APPLICATION");

%>

<body>

    <div id="wrapper">
        <div id="header">
            <h2>Users</h2>
        </div>
    </div>

    <div id="container" style="align-content: center">

        <table>
            <tr>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Student ID</th>
                <th>Email</th>
                <th>College Level</th>
                <th>Graduating Semester</th>
                <th>GPA</th>
                <th>Hours Completed at UMKC</th>
                <th>Research Advisor</th>
                <th>Major</th>
                <th>Teachable Courses</th>
                <th>International or Domestic</th>
                <th>GTA Certified</th>
            </tr>

            <tr>
            <% for (String value : gtaApplication){ %>
                    <td> <%= value %> </td>
            <% } %>
            </tr>

        </table>
    </div>

</body>

</html>
