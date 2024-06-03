<%@page import="dao.SungDAO"%>
<%@page import="vo.SungVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<SungVO> list = SungDAO.getInstance().selectList();
%>
<!DOCTYPE html>
<html>
<head>
<style>
	a {
		margin-left : 55px;
	}
	table {
		text-align : center;
	}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a>학생정보</a>
	<table border="1">
		<tr>
			<th>이름</th>
			<th>국어</th>
			<th>영어</th>
			<th>수학</th>
			<th>총점</th>
			<th>평균</th>
			<th>순위</th>
			<th>비고</th>
		</tr>
		<%
			for(int i = 0; i < list.size(); i++) {
				SungVO sv = list.get(i);
		%>
		<tr>
			<td><%= sv.getName() %></td>
			<td><%= sv.getKor() %></td>
			<td><%= sv.getEng() %></td>
			<td><%= sv.getMat() %></td>
			<td><%= sv.getTotal() %></td>
			<td><%= sv.getAvg() %></td>
			<td><%= sv.getRank() %></td>
			<td><%= sv.getNo() %></td>
		</tr>
		<% } %>
	</table>
</body>
</html>