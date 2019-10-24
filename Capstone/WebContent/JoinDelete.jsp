<%@page import="MemberInfo.memDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");

	//해당 num 주소록을 addrDAO를 이용해서 테이블에서 삭제 deleteAddr(num)
	memDAO mdao = new memDAO();
	int num = Integer.parseInt(request.getParameter("num"));
	mdao.DeleteMem(num);
	
	//삭제 후 이동
	response.sendRedirect("JoinInfo.jsp");
%>
</body>
</html>