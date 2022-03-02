<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Confirmation</title>
</head>
<body>

    Student name: ${param.firstName} ${param.lastName}
    </br></br>
    Classes Taken:
    </br></br>
    <%
        String[] classes = request.getParameterValues("classes");
        for(String name : classes){
            out.print(name + "</br>");
        }
    %>
</body>
</html>
