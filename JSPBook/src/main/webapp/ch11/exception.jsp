<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="errorPage_error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- web.xml 파일에 오류 코드로 오류 페이지 호풀하기 -->
	<form action="exception_process.jsp" method="post">
		<p> 숫자 1 : <input type="text" name="num1"></p>
		<p> 숫자 2 : <input type="text" name="num2"></p>
		<button type="submit">나누기</button>
	</form>

</body>
</html>