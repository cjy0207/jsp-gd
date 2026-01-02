<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 입력 데이터의 첫 문자가 숫자인지 검사하는 예 -->
	<form name="frm">
		<p>이름 : <input type="text" name="name"></p>
		<button type="submit" onclick="checkLogin(event)">전송</button>
	</form>
	
	<script type="text/javascript">
		function checkLogin(e) {
			const str = document.frm.name.value;
			
			//const regExp = /^[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
			// 의미?
			// ^ : 문자열의 시작
			// [] : 범위 중에 한 문자
			// a-z, |(파이프 문자), A-Z, |, ㄱ-ㅎ, |, ㅏ-ㅣ, |, 가-힣 중 하나의 문자와 매치
			// 끝에 $가 없음 => 문자열의 첫 글자만 검사하고, 그 뒤는 신경쓰지 않음
			
			// 숫자로 시작
			//const regExp = /^[0-9]/;
			
			// 첫 글자가 영문자 또는 한글인 경우만 통과시키려면
			const regExp = /^[a-zA-Zㄱ-ㅎㅏ-ㅣ가-]/
			// 범위 지정시에는 |를 넣지 말고 연속해서 써야함
			
			//문자 전체가 영문/하ㅏㄴ글로만 이루어져야함 : /^[a-zA-Zㄱ-ㅎ ㅏ-ㅣ가-]+$/
			
			if(regExp.test(str)){
				alert("이름은 숫자로 시작할 수 없습니다.")
				e.preventDefualt();
				return;
			}
			
			
		}
	</script>

</body>
</html>

