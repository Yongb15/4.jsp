<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="js/httpRequest.js"></script>
<script type="text/javascript">
//send 메서드 작성
//서블릿 : UserInsertAction
//db에 insert하기

let b_idCheck = false;

function send(f){
	//유효성 검사
	
	if(b_idCheck == false){
		alert("아이디 중복검사를 하세요")
		return
	}
	
	f.action = "insert"
	f.method = "post";
	f.submit();
}

function check_id(){
	let id = document.getElementById("id").value;
	alert(id)
	if(id == ''){
		alert("아이디를 입력해주세요");
	}
	
	//비동기를 안쓰면 텍스트필드에 적혀있는 내용이 다 날아간다.
	//무한 중복체크를 해야 한다.
	//fetch()를 이용하여 check_id로 id값을 가지고 간다.
	//서블릿 : UserCheckAction(chek_id)
	//id를 가지고 조회를 해서 있으면 "no", 없으면 "yes"를
	//res 변수에 담으세요.

	let url = "check_id?id="+id
	
	fetch(url)//id를 check_id로 보낸다.
	.then(response => response.json()) //응답을 json으로 변환
	//{"param" : "no or yes"}
	.then(data => {
		if(data.param === 'yes'){
			alert('사용 가능한 아이디 입니다.')
			console.log('서버로부터 받은 데이터 :',data.param);
			b_idCheck = true
		} else if(data.param === 'no'){
			alert('이미 사용중인 아이디 입니다.')
			console.log('서버로부터 받은 데이터 : ',data.param);
			return;
		}
	})
	.catch(error => console.error('오류 발생:',error))
}

function che(){
	b_idCheck = false
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
					<!-- onchange : input태그의 포커스를 벗어났을 때 발생하는 이벤트 -->
					<input name="id" id="id" onchange="che()">
					<input type="button" value="중복체크" onclick="check_id()">
				</td>
			</tr>
			<tr>
				<th>이름</th>
				<td><input name="name"></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input name="pwd" type="password"></td>
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






