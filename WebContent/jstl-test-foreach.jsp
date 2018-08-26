<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
	int[] test = { 1, 2, 3, 4, 5, 6, 7, 8, 9 };
	pageContext.setAttribute("test", test);
%>
<body>
	<c:forEach var="test" items="${test}">
${test} <br>
	</c:forEach>
</body>
</html>