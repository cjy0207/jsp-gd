<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 현재 JSP 페이지를 오류 페이지로 설정 -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Directives Tag</title>
</head>
<body>
	<!-- 오류 페이지로 설절 시 exception 내장 객체 사용 가능 -->
	<h4>errorPage 디렉티브 태그</h4>
	<h5>exception 내장 객체 변수</h5>
	<%
		exception.printStackTrace(new PrintWriter(out));
		// 출력 스트립(out)으로 예외 정보를 그래도 브라우저에 보여줌
	%>
</body>
</html>