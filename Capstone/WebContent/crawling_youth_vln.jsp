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
	
	//일주일 후 날짜
	Calendar cal = Calendar.getInstance();
	cal.add(Calendar.DAY_OF_MONTH, +7);
	Date currentTime=cal.getTime();
	SimpleDateFormat formatter=new SimpleDateFormat("yyyy-MM-dd");
	String release_Dt_start=formatter.format(currentTime);
	
	String year7 = release_Dt_start.substring(0,4);
	String month7 = release_Dt_start.substring(5,7);
	String day7 = release_Dt_start.substring(8);
	
	System.out.println("Date : " + year + month + day);
	System.out.println("Date7 : " + year7 + month7 + day7);
	
	int i = 1;
	
	while(i<2){
	//while(i<1000){
	 	Document doc = Jsoup.connect("https://www.youth.go.kr/youth/dvl/ey/vlntwkAct/vlntwkActRcritLstForm.yt;jsessionid=zP0azFXOhuxQhbBxD1hpwxug8A78XwCNlaM4cXt1DFooOrNAyaujRhm7hodObVDa.youth-was01_servlet_kywaYouth?sort=&order=&page=" + i + "&rows=&kProgrmSn=&nas.cmm.token.html.TOKEN=e2766fa25fed2aa5c82204dc31c81691&chrctrRecptnAt=&sDetailcnCode=&sActCtprvnCode=&sActSignguCode=&sAcdmcrCode=&sActDateSeCode=one_week&sActStartDate=" + year + "-" + month + "-" + day + "&sActEndDate=" + year7 + "-" + month7 + "-" + day7 + "&sFcltyGrpAt=Y&sGrpNm=&sFcltyGrpSn=&sProgrmNm=&dovolState=1&curMenuSn=undefined").get();
	
	    Elements posts = doc.body().getElementsByClass("actlist-ul");
	
	    Elements file = posts.select("li");
	    
	    
	    for(Element e : file){
	    	String tit = e.select("a").text();	//타이틀
	    	String startDate = e.select(".child2").text().split(":")[1].substring(1, 11);
	    	String link_num = e.select("a").attr("onclick").split("'")[1];
	    	String link = "https://www.youth.go.kr/youth/dvl/ey/vlntwkAct/vlntwkActRcritDtl.yt?sort=&order=&page="+ i + "&rows=&kProgrmSn=" + link_num + "&nas.cmm.token.html.TOKEN=e2766fa25fed2aa5c82204dc31c81691&chrctrRecptnAt=&sDetailcnCode=&sActCtprvnCode=&sActSignguCode=&sAcdmcrCode=&sActDateSeCode=one_week&sActStartDate=" + year + "-" + month + "-" + day + "&sActEndDate=" + year7 + "-" + month7 + "-" + day7 + "&sFcltyGrpAt=Y&sGrpNm=&sFcltyGrpSn=&sProgrmNm=&dovolState=1&curMenuSn=undefined";
	    	String region = e.select(".act-area-box").text().substring(0, 2);
	    	
	    	//Document doc2 = Jsoup.connect("https://www.vms.or.kr/partspace/" + e.select("a").attr("href")).get();
	
	    	//String content = doc2.body().getElementsByClass("cont").text();
	    	//content = content.substring(0, content.lastIndexOf("※"));	//※ 자원봉사희망자 정보는 신청자와 관리센터만 볼 수 있습니다.(로그인 필요) <-삭제
	    	
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
				<%=startDate %> &nbsp; <%=region %><br>
				<a href=<%=link %>>링크</a>
			</div>
	
	<%
	    	System.out.println();
    	}
	    i++;
	}
	
%>
</body>
</html>