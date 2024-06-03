<%@page import="java.util.ArrayList"%>
<%@page import="vo.PersonVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	List<PersonVO> list = new ArrayList<>();
    	list.add(new PersonVO("홍길동",30));
    	list.add(new PersonVO("김길동",24));
    	
    	request.setAttribute("list", list);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 이름/나이 : ${list[0].name}/${list[0].age}<br>
</body>
</html>