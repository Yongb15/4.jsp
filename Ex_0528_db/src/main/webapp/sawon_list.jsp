<%@page import="vo.SawonVO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.Context"%>
<%@page import="javax.naming.InitialContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%
	int deptno = Integer.parseInt(request.getParameter("deptno"));
	InitialContext ic = new InitialContext();

	Context ctx = (Context)ic.lookup("java:comp/env");
	// lookup() : jsp에서 db에 대한 정보가 저장되어있는 위치를 조회

	DataSource ds = (DataSource)ctx.lookup("jdbc/oracle_test");
	// 검색된 리소스를 통해 필요한 자원을 검색
	// context.xml의 name 속성 값

	Connection conn = ds.getConnection();
	
	String sql = "select * from sawon where deptno="+deptno;
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	ResultSet rs = pstmt.executeQuery();
	
	List<SawonVO> list = new ArrayList<>();
	
	while(rs.next()) {
		SawonVO vo = new SawonVO();
		vo.setDeptno(rs.getInt("deptno"));
		vo.setSaname(rs.getString("saname"));
		vo.setSabun(rs.getInt("sabun"));
		vo.setSajob(rs.getString("sajob"));
		
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
			<th>부서번호</th>
			<th>사원번호</th>
			<th>직책</th>
			<th>사원이름</th>
		</tr>
		<%for(int i = 0; i < list.size(); i++){
				SawonVO sv = list.get(i);
			%>
		<tr>
			<td><%= sv.getDeptno() %> </td>
			<td><%= sv.getSabun() %> </td>
			<td><%= sv.getSajob() %> </td>
			<td><%= sv.getSaname() %> </td>
		</tr>
		<% } %>
</body>
</html>