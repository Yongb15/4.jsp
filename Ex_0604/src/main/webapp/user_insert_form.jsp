<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="js/httpRequest.js"></script>
<script type="text/javascript">
	// send 메서드 작성
	// 서블릿 : UserInsertAction
	// db에 insert하기
	
	let b_idCheck = false
	
	function send(f) {
		let id = f.id.value.trim();
		let name = f.name.value.trim();
		let pwd = f.pwd.value.trim();
		
		if(id == '') {
			alert('아이디를 입력하세요');
			return
		}
		
		if(name == '') {
			alert('이름을 입력하세요');
			return
		}
		
		if(pwd == '') {
			alert('비밀번호를 입력하세요');
			return
		}
		
		f.method = "POST"
		f.action = "insert";
		f.submit();
	}
	
	function check_id() {
		let id = document.getElementById("id").value;
		
		if(id == '') {
			alert("아이디를 입력해주세요");
		}
		
		// 비동기를 안쓰면 텍스트필드에 적혀있는 내용이 다 날아감
		// 무한 중복체크를 해야 함
		// fetch()를 이용하여 check_id로 id값을 가지고 감
		// 서블릿 : UserCheckAction(check_id)
		// 아이디를 가지고 조회를 해서 있으면 "no", 없으면 "yes"를 res 변수에 담기
		let url = "check_id";
		let param = "id="+id
		
		sendRequest(url, param, resultFn, "POST");
	}
	function resultFn() {
		console.log("callback");
	}
</script>
</head>
<body>
	<form>
		<table border="1">
			<caption>:::회원가입:::</caption>
			<tr>
				<th>아이디</th>
				<td>
					<input name="id" id="id">
					<input type="button" value="중복체크" onclick="check_id()">
				</td>
			</tr>
			<tr>
				<th>이름</th>
				<td>
					<input name="name">
				</td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td>
					<input name="pwd" type="password">
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="button" value="가입" onclick="send(this.form)">
					<input type="button" value="취소" onclick="location.href='user_list'">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>









