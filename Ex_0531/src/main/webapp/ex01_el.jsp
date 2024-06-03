<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String msg = "안녕";
    	pageContext.setAttribute("msg", msg);
    	
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
${msg}<br>
${requstScope.msg}<br>

<!-- 영역이름 생략시 참조되는 순서
		1.pageContext
		2.requestScope
		3.Session
		4.Application -->
		
		<!-- param 내장객체
		param은 웹브라우저에서 <form>태그를 통해 입력된 데이터를 가져올때 사용하는 내장객체 -->
		${param.msg}<br>
</body>
</html>