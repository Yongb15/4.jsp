<%@page import="medao.MeDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
   	<%
   	int idx = Integer.parseInt(request.getParameter("idx"));
   	int res = MeDAO.getInstance().delete(idx);
   	if(res>=1){
   		response.sendRedirect("member_list.jsp");
   	}
   	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"">
<title>Insert title here</title>
</head>
<body>

</body>
</html>