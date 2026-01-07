<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page errorPage="exceptionNoBookId.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서 정보</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">

<script type="text/javascript">
	function addToCart() {
		if (confirm('도서를 장바구니에 추가하시겠습니까?')) {
			document.addForm.submit();
		} else {
			document.addForm.reset();
		}
	}
</script>
</head>

<body>
<div class="container py-4">

	<%@ include file="menu.jsp" %>

	<jsp:include page="title.jsp">
		<jsp:param value="도서정보" name="title"/>
		<jsp:param value="BookInfo" name="sub"/>
	</jsp:include>

	<%@ include file="dbconn.jsp" %>

	<%
		String id = request.getParameter("id");

		String sql = "SELECT * FROM book WHERE b_id = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();

		if (!rs.next()) {
			throw new Exception("도서를 찾을 수 없습니다.");
		}
	%>

	<div class="row align-items-md-stretch">
		<div class="col-md-5">
			<img src="<%= request.getContextPath() %>/images/<%= rs.getString("b_fileName") %>"
				 style="width:70%;">
		</div>

		<div class="col-md-6">
			<h3><b><%= rs.getString("b_name") %></b></h3>

			<p><%= rs.getString("b_description") %></p>

			<p>
				<b>도서코드</b> :
				<span class="badge text-bg-danger"><%= rs.getString("b_id") %></span>
			</p>

			<p><b>저자</b> : <%= rs.getString("b_author") %></p>
			<p><b>출판사</b> : <%= rs.getString("b_publisher") %></p>
			<p><b>출판일</b> : <%= rs.getString("b_releaseDate") %></p>
			<p><b>분류</b> : <%= rs.getString("b_category") %></p>
			<p><b>재고수</b> : <%= rs.getInt("b_unitsInStock") %></p>

			<h4><%= rs.getInt("b_unitPrice") %>원</h4>

			<form action="./addCart.jsp?id=<%= rs.getString("b_id") %>"
				  method="post" name="addForm">

				<input type="hidden" name="bookId"
					   value="<%= rs.getString("b_id") %>">

				<a href="#" class="btn btn-info" onclick="addToCart()">도서주문 &raquo;</a>
				<a href="./cart.jsp" class="btn btn-warning">장바구니 &raquo;</a>
				<a href="./books.jsp" class="btn btn-secondary">도서목록 &raquo;</a>
			</form>
		</div>
	</div>

	<%@ include file="footer.jsp" %>

</div>
</body>
</html>