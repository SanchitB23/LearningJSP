<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>
</head>
<body>
	<h3>Training Portal</h3>
	<%
		String favLang = "Java";
		Cookie[] theCookies = request.getCookies();
		if (theCookies != null) {
			for (Cookie temp : theCookies) {
				if ("test.favLang".equals(temp.getName())) {
					favLang = temp.getValue();
					break;
				}
			}
		}
	%>
	<h4>
		New Books
		<%=favLang%></h4>
	<ul>
		<li>Whatever</li>
		<li>Whatever</li>
		<li>Whatever</li>
		<li>Whatever</li>
	</ul>
	<h4>
		News for
		<%=favLang%></h4>
	<ul>
		<li>Whatever</li>
		<li>Whatever</li>
		<li>Whatever</li>
		<li>Whatever</li>
	</ul>
	<h4>
		Jobs for
		<%=favLang%></h4>
	<ul>
		<li>Whatever</li>
		<li>Whatever</li>
		<li>Whatever</li>
		<li>Whatever</li>
	</ul>
	<hr>
	<a href="cookies-personalize-form.html">Personalize this page</a>
</body>
</html>