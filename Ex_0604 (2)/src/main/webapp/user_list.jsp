<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	//삭제하기 기능
	//삭제할지 안할지 물어보기 : confirm
	//서블릿 : UserDeleteAction (user_del)
	//idx를 db까지 전달하여 테이블에서 삭제하고
	//fetch() 사용하기
	//삭제가 잘 됐으면 "삭제되었습니다.", 안됐으면 "삭제에 실패했습니다." 라고 경고창 띄우기
	function del(idx){
		if(confirm("정말 삭제하시겠습니까?") == false){
			//아니오 버튼 클릭시 
			return;
		}
		
		let url = "user_del?idx="+idx
			console.log(idx)
		fetch(url)
		.then(response => response.json())
		.then(data => {
			if(data.param === 'yes'){
				alert("삭제되었습니다.")
			} else if(data.param === 'no'){
				alert('삭제에 실패했습니다.')
			}
			location.href="user_list";
		})
	}
</script>
</head>
<body>
	<table border="1">
		<tr>
			<td colspan="5" align="center"><input type="button" value="회원가입" onclick="location.href='user_insert_form.jsp'">
		<tr>
			<th>회원번호</th>
			<th>이름</th>
			<th>아이디</th>
			<th>비밀번호</th>
			<th>비고</th>
		</tr>
		<c:forEach var="vo" items="${list}">
		<tr>
			<td>${vo.idx}</td>
			<td>${vo.name}</td>
			<td>${vo.id}</td>
			<td>${vo.pwd}</td>
			<td><input type="button" value="삭제" onclick="del('${vo.idx}');">
		</tr>
		</c:forEach>
	</table>
</body>
</html>