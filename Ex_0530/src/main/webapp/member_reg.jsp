<%@page import="medao.MeDAO"%>
<%@page import="mevo.MeVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%
    request.setCharacterEncoding("utf-8");
    
    String name = request.getParameter("name");
    String id = request.getParameter("id");
    String pwd = request.getParameter("pwd");
    String email = request.getParameter("email");
    
    MeVO vo = new MeVO();
    vo.setName(name);
    vo.setId(id);
    vo.setPwd(pwd);
    vo.setEmail(email);
    
    int res = MeDAO.getInstance().insert(vo);
    
    if(res>0){
    	response.sendRedirect("member_list.jsp");
    }
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>