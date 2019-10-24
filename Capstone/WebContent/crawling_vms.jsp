<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.jsoup.Jsoup" %>
<%@ page import="org.jsoup.nodes.Document" %>
<%@ page import="org.jsoup.nodes.Element" %>
<%@ page import="org.jsoup.select.Elements" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	//현재날짜
	java.util.Date d = new java.util.Date();
	SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
	String date = df.format(d);
	
	String year = date.substring(0,4);
	String month = date.substring(5,7);
	String day = date.substring(8);
	
	//한달후 날짜
	Calendar cal = Calendar.getInstance();
	cal.add(Calendar.MONTH, +1);
	cal.add(Calendar.DAY_OF_MONTH, -1);
	Date currentTime=cal.getTime();
	SimpleDateFormat formatter=new SimpleDateFormat("yyyy-MM-dd");
	String release_Dt_start=formatter.format(currentTime);
	
	String year30 = release_Dt_start.substring(0,4);
	String month30 = release_Dt_start.substring(5,7);
	String day30 = release_Dt_start.substring(8);
	
	System.out.println("Date : " + year + month + day);
	System.out.println("Date30 : " + year30 + month30 + day30);
	
	int i = 1;
	
	while(i<2){
	//while(i<1000){
	 	Document doc = Jsoup.connect("https://www.vms.or.kr/partspace/recruit.do?area=&areagugun=&acttype=&status=1&sttdte="+year+"-"+month+"-"+day+"&enddte="+year30+"-"+month30+"-"+day30+"&termgbn=&searchType=title&searchValue=&page=" + i).get();
	
	    Elements posts = doc.body().getElementsByClass("list_wrap");
	
	    Elements file = posts.select("li");
	    
	    
	    for(Element e : file){
	    	int num = Integer.parseInt(e.select(".num").text());	//게시글 넘버
	    	String newText = e.select(".hidden").text();
	    	String tit = e.select(".tit").text().replace(Integer.toString(num), "").replace(newText, "");
	    	String startDate = e.select(".data.clear").text().split(":")[2].substring(0, 11);
	    	String endDate = e.select(".data.clear").text().split(":")[2].substring(13, 23);
	    	String link = "https://www.vms.or.kr/partspace/" + e.select("a").attr("href");
	    	
	    	//Document doc2 = Jsoup.connect("https://www.vms.or.kr/partspace/" + e.select("a").attr("href")).get();
	
	    	//String content = doc2.body().getElementsByClass("cont").text();
	    	//content = content.substring(0, content.lastIndexOf("※"));	//※ 자원봉사희망자 정보는 신청자와 관리센터만 볼 수 있습니다.(로그인 필요) <-삭제
	    	
	
	    	System.out.println("Title : " + tit);
	    	System.out.println("Date  : " + startDate);
	    	//System.out.println("Cotent : " + content);
	    	
	    	//System.out.println("Num : " + num);
	    	
	%>
	
			<div style="margin:20px;border:2px solid purple">
				<h3>
					<%=tit %>
				</h3>
				<%=startDate %>~<%=endDate %><br>
				<a href=<%=link %>>링크</a>
			</div>
	
	<%
	    	System.out.println();
			if(num == 1){
				i = 1000;
			}
    	}
	    i++;
	}

%>

</body>
</html>