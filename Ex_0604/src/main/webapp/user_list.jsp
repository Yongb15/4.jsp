<%@page import="dao.UserDAO"%>
<%@page import="vo.UserVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form>
	<table border="1">
		<tr>
			<td colspan="5" align=center><input type="button" value="회원가입" onclick="location.href='user_insert_form.jsp'">
		</tr>
		<tr>
			<th>회원번호</th>
			<th>이름</th>
			<th>아이디</th>
			<th>비밀번호</th>
			<th>비고</th>
		</tr>
		<c:forEach var = "vo" items="${list}">
		<tr>
			<td>${vo.idx}</td>
			<td>${vo.name}</td>
			<td>${vo.id}</td>
			<td>${vo.pwd}</td>
		</tr>
		</c:forEach>
	</table>
</form>
</body>
</html>