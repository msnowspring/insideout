<%@page import="org.jsoup.select.Elements"%>
<%@page import="java.io.IOException"%>
<%@page import="org.jsoup.Jsoup"%>
<%@page import="org.jsoup.nodes.Document"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>꿀비</title>	
<link rel="stylesheet" href="Resources/css/bootstrap.min.css">
<link rel="shortcut icon" href="imgs/favicon.ico" >
<link rel="icon" href="favicon.ico" >
<style>
	.give {
		color:#C3A88C;
	}
	.card_wrap {
	    width: 1164px;
	    margin: 12px 0 -24px -24px;
	    clear: both;
	}
	.card {
	    font-size: 14px;
	    line-height: 19px;
	    -webkit-font-smoothing: antialiased;
	    box-sizing: border-box;
	    text-decoration: none;
	    color: inherit;
	    float: left;
	    position: relative;
	    width: 212px;
	    height: 300px;
	    margin: 0 0 20px 20px;
	    padding: 0;
	    background-color: #fff;
	    font-family: NanumSquareWebFont,dotum,Sans-serif;
	    
	}
	.card_content {
	    padding: 21px 10px 0px 10px;
	}
	.card_organization {
		padding-top:7px;
		font-size: 12px;
	}
	.card_img {
	    vertical-align: top;
	     width:212px;
	     height:150px;
	     margin: 0;
	     padding: 0;
	}
	.card:hover{
		box-sizing: border-box;
		border:solid 1px;
		text-decoration: none;
		color: inherit;
	}



</style>
</head>
<body>
<script src="Resources/js/bootstrap.min.js"></script>
<script src="Resources/jquery/jquery-3.4.1.min.js"></script>
<div class="container">
	<%
	//크롤링 할 페이지 url 지정
			String url = "http://www.goodneighbors.kr/support/index.gn";
			String selector = "div.overseas_group";
	        String selector2 = "div.domestic_area";
	        Document doc = null;
	        
	        try {
	            doc = Jsoup.connect(url).get(); // 1. get방식의 URL에 연결해서 가져온 값을 doc에 담는다.
	        } catch (IOException e) {
	            System.out.println(e.getMessage());
	        }
	        
	        
	        
	        ////국내후원
	        Elements domestic = doc.select(selector2);
	        Elements domestic2 = doc.select("div.domestic_area>div");
	        
	        //국내후원 title
	        String dtitle = domestic.select("div.domestic_con>p.font1").html();
	        dtitle = dtitle.replace('"',' ');
	        dtitle = dtitle.replace('.',' ');
	        //System.out.println(dtitle);
	        
	        //국내후원 내용 
	        String dcontent = domestic.select("div.domestic_con>p.font2").html();
	        //System.out.println(dcontent);
	        
	        //국내후원 이미지
	        domestic.select("div.domestic_con").remove();
	        String dimg = domestic.html();
	        //System.out.println(dimgs);
	        
	        //국내후원 버튼
	        domestic2.select("p.font1").remove();
	        domestic2.select("p.font2").remove();
	        String dbutton = domestic2.html();
	        //System.out.println(dbutton); 
	        
	        
	        
	        
	        
	        
	        
	        ////해외후원
	        Elements oversea = doc.select(selector); // 2. doc에서 selector의 내용을 가져와 Elemntes 클래스에 담는다.
	        Elements oversea2 = doc.select("div.overseas_group>ul");
	        Elements oversea3 = doc.select("div.overseas_group>ul>li");
	        
	        //해외후원 각 항목별 title
	        String otitle = oversea.select("ul>li>p.overseas_font1").html();
	        String[] otitles = otitle.split("\n");
	        //System.out.println(otitles[1]);
	        //System.out.println(otitle);
	        
	        //해외후원 각 항목별 내용
	        String ocontent = oversea.select("ul>li>p.overseas_font2").html();
	        String[] ocontents = ocontent.split("\n");
	        //System.out.println(ocontent);
	        
	        
	        //해외후원 각 항목별 이미지
	        String oimgs = "";
	        
	        
	        //해외후원 각 항목별 버튼
	        oversea3.select("p.overseas_font1").remove();
	        oversea3.select("p.overseas_font2").remove();
	        String obutton = oversea3.html();
	        String[] obuttons = obutton.split("\n");
	        //System.out.println(obutton); 
	%>

	<!-- Top 불러옴 -->
	<%@ include file="Top.jsp" %>

	<div class = "center">
		<div class="row">
			<div class="col">
				<div id="rdonaboxes" class="card_wrap">	
					<!-- 국내 -->
					<a class="card" href="https://www.goodneighbors.kr/support_pay/regular.gn">
						<img src="http://www.goodneighbors.kr/images/support/domestic_img.jpg" class="card_img">
						<div class="card_content">
							<strong class="card_title"> <%= dtitle %> </strong>
							<div class="card_organization"> <%= dcontent %> </div>
						</div>
					</a>
					<!--  <div class="card">
						<div class="card-body">
							<img src="http://www.goodneighbors.kr/images/support/domestic_img.jpg">
				    		<h5 class="card-title">
				    			<%= dtitle %>
				    		</h5>
					   		<p class="card-text">
					   			<%= dcontent %>
					   		</p>
					   		
					    </div>
					</div>-->
					
					<!-- 해외 -->
					<%
						for(int i=0; i<otitles.length; i++){
					%>
						<a href="https://www.goodneighbors.kr/support_pay/regular.gn" class="card">
							<%
								oimgs = "http://www.goodneighbors.kr/images/support/overseas_img" + (i+1) +".jpg";
							%>
							<img src=<%= oimgs %> class="card_img">
							<div class="card_content">
								<strong class="card_title"> <%=otitles[i] %> </strong>
								<div class="card_organization"> <%= ocontents[i] %> </div>
							</div>
						</a>
						
						<!-- 이건 아님****************
						<div class="card">
							<div class="card-body">
							<% oimgs = ((String)"http://www.goodneighbors.kr/images/support/overseas_img"+ i + ".jpg"); %>
								<img src= oimgs>
						   		<h5 class="card-title">
						   			<%= otitles %>
						    	</h5>
						    	<p class="card-text">
					    			<%= ocontent %>
					    		</p>
					    		
					    	</div>
						</div> -->
					<%
						}
					%>
						
					<!-- 사이트 카드들 -->
					<!-- card1 -->
					<a href="card1.jsp" class="card">
						<img src="imgs/cimg1.png" class="card_img">
						<div class="card_content">
							<strong class="card_title"> 생리대가 필요한 아이들 </strong>
							<div class="card_organization"> 생리대는 선택이 아닌 필수품입니다 </div>
						</div>
					</a>
					
					<!-- card2 -->
					<a href="card2.jsp" class="card">
						<img src="imgs/cimg2.jpg" class="card_img">
						<div class="card_content">
							<strong class="card_title"> 어르신들의 겨울을 따뜻하게 </strong>
							<div class="card_organization"> 몸도 마음도 따뜻해지는 연탄 나눔 </div>
						</div>
					</a>
					
					<!-- card3 -->
					<a href="card3.jsp" class="card">
						<img src="imgs/cimg3.jpg" class="card_img">
						<div class="card_content">
							<strong class="card_title"> 공부가 하고싶어요 </strong>
							<div class="card_organization"> 아이들에게 공부함의 행복을 주세요 </div>
						</div>
					</a>
						
			
				</div>
			</div>
		</div>
	
	</div>
	
	<!-- Bottom 불러옴 -->
	<%@ include file="Bottom.jsp" %>
</div>
</body>
</html>