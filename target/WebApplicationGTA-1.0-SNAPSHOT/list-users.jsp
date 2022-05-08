<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*"%>
<%@ page import="com.example.webapplicationgta.User" %>
<html>
<head>
    <title>Database Users</title>

    <link type="text/css" rel="stylesheet" href="css/style.css">
</head>

<%
    List<User> theUsers = (List<User>) request.getAttribute("USER_LIST");
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
                <th>Email</th>
                <th>Password</th>
                <th>Is Admin</th>
            </tr>

            <% for (User tempUser : theUsers){ %>
                <tr>
                    <td> <%= tempUser.getFirstName() %> </td>
                    <td> <%= tempUser.getLastName() %> </td>
                    <td> <%= tempUser.getEmail() %> </td>
                    <td> <%= tempUser.getPassword() %> </>
                    <td> <%=  tempUser.getIsAdmin() %> </td>
                </tr>
            <% } %>

        </table>
    </div>

</body>

</html>
