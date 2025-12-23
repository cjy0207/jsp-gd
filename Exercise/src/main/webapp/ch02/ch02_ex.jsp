<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- 7. declaration -->
	<%!
    String str = "Hello, Java Server Pages";

    String getString() {
        return str;
    }
	%>

	<h3><%= getString() %></h3>
	<br>
	
	<!-- 8. scriptlet -->
	<%= new java.util.Date() %>
	<br>
	
	<!-- 9. expression -->
	<%= java.util.Calendar.getInstance().getTime() %>
	

</body>
</html>