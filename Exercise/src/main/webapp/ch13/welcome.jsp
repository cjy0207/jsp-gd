<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String userID = (String) session.getAttribute("userID");

	if (userID == null) {
		response.sendRedirect("session_out.jsp");
		return;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
</head>
<body>
	<h4><%= userID %> 님 반갑습니다.</h4>
	<a href="session_out.jsp">로그아웃</a>
</body>
</html>