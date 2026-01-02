<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		try{
			
			int num1 = Integer.parseInt(request.getParameter("num1"));
			int num2 = Integer.parseInt(request.getParameter("num2"));
			int result = num1 / num2;
			out.println(result);
			
		} catch(NumberFormatException e){
			// 예외 발생 시 오류 페이지로 이동
			RequestDispatcher dispatcher = request.getRequestDispatcher("tryCatch_error.jsp");
			dispatcher.forward(request, response);
			
		}
	%>
	
</body>
</html>