<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function send(f){
	let name = f.name.value.trim();
	let kor = f.kor.value.trim();
	let eng = f.eng.value.trim();
	let mat = f.mat.value.trim();
	
	//유효성체크
	if(name == ''){
		alert("이름을 입력하세요")
		return
	}
	//0~9까지만 사용가능하고, 한자리에서 세자리까지 사용 가능한 정규식
	let num = /^[0*8]{1,3}$/
	if(!num.test(kor)&kor<0||kor>100){
		alert("3자리 이하의 정수만 입력하세요")
		return;
	}
	if(!num.test(eng)&eng<0||eng>100){
		alert("3자리 이하의 정수만 입력하세요")
		return;
	}
	if(!num.test(mat)&mat<0||mat>100){
		alert("3자리 이하의 정수만 입력하세요")
		return;
	}
	f.action = "register.jsp";
	f.method = "get";
	f.submit();
}
</script>
</head>
<body>
<form>
	<table border="1">
	<tr>
	<th>이름</th>
	<td><input name="name"></td>
	</tr>
	<th>국어</th>
	<td><input name="kor"></td>
	</tr>
	<th>영어</th>
	<td><input name="eng"></td>
	</tr>
	<th>수학</th>
	<td><input name="mat"></td>
	</tr>
	<tr>
	<td colspan="2">
	<input type="button" value="등록" onclick="send(this.form)">
	<input type="button" value="취소" onclick="location.href='student.jsp'">
	</td>
	</tr>
	</table>
</form>
</body>
</html>