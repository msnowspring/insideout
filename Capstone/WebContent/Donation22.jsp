<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
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
	#container {
		-webkit-font-smoothing: antialiased;
		font-family: '돋움', Dotum, Helvetica, sans-serif;
		font-size: 12px;
		color: #666;
		width: 100%;
		position: relative;
		overflow: hidden;
		margin: 0;
		padding-bottom: 0;
	}
	
	.card_wrap {
		font-family: NanumBarunGothic, dotum, Sans-serif;
		font-size: 14px;
		line-height: 19px;
		color: #202020;
		-webkit-font-smoothing: antialiased;
		box-sizing: border-box;
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
		width: 267px;
		height: 350px;
		margin: 0 0 24px 24px;
		padding: 0;
		background-color: #fff;
		font-family: NanumSquareWebFont, dotum, Sans-serif;
	}
	
	
	
	.card_img {
		width: 266px;
		height: 200px;
		margin: 0;
		padding: 0;
	}
	
	.card_content {
		font-size: 14px;
		line-height: 19px;
		-webkit-font-smoothing: antialiased;
		color: inherit;
		font-family: NanumSquareWebFont, dotum, Sans-serif;
		box-sizing: border-box;
		padding: 21px 20px 0;
	}
	
	.card_title {
		-webkit-font-smoothing: antialiased;
		font-family: NanumSquareWebFont, dotum, Sans-serif;
		box-sizing: border-box;
		overflow: hidden;
		text-overflow: ellipsis;
		display: -webkit-box;
		height: 50px;
		line-height: 25px;
		word-wrap: break-word;
		word-break: break-all;
		-webkit-line-clamp: 2;
		-webkit-box-orient: vertical;
		font-size: 20px;
		font-weight: 700;
		letter-spacing: -.5px;
		color: #333;
	}
	
	.menuitem {
		padding: 0px 20px 0px 20px;
		font-size: 25px;
		font-weight: 600;
		color: #000;
		font-align: center;
	}
	
	.menuitem:hover {
		color: #E5CF51;;
		text-decoration: none;
	}
	
	.info_bx {
		margin-top: 2px;
		margin-left: 10px;
		box-sizing: border-box;
	}
	
	.s_bx {
		letter-spacing: -.5px;
		margin-top: 3px;
	}
	
	.category {
		font-size: 12px;
		font-weight: 700;
		color: #E5CF51;;
	}
	
	.association {
		font-size: 12px;
		font-weight: 700;
		color: #000000;
	}
	
	.ss_bx {
		margin-top: 5px;
	}
	
	.col-12 {
		margin-left: 35%;
		word-spacing:-10px;
	}
	#btn{
	border: 1px solid #E5CF51;;
	background-color:#FFFFFF;
	color:#E5CF51;;
	font-weight:700;
	padding:5px;
	
	}
	#btn:hover{
	color:#FFFFFF;
	background-color:#E5CF51;
	}

</style>
</head>
<body>
<script src="Resources/js/bootstrap.min.js"></script>
<script src="Resources/jquery/jquery-3.4.1.min.js"></script>
<%
	//저장할 List 선언
	List<String> titles = new ArrayList<String>();
	List<String> urls = new ArrayList<String>();
	List<String> imgs = new ArrayList<String>();
	
	//gfoundation 코드
	for(int n=1; n<6; n++) {
		//url 할당
		String gurl = "https://www.gfound.org/bbs/board.php?bo_table=support_1&page="+n;
		String gselector = "div.bo_list";
	    Document gdoc = null;
	    
	    try {
	        gdoc = Jsoup.connect(gurl).get(); // 1. get방식의 URL에 연결해서 가져온 값을 doc에 담는다.
	    } catch (IOException e) {
	        System.out.println(e.getMessage());
	    }
	    
	    //메인 요소 선택
	    Elements gfound = gdoc.select("ul>li");
	    
	    //gfound title ////// title이 비어있는건 어떻게 처리 할건지ㅠㅠ...
	    String gtitle = gfound.select("p.s_list_stit").html();
	    String[] gtitles = gfound.select("p.s_list_stit").html().split("\n");
	    for(int t=0; t<gtitles.length; t++) {
	    	if(gtitles[t] == ""){
	    		titles.add(" ");
	    	}else{
	    		titles.add(gtitles[t]);
	    	}
	    	
	    }
	    
	    //gfound url
		String[] gurls = gfound.select("span.s_list_btn").html().split("\n");
		for(int u=0; u<gurls.length; u++) {
			//substring 이용해서 필요한 url 부분만 자름
			gurls[u] = gurls[u].substring(9, 92);
			urls.add(gurls[u]);
		}
		
		//gfound img
		String[] gimgs = gfound.select("div.s_list_phot>a").html().split("\n");
		for(int i=0; i<gimgs.length; i++) {
			//substring 이용해서 필요한 url 부분만 자름
			gimgs[i] = gimgs[i].substring(10, 135);
			imgs.add(gimgs[i]);
		}
	    
	}
	
	//제목이 아예 없어서 하나씩 땡겨지던거 빈칸 추가해서 해결
	titles.add(9, " ");
	
	//weca 코드
	String caurl = "http://www.weca.or.kr/donation/campaign.asp";
	String caselector = "div.services_wrapper>div.campaign_box";
	Document cadoc = null;
		    
	try {
		cadoc = Jsoup.connect(caurl).get(); // 1. get방식의 URL에 연결해서 가져온 값을 doc에 담는다.
	} catch (IOException e) {
		System.out.println(e.getMessage());
	}
		    
	//메인 요소 선택
	Elements weca = cadoc.select(caselector);
		    
	//weca title
	String[] catitles = weca.select("a>div.img_container>div.campaign_tex>dl>dt.tit").html().split("\n");
	for(int t=0; t<catitles.length; t++) {
		titles.add(catitles[t]);
	}
		    
	//weca img
	weca.select("a>div.img_container>div.campaign_img").remove();
	weca.select("a>div.img_container>div.campaign_tex").remove();
	String[] caimgs = weca.select("a>div.img_container").html().split("\n");
	for(int i=0; i<caimgs.length; i++) {
		caimgs[i] = "http://www.weca.or.kr" + caimgs[i].substring(10, 35);
		//indexOf로 "기준 문자 2개로 쪼갬 쪼갠거에 "은 포함x
		int idx = caimgs[i].indexOf('"');
		//쪼갠거 앞에 가져옴
		caimgs[i] = caimgs[i].substring(0,idx);
		imgs.add(caimgs[i]);
	}
		    
	//weca url
	weca.select("a>div.img_container").remove();
	String[] caurls = weca.html().split("\n");
	for(int u=0; u<caurls.length; u++) {
		if(u==3) {
			caurls[u] = "http://www.weca.or.kr" + caurls[u].substring(9, 27);
			urls.add(caurls[u]);
		}else {
			caurls[u] = "http://www.weca.or.kr" + caurls[u].substring(9, 53);
			urls.add(caurls[u]);
		}
	}
	
	
	
	
		//concern 코드
		String courl = "https://www.concern.or.kr/load.asp?subPage=310#";
		String coselector = "div.bbs_thumb_list>ul";
	    Document codoc = null;
	    
	    try {
	    	codoc = Jsoup.connect(courl).get(); // 1. get방식의 URL에 연결해서 가져온 값을 doc에 담는다.
	    } catch (IOException e) {
	        System.out.println(e.getMessage());
	    }
	    
	    //메인 요소 선택
	    Elements concern = codoc.select(coselector);
	    
	    //concern title
	    String[] cotitles = concern.select("li>div.cont>div.tit>a>span").html().split("\n");
	    for(int t=0; t<cotitles.length; t++) {
	    	//indexOf로 ]기준 문자 2개로 쪼갬 쪼갠거에 "은 포함x
	    	int idx = cotitles[t].indexOf(']');
	    	//쪼갠거에서 뒤에꺼 앞에서 2번째부터 가져옴
	    	cotitles[t] = cotitles[t].substring(idx+2);
	    	titles.add(cotitles[t]);
	    }
	    
	    //concern img
	    concern.select("li>a>div.over").remove();
		String[] coimgs = concern.select("li>a").html().split("\n");
		for(int i=0; i<coimgs.length; i++) {
			coimgs[i] = "https://www.concern.or.kr" + coimgs[i].substring(10, 63);
			imgs.add(coimgs[i]);
		}
	    
	    //concern url
		concern.select("li>div.cont>div.tit>div.date").remove();
		concern.select("li>div.cont>div.tit>a>span").remove();
		String[] courls = concern.select("li>div.cont>div.tit").html().split("\n");
		for(int u=0; u<courls.length; u++) {
			if(u<2) {
				courls[u] = "https://www.concern.or.kr" + courls[u].substring(63, 174);
				//replace로 "랑 ' 제거
				courls[u] = courls[u].replace('"',' ');
				courls[u] = courls[u].replace("'"," ");
				urls.add(courls[u]);
			}else {
				courls[u] = "https://www.concern.or.kr" + courls[u].substring(10, 91);
				urls.add(courls[u]);
			}
			
		}
		
		
	
	//withgo 코드
	
	for(int wg=1; wg<3; wg++) {
		String wurl = "http://www.withgo.or.kr/campaign/story_cam.asp?strArea=B&intCate=&intStat=1&intPage="+wg+"#";
		String wselector = "div.camp_list>ul.clearfix";
		Document wdoc = null;
		    
		try {
			wdoc = Jsoup.connect(wurl).get(); // 1. get방식의 URL에 연결해서 가져온 값을 doc에 담는다.
		} catch (IOException e) {
			System.out.println(e.getMessage());
		}
		    
		//메인 요소 선택
		Elements withgo = wdoc.select(wselector);
		    
		//withgo title
		String[] wtitles = withgo.select("li>a>p.tit").html().split("\n");
		for(int t=0; t<wtitles.length; t++) {
			titles.add(wtitles[t]);
		}
		    
		//withgo img
		String[] wimgs = withgo.select("li>a>div.thum").html().split("\n");
		for(int i=0; i<wtitles.length; i++) {
			wimgs[i] = "http://www.withgo.or.kr" + wimgs[i].substring(10,54);
			int idx = wimgs[i].indexOf('"');
			wimgs[i] = wimgs[i].substring(0,idx);
			imgs.add(wimgs[i]);
		}
			
		    
		//withgo url
		withgo.select("li>span").remove();
		withgo.select("li>div").remove();
		withgo.select("li>a>ul").remove();
		withgo.select("li>a>div.thum").remove();
		String[] wurls = withgo.select("li").html().split("\n");
		for(int u=0; u<wtitles.length; u++) {
			wurls[u] = "http://www.withgo.or.kr/campaign" + wurls[u].substring(10, 98).replace('"',' ');
			urls.add(wurls[u]);
		}
			
	}
	
	
	int count = titles.size();
%>


<%@ include file="Top.jsp" %>


<div class="container">
	<!-- 사이트 카드들 -->
	<div class="row">
		<div class="col">
			<strong style="padding-left:23px;"> 기부 전체 <strong style="color:#E5CF51"><%= count %></strong> 개</strong>
		</div>
	</div>
	<div class="row">
		<!-- card1 -->
		<div class="col-3">
			<div class="card"> 
				<img src="imgs/cimg1.png" class="card_img">
				<div class="card_content">
					<div class="info_bx">
						<strong class="card_title"> 생리대가 필요한 아이들 </strong>
						<div class="s_bx">
							<span class="category"> 함께하는 한숲 </span> 
						</div>
						<div class="ss_bx">
							<a href="card1.jsp"><button id="btn" >자세히 보기</button></a>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- card2 -->
		<div class="col-3">
			<div class="card"> 
				<img src="imgs/cimg2.jpg" class="card_img">
				<div class="card_content">
					<div class="info_bx">
						<strong class="card_title"> 어르신들의 겨울을 따뜻하게 </strong>
						<div class="s_bx">
							<span class="category"> 나눔코리아</span> 
						</div>
						<div class="ss_bx">
							<a href="card2.jsp"><button id="btn" >자세히 보기</button></a>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<!-- card3 -->
		<div class="col-3">
			<div class="card"> 
				<img src="imgs/cimg3.jpg" class="card_img">
				<div class="card_content">
					<div class="info_bx">
						<strong class="card_title"> 공부가 하고싶어요 </strong>
						<div class="s_bx">
							<span class="category"> 아프리카아시아난민교육후원회 </span> 
						</div>
						<div class="ss_bx">
							<a href="card3.jsp"><button id="btn" >자세히 보기</button></a>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<!-- card4 -->
		<div class="col-3">
			<div class="card"> 
				<img src="imgs/cimg4.jpg" class="card_img">
				<div class="card_content">
					<div class="info_bx">
						<strong class="card_title"> 독거어르신들에게 특별한 하루를 선물하세요!! </strong>
						<div class="s_bx">
							<span class="category"> 용산재가노인지원센터 </span> 
						</div>
						<div class="ss_bx">
							<a href="card4.jsp"><button id="btn" >자세히 보기</button></a>
						</div>
					</div>
				</div>
			</div>
		</div>
		
	</div>
	
	<div class="row">	
		<!-- card5 -->
		<div class="col-3">
			<div class="card"> 
				<img src="imgs/cimg5.jpg" class="card_img">
				<div class="card_content">
					<div class="info_bx">
						<strong class="card_title"> 내복 한 벌, 어르신에겐 3도씨의 따뜻함이 필요합니다. </strong>
						<div class="s_bx">
							<span class="category"> 하당노인복지관 </span> 
						</div>
						<div class="ss_bx">
							<a href="card5.jsp"><button id="btn" >자세히 보기</button></a>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<!-- card6 -->
		<div class="col-3">
			<div class="card"> 
				<img src="imgs/cimg6.jpg" class="card_img">
				<div class="card_content">
					<div class="info_bx">
						<strong class="card_title"> 바다에 사는 로또라구요? 바다에 사는 보호종,고래예요. </strong>
						<div class="s_bx">
							<span class="category"> 환경운동연합 </span> 
						</div>
						<div class="ss_bx">
							<a href="card6.jsp"><button id="btn" >자세히 보기</button></a>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<!-- card7 -->
		<div class="col-3">
			<div class="card"> 
				<img src="imgs/cimg7.jpg" class="card_img">
				<div class="card_content">
					<div class="info_bx">
						<strong class="card_title"> 리어카가 가벼울수록 마음은 무겁습니다. </strong>
						<div class="s_bx">
							<span class="category"> 강동구립해공노인복지관 </span> 
						</div>
						<div class="ss_bx">
							<a href="card7.jsp"><button id="btn" >자세히 보기</button></a>
						</div>
					</div>
				</div>
			</div>
		</div>
				
	
	<!-- 크롤링 카드들 -->
	<%
		for(int d=0; d<titles.size(); d++){
			
	%>
		<% 
			String com = "";
			if(urls.get(d).contains("gfound")){
				com = "지파운데이션";
			}else if(urls.get(d).contains("weca")){
				com = "세계교육문화원 WECA";	
			}else if(urls.get(d).contains("concern")){
				com = "컨선월드와이드";
			}else if(urls.get(d).contains("withgo")){
				com = "함께하는 사랑밭";
			}
		%>
		<div class="col-3">
		<div class="card"> <img src="<%= imgs.get(d) %>" class="card_img">
			<div class="card_content">
				<div class="info_bx">
					<strong class="card_title"><%= titles.get(d) %></strong>
					<div class="s_bx">
						<span class="category"> <%= com %> </span> 
					</div>
					<div class="ss_bx">
						<a href="<%= urls.get(d) %>"><button id="btn" >자세히 보기</button></a>
					</div>
				</div>
			</div>
		</div>
		</div>
		
		<!-- 1줄 만들때마다 있어야되서 if에 함 -->
		<%
			if(d==0|d%4==0){	
		%>
		</div>
		<div class="row">
		<%
			}
		%>

		
	<%
		}	
	%>

			
</div>
<%@ include file="Bottom.jsp" %>
</body>
</html>