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
		String cookieCheck = request.getParameter("cookies");
		String id = request.getParameter("id");
		//cookie 체크박스에 선택되어 있으면 
		if (cookieCheck != null) {
			//out.println("쿠키 버튼이 눌러져 있습니다.");
			//쿠키 생성
			//Cookie("name","value");
			//id란 이름으로 id값을 저장
			Cookie cookie = new Cookie("id", id);
			//서버에서, cookie를 생성하고,
			//클라이언트에 전송할 때,
			//쿠키를 포함해서 addCookie()를 이용해서 전송한다.
			response.addCookie(cookie);
			System.out.print("쿠키 생성 완료!");
		}
	%>
	<center>
		<h2>CookiesProc.jsp</h2>
		<hr>
		아이디:<%=request.getParameter("id")%>
		비밀번호:<%=request.getParameter("pass")%>
	</center>
</body>
</html>