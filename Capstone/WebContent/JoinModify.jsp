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
	request.setCharacterEncoding("utf-8");

	//addrInfo.jsp로부터 넘어온 num(PK) 값을 이용하여, 하나의 주소록 정보를 테이블로부터 가져옵니다 
	//getOnAddr(num)
	
	memDAO mdao = new memDAO();
	int num = Integer.parseInt(request.getParameter("num"));
	memBean mbean = mdao.getOneMem(num);
%>
<center>
<h2>회원정보 수정하기</h2>
<hr>
<form action="JoinModifyProc.jsp" method="post">
<table border="1">
		<tr height="60">
			<td align="center" width="100">아이디</td>
			<td align="center" width="250">
				<input type="text" value="<%=mbean.getId()%>" name="id">
			</td>
		</tr>
		<tr height="60">
			<td align="center" width="100">비밀번호</td>
			<td align="center" width="250">
				<input type="text" value="<%=mbean.getPass()%>" name="pass">
			</td>
		</tr>
		<tr height="60">
			<td align="center" width="100">이름</td>
			<td align="center" width="250">
				<input type="text" value="<%=mbean.getName()%>" name="name">
			</td>
		</tr>
		<tr height="60">
			<td align="center" width="100">생일</td>
			<td align="center" width="250">
				<input type="text" value="<%=mbean.getBirth()%>" name="birth">
			</td>
		</tr>
		<tr height="60">
			<td align="center" width="100">이메일</td>
			<td align="center" width="250">
				<input type="text" value="<%=mbean.getEmail()%>" name="email">
			</td>
		</tr>
		<tr height="60">
			<td align="center" width="100">전화번호</td>
			<td align="center" width="250">
				<input type="text" value="<%=mbean.getTel()%>" name="tel">
			</td>
		</tr>
		<tr height="60">
			<td align="center" colspan="2">
				<input type="hidden" name="num" value="<%=mbean.getNum()%>">
				<input type="submit" value="회원정보 수정하기">
				<input type="button" value="취소하기" onclick="location.href='JoinInfo.jsp'">
			</td>
		</tr>
</table>
</form>
</center>
</body>
</html>