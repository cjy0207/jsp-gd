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
	<form name="loginForm">
		<p>아이디 : <input type="text" name="id"></p>
		<p>비밀번호 : <input type="password" name="password"></p>
		<button type="submit" onclick="checkForm(event)">전송</button>
	</form>
	
	<script type="text/javascript">
	// name 기반 접근은 구식의 레거시 방식
	// 현대 웹 표준에서는 권장되지 않음
	// 대신 id 속성과 getElementsById() 또는 querySelector()와 같이 표쥰 DOM API 사용 권장
		function checkForm(e) {
			e.preventDefault(); // 폼 제출 막기
			
			alert("아이디 : " + document.loginForm.id.value + "\n" 
					+ "비밀번호 : " + document.loginForm.password.value);
		}
	</script>

</body>
</html>