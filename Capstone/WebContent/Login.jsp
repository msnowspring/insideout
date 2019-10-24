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
	<%
		//쿠키가 있는지 확인이 필요
		//그리고, 쿠키가 여러개 저장되어있을 수도 있기 때문에,
		//배열로 받아주어야합니다.(중요!!)
		//쿠카값이 없을 수도 있기때문에 null처리를 해준다
		Cookie[] cookies = request.getCookies();
		String id = "";
		if (cookies != null) {
			for (int i = 0; i < cookies.length; i++) {
				//cookie 이름이 id가 있으면,
				if (cookies[i].getName().equals("id")) {
					//id이름이 값을 읽어와서 id변수에 넣어준다.
					id = cookies[i].getValue();
					break; //원하는 데이터를 찾아서 반복문을 빠져나옴
				}
			}
		}
	%>
	<center>
		<br>
		<br> <a href="Main.jsp"><font size="50">LOGO</font></a> <br>
		<br>
		<form action="loginProc.jsp" method="post">

			<tr height=60>
				<td align="center" width="100">아이디</td>
				<br>
				<td align="center"><input type="text" name="id" value=<%=id%>></td>

				<br>
				<br>
				<td align="center" width="100">비밀번호</td>
				<br>
				<td align="center"><input type="text" name="pass"></td>

				<br>
				<br>

				<td align="center" colspan='2'><input type="submit" value="로그인">
				</td>

				<br>
				<br>

				<td align="center" colspan='2'>아이디 저장<input type="checkbox"
					name="cookies">
				</td> &nbsp
				<td align="center" colspan='2'><a href="Join.jsp">회원가입</a></td>
				<br>
				<td align="center" colspan='2'><a href="Idfind.jsp">아이디 찾기</a></td>
				&nbsp
				<td align="center" colspan='2'><a href="Passfind.jsp">비밀번호 찾기</a></td>
			</tr>

		</form>
	</center>
	<%@include file="Bottom.jsp"%>
</body>
</html>
</body>
</html>