<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Action Tag</title>
</head>
<body>

	<p><%= request.getParameter("title") %></p>
	Today is : <%= request.getParameter("date") %></p>
	
</body>
</html>

