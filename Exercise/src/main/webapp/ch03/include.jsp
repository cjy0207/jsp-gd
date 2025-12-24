<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file = "header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p> 현재 시간 : 
	<%
		Calendar cal = Calendar.getInstance();
		out.println(cal.getTime());
	%>
	</p>
</body>
</html>