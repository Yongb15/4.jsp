<%@page import="java.sql.ResultSet"%>
<%@page import="VO.SawonVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="VO.DeptVO"%>
<%@page import="java.util.List"%>
<%@page import="javax.naming.spi.DirStateFactory.Result"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int deptno = Integer.parseInt(request.getParameter("deptno"));
InitialContext ic = new InitialContext();
Context ctx = (Context)ic.lookup("java:comp/env");
DataSource ds = (DataSource)ctx.lookup("jdbc/oracle_test");
Connection conn = ds.getConnection();
 String sql = "select * from sawon where deptno="+deptno;
PreparedStatement pstmt = conn.prepareStatement(sql);

ResultSet rs = pstmt.executeQuery();

List<SawonVO> list = new ArrayList<>();
while(rs.next()){
	SawonVO vo = new SawonVO();
	
	vo.setDeptno(rs.getInt("deptno"));
	vo.setSabun(rs.getInt("sabun"));
	vo.setSaname(rs.getString("saname"));
	vo.setSajob(rs.getInt("sajob"));
	list.add(vo);
}

rs.close();
pstmt.close();
conn.close();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1">
	<caption>부서목록</caption>
	<tr>
	<th>부서번호</th>
	<th>사원번호</th>
	<th>직책</th>
	<th>사원이름</th>
	</tr>
	<%for(int i=0; i<list.size(); i++){
			SawonVO sv =list.get(i);
			%>
			<tr>
			<td><%= sv.getDeptno() %></td>
			<td><%= sv.getSabun() %></td>
			<td><%= sv.getSajob() %></td>
			<td><%= sv.getSaname() %></td>
			</tr>
			<%} %>
</table>
</body>
</html>