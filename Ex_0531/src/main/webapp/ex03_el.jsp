<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	Map<String, Integer> map = new HashMap<String, Integer>();
    	map.put("key1", 100);
    	map.put("key2", 200);
    	map.put("key3", 300);
    	
    	request.setAttribute("map", map);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	${map.get("key1") }<br>
	${map['key2'] }<br>
	${map.key3 }<br>
</body>
</html>