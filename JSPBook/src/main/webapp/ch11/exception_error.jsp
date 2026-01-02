<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 오류 관련 정보 출력 -->
	<p>오류 발생</p>
	<p>예외 유형(클래스명) : <%= exception.getClass().getName() %></p>
	<p>예외 메세지 : <%= exception.getMessage() %></p>
	<p>예외 유형 + 메세지 : <%= exception.toString() %></p>
</body>
</html>