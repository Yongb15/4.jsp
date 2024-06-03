<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 익스프레션 언어의 연산자 -->
	${1+1}<br>
	\${1+1}<br>
	\${10/3} = ${10 div 3}<br>
	\${10%3} = ${10 mod 3}<br>
	<hr>
	EL관계 연산자<br>
	\${3>2}=${3 gt 2}<br>
	\${3<2}=${3 lt 2}<br>
	\${3>=2}=${3 ge 2}<br>
	\${3<=2}=${3 le 2}<br>
	\${3==2}=${3 eq 2}<br>
	\${3!=2}=${3 ne 2}<br>
	
	<hr>
	EL삼항 연산자<br>
	파라미터 값 : ${param.msg eq null ?'참':'거짓'}<br>
	파라미터 값 : ${empty param.msg ?'참':'거짓'}<br>
	
	<hr>
	EL 논리연산자<br>
	파라미터 값 : ${empty param.abc || param.abc eq 10}<br>
	파라미터 값 : ${empty param.abc or param.abc eq 10}<br>
	
</body>
</html>