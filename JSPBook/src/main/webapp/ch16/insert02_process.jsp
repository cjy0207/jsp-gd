<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="dbconn.jsp" %>
	<%
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		String name = request.getParameter("name");
		
		PreparedStatement psmt = null;
		
		try{
			String sql = "INSERT INTO member (id, passwd, name) VALUES (?, ?, ?)";

			psmt = conn.prepareStatement(sql); // 동적 쿼리에 사용하는 PreparedStatment 객체 생성
			
			psmt.setString(1, id);
			psmt.setString(2, passwd);
			psmt.setString(3, name);
			
			psmt.executeUpdate(); // INSERT문 실행
			out.println("member 테이블 삽입 성공<br>");
			
		} catch (SQLException e) {
			out.println("member 테이블 삽입 실패<br>");
			out.println("SQLException : " + e.getMessage());
			
		} finally {
			if(psmt != null) psmt.close();
			if(conn != null) conn.close();
		}
		
	%>
</body>
</html>