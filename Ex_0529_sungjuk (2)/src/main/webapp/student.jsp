<%@page import="vo.SjVO"%>
<%@page import="java.util.List"%>
<%@page import="dao.SjDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<SjVO> list = SjDAO.getInstance().selectList();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<tr>
			<th>번호</th>
			<th>이름</th>
			<th>국어</th>
			<th>영어</th>
			<th>수학</th>
			<th>총점</th>
			<th>평균</th>
			<th>순위</th>
			<th>비고</th>
		</tr>
		<%for(int i = 0; i < list.size(); i++){
				SjVO vo = list.get(i);
			%>
		<tr>
			<td><%= vo.getNo() %></td>
			<td><%= vo.getName() %></td>
			<td><%= vo.getKor() %></td>
			<td><%= vo.getEng() %></td>
			<td><%= vo.getMat() %></td>
			<td><%= vo.getTotal() %></td>
			<td><%= vo.getAvg() %></td>
			<td><%= vo.getRank() %></td>
		</tr>
		<%} %>
	</table>
</body>
</html>





