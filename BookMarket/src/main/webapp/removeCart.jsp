<%@page import="dto.Book"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.BookRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>removeCart</title>
</head>
<body>
	<!-- 장바구니에 등록된 개별 도서 삭제 -->
	<%
		// 1. 요청 파라미터 검증
		String id = request.getParameter("id"); // 쿼리 스트링으로 보낸 데이터
		if (id == null || id.trim().isEmpty()) { // id가 null인지 빈 문자열인지 검증
			response.sendRedirect("books.jsp");
			return;
		}
		
		// 2. 도서 조회
		BookRepository dao = BookRepository.getInstance();
		Book book = dao.getBookById(id);
		if (book == null) {
			response.sendRedirect("exceptionNoBookId.jsp");
			return;
		}
		
		// 3. 세션에서 장바구니 정보 가져오기(없으면 새로 생성)
		ArrayList<Book> cartList = (ArrayList<Book>) session.getAttribute("cartlist");
		
		
		// 4. 장바구니에 동일 도서가 있으면 삭제
		for (Book item : cartList) {
			if (item.getBookId().equals(id)) {
				cartList.remove(item);
				break; // 동시성 예외응 처리하려면 iterator()이용 
				// 인덱스가 밀려서 반복을 돌고 있는 중에 배열의 변경이 생겨 예외가 생기기 떄문에 반복문 빠져나와야함
			}
		}
		
		// 5. 장바구니 페이지로 리다이렉트
		response.sendRedirect("cart.jsp?id=" + id);
		
		
	%>
</body>
</html>