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
	 	Document doc = Jsoup.connect("https://www.youth.go.kr/youth/dvl/tlntSrvList.yt?upperCode=&listType=tlntSrvList&sort=&order=asc&page=" + i + "&rows=&tlntSrvNum=&nas.cmm.token.html.TOKEN=e2766fa25fed2aa5c82204dc31c81691&myInfoId=&tlntFclty=N&tlntGrpclub=N&srvCtgry=&chkSchl=&srvLoc=&srvLocDtl=&srvType=&srvStartDt=&srvEndDt=&regular_all=&regular_mon=&regular_tue=&regular_wed=&regular_thu=&regular_fri=&regular_sat=&regular_sun=&actName=&tlntState=&curMenuSn=1758").get();
	
	    Elements posts = doc.body().getElementsByClass("actlist-ul");
	
	    Elements file = posts.select(".act-name-box");
	    
	    
	    for(Element e : file){
	    	String tit = e.select("a").text();	//타이틀
	    	String startDate = e.select("tbody").text().substring(6, 16); //활동 일자(시작)
	    	String link_num = e.select("a").attr("onclick").split("'")[1];
	    	String link = "https://www.youth.go.kr/youth/dvl/tlntSrvView.yt?upperCode=&listType=tlntSrvList&sort=&order=asc&page=" + i + "&rows=&tlntSrvNum=" + link_num + "&nas.cmm.token.html.TOKEN=e2766fa25fed2aa5c82204dc31c81691&myInfoId=&tlntFclty=N&tlntGrpclub=N&srvCtgry=&chkSchl=&srvLoc=&srvLocDtl=&srvType=&srvStartDt=&srvEndDt=&regular_all=&regular_mon=&regular_tue=&regular_wed=&regular_thu=&regular_fri=&regular_sat=&regular_sun=&actName=&tlntState=&curMenuSn=1758";
	
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
				<%=startDate %><br>
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