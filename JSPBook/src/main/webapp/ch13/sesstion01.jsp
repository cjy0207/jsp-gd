<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sesstion</title>
</head>
<body>
	<!-- 세션 생성하기 -->
	<form action="sesstion01_process.jsp" method="post" >
		<p> id : <input type="text" name="id"></p>
		<p> password : <input type="password" name="passwd"></p>
		<button type="submit">전송</button>
	</form>
</body>
</html>