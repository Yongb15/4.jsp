<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function send(f){
	let name = f.value.name.trim();
	let id = f.value.id.trim();
	let pwd = f.value.pwd.trim();
	let email = f.value.email.trim();
	if(name==''){
		alert("이름을 입력하세요")
		return
	}
	if(id==''){
		alert("아이디를 입력하세요")
		return
	}
	if(pwd==''){
		alert("비밀번호를 입력하세요")
		return
	}
	if(email==''){
		alert("이메일을 입력하세요")
		return
	}
}
</script>
</head>
<body>
<form>
<table border="1">
<tr>
<th>이름</th>
<td><input type="name"></td>
<th>아이디</th>
<td><input type="id"></td>
<th>비밀번호</th>
<td><input type="pwd"></td>
<th>이메일</th>
<td><input type="email"></td>
</tr>
<tr>
<td><input type="button" value="등록" onclick="send(this.form)">
<input type="button" value="취소" onclick="member_list.jsp">
</td>
</tr>
</table>
</form>
</body>
</html>