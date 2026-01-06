<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>화면을 이용한 화면 설정 예제</title>
</head>
<body>
	<%
		String language = "korea";
	
	Cookie[] cookies = request.getCookies();
	
	if(cookies != null){
		for(Cookie cookie : cookies){
			if("language".equals(cookie.getName())){
				language = cookie.getValue();
			}
		}
	}
	%>
	
	<%
		if("korea".equals(language)){ %>
			<h3>안녕하세요. 이것은 쿠키 예제</h3>
	<% 	} else { %>
			<h3>Hello. this is Cookie Example</h3>
	<% } %>
	
	<form action="cookieExample2.jsp" method="post">
		<input type="radio" name="language" value="korea" <%= "korea".equals(language) ? "checked" : "" %>>한국어
				<input type="radio" name="language" value="english" <%= "english".equals(language) ? "checked" : "" %>>english
				<button type="submit">설정</button>
	</form>
	
	<!-- 이처럼 쿠키는 클라이언트에 저장되너 환경 설정을 유지할 수 있는 기능 구현에 활용 -->
	
	
</body>
</html>