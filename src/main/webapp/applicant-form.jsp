<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.io.BufferedReader" %>
<%@ page import="java.io.FileReader" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Applicant Information Form</title>
    <jsp:include page="header.jsp"></jsp:include>
</head>

<body>

<br/><br/>
<form action="applicant-response.jsp">
    First name: <input type="text" name="firstName"/>
    <br/><br/>
    Last name: <input type="text" name="lastName"/>
    <br/><br/>

    <td style="color: #000000">
    <%
        List<String> undergradClasses = new ArrayList<String>();
        BufferedReader bf = new BufferedReader(new FileReader("C:\\apache-tomcat-10.0.16\\webapps\\WebApplicationGTA\\src\\main\\resources\\undergraduate-classes.txt"));
        String line = bf.readLine();
        while (line != null) {
            undergradClasses.add(line);
            line = bf.readLine();
        }
        bf.close();
        String[] array = undergradClasses.toArray(new String[0]);

        for (String str : array) {
            String name = str.split(" -")[0];
            out.println("<input type=\"checkbox\" name=\"classes\" value=\""+name+"\">");
            out.println(str);
            out.print("</br>");
        }
    %>
    </br>
    <input type="submit" value="Submit"/>
    </td>
    </br>
    </br>

</form>
</body>
</html>
