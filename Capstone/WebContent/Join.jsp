<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
font {
	color: #D1C6BA;
}
</style>
</head>
<body>
	<center>
		<br>
		<br> <a href="Main.jsp"><font size="50">LOGO</font></a>
		<form action="JoinProc.jsp" method="post">
			<br>
			<br>

			<tr height="60">
				<td align="center" width="100">아이디</td>
				<br>
				<td align="center" width="250"><input type="text" name="id"></td>
				<br>
				<br>
				<td align="center" width="100">비밀번호</td>
				<br>
				<td align="center" width="250"><input type="text" name="pass"></td>
				<br>
				<br>
				<td align="center" width="100">이름</td>
				<br>
				<td align="center" width="250"><input type="text" name="name"></td>
				<br>
				<br>
				<td align="center" width="100">생일</td>
				<br>
				<td align="center" width="250"><input type="text" name="birth"></td>
				<br>
				<br>
				<td align="center" width="100">이메일</td>
				<br>
				<td align="center" width="250"><input type="text" name="email"></td>
				<br>
				<br>
				<td align="center" width="100">전화번호</td>
				<br>
				<td align="center" width="250"><input type="text"
					name="tel"></td>
				<br>
				<br>
				<td align="center" colspan="2"><input type="submit"
					value="가입하기"></td>
			</tr>
		</form>

	</center>
	<%@ include file="Bottom.jsp"%>
</body>
</html>