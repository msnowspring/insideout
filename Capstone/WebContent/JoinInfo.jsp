<%@page import="MemberInfo.memBean"%>
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
	//한글 깨짐 방지
	request.setCharacterEncoding("utf-8");

	//DAO 클래스의 getOneAddr(num)을 이용하여 addrBean 클래스 데이터 정보 가져와서 출력
	//여기서 num은 PK
	memDAO mdao = new memDAO();
	int num = Integer.parseInt(request.getParameter("num"));
	memBean mbean = mdao.getOneMem(num);
	
%>
<center>
<h2>회원정보</h2>
<hr>
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
		<tr height="60">
			<td align="center" colspan="2">
			<input type="button" value="수정하기" 
			onclick="location.href='JoinModify.jsp?num=<%=mbean.getNum()%>'">
			<input type="button" value="탈퇴하기" 
			onclick="location.href='JoinDelete.jsp?num=<%=mbean.getNum()%>'">
			</td>
		</tr>
	</table>
</center>
</body>
</html>