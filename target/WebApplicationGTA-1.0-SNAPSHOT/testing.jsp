<%@ page import="java.util.Locale, com.example.webapplicationgta.*" %>
<html>
<header>
	<jsp:include page="header.jsp"></jsp:include>
</header>

<body>

<h1>TEST JSP</h1>



</body>

<footer>
	<jsp:include page="footer.jsp"></jsp:include>
</footer>
</html>

<%--declaration--%>
<%!
	String lowerCase(String data){
		return data.toLowerCase();
	}
%>

<%--built in objects--%>
<%--Request user agent: <%= request.getHeader("User-Agent") %>--%>
<%--<br/><br/>--%>
<%--Request language: <%= request.getLocale() %>--%>
<%--<br/><br/>--%>

<%--scriptlet--%>
<%--<%--%>
<%--	String txt = "WOOOOT";--%>
<%--	for (int i=1; i <=5; i++) {--%>
<%--		out.println(lowerCase(txt) + i + "<br/>");--%>
<%--	}--%>
<%--%>--%>

<%--expression--%>
<%--<% String txt2 = "BAAAAAAAAM";%>--%>
<%--&lt;%&ndash;class call&ndash;%&gt;--%>
<%--<%= FunUtils.makeItLower(txt2)%>--%>