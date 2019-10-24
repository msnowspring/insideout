<%@page import="MemberInfo.memDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
font{
color:#D1C6BA;
}
</style>
</head>
<body>
<% 
	//한글 utf-8로 인코딩 처리
	request.setCharacterEncoding("utf-8");
%>
<!-- 빈즈 클래스 이용하여 입력된 값을 저장하고 이용하고자 함. -->
<jsp:useBean id="mbean" class="MemberInfo.memBean"/>
<jsp:setProperty name="mbean" property="*"/>
<jsp:useBean id="mdao" class="MemberInfo.memDAO" scope="application"/>	
<center>
<br><br>
<a href="Main.jsp"><font size= "50" >LOGO</font></a>
<br>
<h2>회원가입을 축하합니다</h2>
<hr>
<h3>회원 정보</h3>
<!-- 입력된 내용을 확인하기 위해서, 테이블 형태로 입력된 값을 출력해 봅니다(빈즈클래스 이용)	-->
	<table border="1">
		<tr height="60">
			<td align="center" width="100">아이디</td>
			<td align="center" width="250"><%=mbean.getId()%></td>
		</tr>
		<tr height="60">
			<td align="center" width="100">비밀번호</td>
			<td align="center" width="250"><%=mbean.getPass()%></td>
		</tr>
		<tr height="60">
			<td align="center" width="100">이름</td>
			<td align="center" width="250"><%=mbean.getName()%></td>
		</tr>
		<tr height="60">
			<td align="center" width="100">생일</td>
			<td align="center" width="250"><%=mbean.getBirth()%></td>
		</tr>
		<tr height="60">
			<td align="center" width="100">이메일</td>
			<td align="center" width="250"><%=mbean.getEmail()%></td>
		</tr>
		<tr height="60">
			<td align="center" width="100">전화번호</td>
			<td align="center" width="250"><%=mbean.getTel()%></td>
		</tr>
	</table>
	<a href="Login.jsp">로그인하러가기</a>
</center>
	<%@ include file="Bottom.jsp" %>
</body>
</html>