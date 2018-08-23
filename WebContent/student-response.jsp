<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Confirmation Title</title>
</head>
<body>
	The Student is Confirmed: ${param.firstName} ${param.lastName}
	<br>
	<br> The Student's country: ${param.country}
	<br>
	<br> Favorite Language: ${param.languageRadio }
	<br>
	<br> CheckBoxes:
	<ul>
		<%
			String[] langs = request.getParameterValues("languageCheckbox");
		
			for(String temp:langs){
				out.println("<li>"+temp+"</li>");
			}
		%>
	</ul>
</body>
</html>