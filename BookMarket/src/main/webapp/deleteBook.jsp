<%@page import="util.DBUtil"%>
<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>도서 삭제</title>
</head>
<body>

<%@ include file="dbconn.jsp" %>

<%
    String bookId = request.getParameter("id");
	
    String sql = "DELETE FROM book WHERE b_id = ?";

    try {
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, bookId);

        pstmt.executeUpdate();

        response.sendRedirect("editBook.jsp?edit=delete");
        
    } catch (SQLException e) {
        e.printStackTrace();
    } finally {
        DBUtil.close();
    }
%>

</body>
</html>