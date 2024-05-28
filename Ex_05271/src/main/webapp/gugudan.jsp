<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 주석 -->
<!-- html주석(그대로 노출되어 보안성이 떨어짐) : html주석은 컴파일시에 자바코드로 전환된다.-->



<!-- jsp를 실행한 후 웹페이지에서 우측클릭
소스보기를 통해서 확인해보면 두 주석의 차이점을 알 수 있다.
그러므로 id:a123 / pwd:asdf 와 같이 html주석에 중요한 정보를 담아놓으면 안된다 -->
<style>
		table{border:2px solid black;
		      border-collapse:collapse;} -> 두줄짜리 외곽선 한줄로 만듦

		tr{height:30px;}

		td{width:110px;
		  text-align:center;}
	</style>
</head>
<body>

	구구단

  테이블 안에서 자바코드를 사용해야 하기 때문에 스크립트릿이 바디 안에 있어야 된다.
  for문은 자바코드이기 때문에 스크립트릿을 사용해야 하고, html 부분은 스크립트릿에 묶이면 안된다.
	<table border="1">
			<% for(int i = 1; i <= 9; i++ ){%>
			<tr>
				<% for(int j = 2; j <= 9; j++){%>
				<td>
				
				<%-- 이렇게 해도 되고...
					<%= j %> * <%= i %> = <%= j * i %> --%>
					<%= j + " * " + i + "=" + j*i %>
				<%-- 이런식으로 해도 된다. --%>
					<% String str = String.format("%d * %d = %d", j, i, j * i); %>
					<%= str %>
				</td>
				<% } %>
			</tr>
			<% } %>	
	</table>
	
</body>
</html>