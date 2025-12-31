<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="<%=request.getContextPath()%>/fileuploadProcess"
		method="post" enctype="multipart/form-data">

		<p>
			파일 선택: <input type="file" name="files" multiple>
		</p>

		<input type="submit" value="업로드">
	</form>
</body>
</html>