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
%>
<jsp:useBean id="mbean" class="MemberInfo.memBean"/>
<jsp:setProperty name="mbean" property="*"/>

<%
	//수정된 주소록의 데이터를 addrDAO 클래스의 modifyAddr(abean)을 이용하여 저장합니다.
	memDAO mdao = new memDAO();
	mdao.ModifyMem(mbean);
	
	//수정된 데이터는 JoinInfo에서 확인
	response.sendRedirect("JoinInfo.jsp");
%>
</body>
</html>