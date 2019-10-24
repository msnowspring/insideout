<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.jsoup.Jsoup" %>
<%@ page import="org.jsoup.nodes.Document" %>
<%@ page import="org.jsoup.nodes.Element" %>
<%@ page import="org.jsoup.select.Elements" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	
	int i = 1;
	
	while(i<2){
	//while(i<1000){
	 	Document doc = Jsoup.connect("https://www.1365.go.kr/vols/P9210/partcptn/timeCptn.do").get();
	
	 	/* Elements posts = doc.body().getElementsByClass("page_num");
	 	Elements strongPage = posts.select("strong");//현재페이지
	 	Elements aPage = posts.select("a");//현재페이지를 제외한 나머지 아홉 페이지
	 	
	 	int num = Integer.parseInt(strongPage.text().substring(5));
	 	System.out.println("num  : " + num);
	 	
	 	for(Element e : aPage){
	 		System.out.println("a  : " + e.text());
	 		if(e.text() == Integer.toString(num + 1)){
	 			
	 		}
	 		
	 		
	 	} */
	 	
	 	Elements posts = doc.body().getElementsByClass("list_wrap");
		
	    Elements file = posts.select("li");
	    
	    
	    for(Element e : file){
	    	String tit = e.select(".tit_board_list").text().substring(0, e.select(".tit_board_list").text().lastIndexOf("("));	//타이틀
	    	String startDate = e.select(".board_data").text().split(":")[3].substring(1, 11); //활동 일자(시작)
	    	String endDate = e.select(".board_data").text().split(":")[3].substring(14); ////활동 일자(끝)
	    	String link_num = e.select("input").attr("value");
	    	String link = "https://www.1365.go.kr/vols/P9210/partcptn/timeCptn.do?titleNm=%EC%83%81%EC%84%B8%EB%B3%B4%EA%B8%B0&type=show&progrmRegistNo=" + link_num;
	    	Document doc2 = Jsoup.connect("https://www.1365.go.kr/vols/P9210/partcptn/timeCptn.do?titleNm=%EC%83%81%EC%84%B8%EB%B3%B4%EA%B8%B0&type=show&progrmRegistNo=" + link_num).get();
	    	Elements eRegion = doc2.body().getElementsByClass("incharge_data");
	    	String region = eRegion.select(".addr").text().substring(5,8);
	    	
	    	System.out.println("Title : " + tit);
	    	System.out.println("Date  : " + startDate);
	    	System.out.println("Link  : " + link_num);
	    	//System.out.println("Cotent : " + content);
	    	
	    	//System.out.println("Num : " + num);
	    	
	%>
	
			<div style="margin:20px;border:2px solid purple">
				<h3>
					<%=tit %>
				</h3>
				<%=startDate %>~<%=endDate %> &nbsp; <%=region %><br>
				<a href=<%=link %>>링크</a>
			</div>
	
	<%
	    	System.out.println();
    	}
	    System.out.println(file.size());
	 	
	    i++;
	}

%>

</body>
</html>