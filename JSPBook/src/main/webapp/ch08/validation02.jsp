<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 폼 페이지에서 입력한 아이디와 비밀번호 출력하기 -->
	<form name="loginForm" action="validation02_process.jsp" method="post">
		<p>아이디 : <input type="text" name="id"></p>
		<p>비밀번호 : <input type="password" name="password"></p>
		<button type="submit" onclick="checkLogin(event)">전송</button>
	</form>
	
	<script type="text/javascript">
		function checkLogin(e) {
			const form = document.loginForm;
			
			if (form.id.value === '') {
				alert("아이디를 입력하세요.");
				form.id.focus();
				e.preventDefault();
				return;
			}
			
			if (form.password.value === '') {
				alert("비밀번호를 입력하세요.");
				form.password.focus();
				e.preventDefault();
				return;
			}
			
		}
	</script>

</body>
</html>

