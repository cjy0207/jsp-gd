<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
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
	<!-- Statement 객체로 INSERT 쿼리문 실행 결과 값 가져오기 -->
	<%@ include file="dbconn.jsp" %>
	
	<table border="1" style="width:300px">
		<tr>
			<th>아이디</th>
			<th>비번</th>
			<th>이름</th>
		</tr>
		
		<%
			ResultSet rs = null;
			PreparedStatement psmt = null;
			
			try{
				String sql = "SELECT * FROM member";
				
				psmt = conn.prepareStatement(sql);
		    rs = psmt.executeQuery(); 
		    
		    while(rs.next()){ 
		 %>
		 
		    <tr>
			    <td><%= rs.getString("id") %></td>
			    <td><%= rs.getString("passwd") %></td>
			    <td><%= rs.getString("name") %></td>
		    </tr>
		    	
		<%
		        }
		
		    } catch (Exception e) {
		        out.println("조회 실패<br>");
		        out.println(e.getMessage());
		
		    } finally {
		        if (psmt != null) psmt.close();
		        if (conn != null) conn.close();
		    }
		%>

		
	</table>
	
</body>
</html>