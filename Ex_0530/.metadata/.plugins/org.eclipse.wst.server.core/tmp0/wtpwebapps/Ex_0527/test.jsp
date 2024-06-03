<%@page import="java.util.ArrayList"%>
<%@page import="vo.PersonVo"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    List<PersonVo> list = new ArrayList<>();
    
    list.add(new PersonVo("홍길동",20,"010-1111-1111"));
    list.add(new PersonVo("이길동",20,"010-2222-2222"));
    list.add(new PersonVo("김길동",20,"010-3333-3333"));
    list.add(new PersonVo("박길동",20,"010-4444-4444"));
    list.add(new PersonVo("조길동",20,"010-5555-5555"));
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1">
	<caption>:::개인정보 목록:::</caption>
	<tr>
	<th>이름</th>
	<th>나이</th>
	<th>전화번호</th>
	</tr>
	<%for(int i = 0; i<list.size(); i++){ %>
	<tr>
	<td><%=list.get(i).getName()%></td>
	<td><%=list.get(i).getAge()%></td>
	<td><%=list.get(i).getTel()%></td>
	</tr>
	<%}%>
</table>
</body>
</html>