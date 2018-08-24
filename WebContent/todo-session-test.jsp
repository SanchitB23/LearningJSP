<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>To Do List</title>
</head>
<body>

	<form action="todo-session-test.jsp">
		Add New Item: <input type="text" name="item"> <input
			type="submit" value="Submit">
	</form>
	<br>
	<br>
	<%
		List<String> items = (List<String>) session.getAttribute("myToDoList");

		if (items == null) {
			items = new ArrayList<String>();
			session.setAttribute("myToDoList", items);
		}
		String item = request.getParameter("item");
		if (item != null) {
			items.add(item);
		}
	%>
	<hr>
	<b>To Do List Items</b>
	<br>
	<ol>
		<%
			for (String temp : items) {
				out.println("<li>" + temp + "</li>");
			}
		%>
	</ol>
</body>
</html>