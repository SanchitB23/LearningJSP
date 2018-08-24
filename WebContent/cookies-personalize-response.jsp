<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Confirmation</title>
</head>
<%
	String favLang = request.getParameter("favLang");
	Cookie theCookie = new Cookie("test.favLang", favLang);
	theCookie.setMaxAge(60 * 60 * 24 * 365);
	response.addCookie(theCookie);
%>
<body>
	Favorite Language set to: ${param.favLang}
	<br>
	<br>
	<a href="cookies-homepage.jsp">Return to Homepage</a>
</body>
</html>