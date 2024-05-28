<%@page import="java.util.List"%>
<%@page import="vo.PersonVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<% 
	//준비해놓은 VO객체를 ArrayList에 적재한다.
	List<PersonVO> pList = new ArrayList<>();

	pList.add(new PersonVO( "홍길동", 20, "011-123-4567" ));
	pList.add(new PersonVO( "김길동", 40, "010-456-1234" ));
	pList.add(new PersonVO( "박길동", 27, "012-111-2222" ));
	pList.add(new PersonVO( "조길동", 13, "015-222-3333" ));
	pList.add(new PersonVO( "독고길동", 70, "016-333-4444" ));	
%>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style type="text/css">
		table{border:1px solid black;
		      border-collapse:collapse;}
		      
		td{width:100px; text-align:center;}
		.td3{width:150px;}
	</style>
</head>
<body>
	<table border="1">
		<caption>::: 개인정보 목록 :::</caption>
			<tr>
				<th>이름</th>
				<th>나이</th>
				<th>전화번호</th>
			</tr>
			
			<% for(int i = 0; i < pList.size(); i++){ %>		
			<tr>
				<td> <%= pList.get(i).getName() %> </td>
				<td> <%= pList.get(i).getAge() %> </td>
				<td class="td3"> <%= pList.get(i).getTel() %> </td>
			</tr>	
			<% } %>
	</table>
</body>
</html>