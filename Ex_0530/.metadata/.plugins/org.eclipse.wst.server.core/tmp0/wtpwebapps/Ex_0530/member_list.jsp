<%@page import="mevo.MeVO"%>
<%@page import="medao.MeDAO"%>
<%@page import="java.lang.reflect.Member"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    List<MeVO> member_list = MeDAO.getInstance().selectList();
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1">
	<caption>:::회원목록:::</caption>
	<tr>
	<th>회원번호</th>
	<th>이름</th>
	<th>아이디</th>
	<th>비밀번호</th>
	<th>이메일</th>
	<th>비고</th>
	</tr>
<%for(int i = 0; i<member_list.size(); i++){
		MeVO vo=member_list.get(i);
	%>
	<tr>
	 <td><%=vo.getIdx() %></td>
	 <td><%=vo.getName() %></td>
	 <td><%=vo.getId() %></td>
	 <td><%=vo.getPwd() %></td>
	 <td><%=vo.getEmail() %></td>
	 </tr>
	 <%}%>
</table>
<input type="button" value="추가" onclick="location.href='member_register_form.jsp'">
</body>
</html>