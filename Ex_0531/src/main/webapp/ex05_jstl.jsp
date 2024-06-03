<%@page import="java.util.Date"%>
<%@page import="vo.PersonVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- var에는 변수명 value는 값이 들어간다. -->
	<c:set var="num" value="100"/>
	
	${num}<br>
	
	<!-- test에는 조건이 들어간다. -->
	<c:if test="${5 lt 2}">
	5가 더큽니다.
	</c:if>
	<!-- switch문 처럼 사용하면 된다.
	 	 조건에 맞는 when절로 들어가서 수행후 빠져나온다.
	 	 choose안에는 주석달면 오류남
	 	 otherwise는 default의 역할을 한다. -->
	<c:choose>
		<c:when test="${param.num == 0 }">
		처음뵙겠습니다.<br>
		</c:when>
		<c:when test="${param.num == 1 }">
		반갑습니다.<br>
		</c:when>
		<c:otherwise>
		안녕하세요<br>
		</c:otherwise>
	</c:choose>
	<!--begin:시작갑 end : 종료값 step : 증가량-->
	<c:forEach begin="1" end="10" step="2">
	야호<br>
	</c:forEach>
<%
	List<String>arr = new ArrayList<>();
	arr.add("사과");
	arr.add("바나나");
	arr.add("딸기");
	
	request.setAttribute("arr", arr);
%>

<!-- 자바의 향상된 for문과 작동원리가 같다. -->
	<c:forEach var="str" items="${arr}">
	${str}<br>
	</c:forEach>
	
		
	<% 
		List<PersonVO> list = new ArrayList<>();
		list.add(new PersonVO("홍길동", 20));
		list.add(new PersonVO("일길동", 30));
		list.add(new PersonVO("이길동", 40)); 
		
		request.setAttribute("list", list);
	%>
	
	<c:forEach var = "u" items = "${list}">
		${ u.name } / ${ u.age } <br>
	</c:forEach>
	
	<hr>
	
	<% Date today = new Date();
		request.setAttribute("today", today); %>
	fmt 라이브러리 관련 태그 <br>
	<fmt:formatNumber value="100000" /><br>				<!-- 원 단위로 찍어줌 -->
	<fmt:formatDate value="${today}" pattern="yyyy년 MM월 dd일"/>
</body>
</html>