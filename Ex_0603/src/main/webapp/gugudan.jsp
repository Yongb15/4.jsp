<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function send() {
		let dan = document.getElementById("dan").value;  // dan이라는 태그의 정보를 가져와서 dan에 넣음
		
		alert(dan);
		let url = "gugudanAjax.jsp?dan=" + dan; 		// get 방식으로 찍을 예정 / 쿼리스트링 방식으로 파라미터 전달
		
		fetch(url)			 
		.then(response => response.text())
		.then((data) => document.getElementById("disp").innerHTML = data)
	}
</script>
</head>
<body>
	단 : <input id="dan">
	<input type="button" value="결과보기" onclick="send()"><br>
	<div id="disp"></div>
</body>
</html>