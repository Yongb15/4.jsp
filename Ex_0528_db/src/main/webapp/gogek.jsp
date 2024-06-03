<%@page import="vo.GogekVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%
	// 톰캣이 JNDI(context.xml)를 검색하기 위해 필요한 클래스
	InitialContext ic = new InitialContext();

	Context ctx = (Context)ic.lookup("java:comp/env");
	// lookup() : jsp에서 db에 대한 정보가 저장되어있는 위치를 조회
	
	DataSource ds = (DataSource)ctx.lookup("jdbc/oracle_test");
	// 검색된 리소스를 통해 필요한 자원을 검색
	// context.xml의 name 속성 값
	
	Connection conn = ds.getConnection();
	// 위에서 준비해둔 경로로 로그인 접속을 시도
	
	// System.out.println("---get Connection---");  
	
	String sql = "select * from gogek";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	ResultSet rs = pstmt.executeQuery();
	
	List<GogekVO> list = new ArrayList<>();
	
	while(rs.next()) {				// next()는 다음에 읽어올 데이터가 있으면 true, 없으면 false
		GogekVO vo = new GogekVO();
	
		vo.setGobun(rs.getInt("gobun"));
		vo.setGoname(rs.getString("Goname"));
		vo.setGoaddr(rs.getString("Goaddr"));
		vo.setGojumin(rs.getString("gojumin"));
		
		list.add(vo);
	}
	
	// 역순으로 닫기 / 원래 try-catch에 넣어야하지만 servlet으로 변경 후 넣을 필요 x
	rs.close();				// 연결이 끝난 후 닫기
	pstmt.close();			// 연결이 끝난 후 닫기
	conn.close();			// 연결이 끝난 후 닫기
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border='1'>
		<tr>
			<th>번호</th>
			<th>이름</th>
			<th>주소</th>
			<th>주민번호</th>
		</tr>
		<%for(int i = 0; i < list.size(); i++){
				GogekVO go = list.get(i);
			%>
		<tr>
			<td><%= go.getGobun() %> </td>
			<td><%= go.getGoname() %> </td>
			<td><%= go.getGoaddr() %> </td>
			<td><%= go.getGojumin() %> </td>
		</tr>
		<% } %>
</body>
</html>