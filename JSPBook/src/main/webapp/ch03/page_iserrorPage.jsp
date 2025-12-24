<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage = "page_iserrorPage_error.jsp" %>
<!-- 참고
	JSP 컨테이너는 info속성에 대응하여 getServletInfo() 메소드를 생성
	return "Date 클래스를 이용한 날짜 출력하기";	
 -->
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Directives Tag</title>
</head>
<body>
	<!-- page 디렉티브 태그에 이동할 특정 오류 페이지 작성하기 -->
	<!-- 웹 서버(톰캣) -->
	<% 
		String str = null;
		out.println(str.toString());
	%>
	
</body>
</html>