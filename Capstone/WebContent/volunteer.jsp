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
<link rel="stylesheet" href="Resources/css/bootstrap.min.css">
<link rel="shortcut icon" href="imgs/favicon.ico" >
<link rel="icon" href="favicon.ico" >
<title>봉사페이지</title>

<style>
	.line{
		background-color:#E5CF51;
		height: 7px;
		margin: 20px;
	}
	.menu{
		text-align:center;
		padding: 0px 50px 0px 50px;
	}
	.menutext{
		font-size:23px;
		font-weight:500;
		color:#000;
		font-align:center;
		margin-right: 4%;
		margin-left: 4%;
	}
	.menutext:hover {
		color:#EACC1A;
		text-decoration:none;
	}
	.allCon{
		margin: 10px auto 24px 24px;
	}
	.search{
		margin: 0 auto 24px 0;
		float:center;
	}
	.sel{
		margin: 0 0 24px 24px;
		height:40px;
	}
	.card{
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
		font-family: NanumSquareWebFont,dotum,Sans-serif;
	}
	.card:hover{
		border:#999 1px solid;
		text-decoration:none !important;
	}
	.card_img{
		width:266px;
		height:200px;
		margin: 0;
		padding: 0;
	}
	.card_content{
		font-size: 14px;
		line-height: 15px;
		-webkit-font-smoothing: antialiased;
		color: inherit;
		font-family: NanumSquareWebFont,dotum,Sans-serif;
		box-sizing: border-box;
		padding: 21px 20px 0;
	}
	.card_title{
		-webkit-font-smoothing: antialiased;
		font-family: NanumSquareWebFont,dotum,Sans-serif;
		box-sizing: border-box;
		overflow: hidden;
		display: -webkit-box;
		height: 50px;
		line-height: 25px;
		-webkit-line-clamp: 2;
		-webkit-box-orient: vertical;
		font-size: 17px;
		letter-spacing: -.5px;
		color: #333;
	}
	.card_organization{
		line-height: 19px;
		-webkit-font-smoothing: antialiased;
		box-sizing: border-box;
		overflow: hidden;
		text-overflow: ellipsis;
		white-space: nowrap;
		margin-top: 8px;
		font-family: NanumBarunGothic,dotum,Sans-serif;
		font-size: 15px;
		color: #828282;
	}
	.content{
		font-family: NanumBarunGothic,dotum,Sans-serif;
		font-size: 14px;
		line-height: 19px;
		color: #202020;
		-webkit-font-smoothing: antialiased;
		box-sizing: border-box;
		width: 1140px;
		margin: 60px auto 0;
	}
	.card_wrap{
		font-family: NanumBarunGothic,dotum,Sans-serif;
		font-size: 14px;
		line-height: 19px;
		color: #202020;
		-webkit-font-smoothing: antialiased;
		box-sizing: border-box;
		width: 1164px;
		margin: 12px 0 -24px -24px;
		clear: both;
	}
	.paging{
		margin-top: 20px;
		text-align: center;
		clear: both;
	}
	.btn{
		width: 35px;
		height: 30px;
		padding:1px;
	}
	.pageNum{
		padding: 0px 20px 0px 20px;
		font-size:40px;
		color:#000;
		font-align:center;
	}
	.pageNum:hover{
		color:#C3A88C;
		text-decoration:none;
	}
</style>
</head>
<body>

<%
	//콘텐츠 가져오기
	int count = 12; //콘텐츠의 갯수를 세는 변수       // 초기화
	int last_page_num = 0; //마지막 페이지를 저장할 변수 초기화
	
	ArrayList<String> tit = new ArrayList<String>();	//카드 타이틀을 저장할 리스트
	ArrayList<String> startDate = new ArrayList<String>();	//카드 활동날짜(시작)
	ArrayList<String> endDate = new ArrayList<String>();	//카드 활동날짜(끝)
	ArrayList<String> link = new ArrayList<String>();	//카드 활동날짜(시작)
	ArrayList<String> crawlingNum = new ArrayList<String>(); //크롤링 페이지 번호
	ArrayList<String> region = new ArrayList<String>(); //봉사활동 지역(봉사활동사이트들은 모두 사진이 없어 지역 별 사진으로 대체)

	String sPage = request.getParameter("sPage");
	int nowPage; //현재페이지

	if((count % 12) == 0){ //전체 게시글이 12에 딱 맞춰 떨어지면 count/12가 마지막 페이지이고, 딱 떨어지지 않으면 1을 더한 수가 마지막 페이지 이다.
		last_page_num = count / 12;
	}else{
		last_page_num = (count / 12) + 1;
	}
	
	if(sPage==null){//처음에 들어올때는 null값
		nowPage = 1;
	}else{
		nowPage = Integer.parseInt(sPage);
	}
	
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
	
	//한달후 날짜
	Calendar cal2 = Calendar.getInstance();
	cal2.add(Calendar.MONTH, +1);
	cal2.add(Calendar.DAY_OF_MONTH, -1);
	Date currentTime2=cal2.getTime();
	SimpleDateFormat formatter2=new SimpleDateFormat("yyyy-MM-dd");
	String release_Dt_start2=formatter2.format(currentTime2);
	
	String year30 = release_Dt_start2.substring(0,4);
	String month30 = release_Dt_start2.substring(5,7);
	String day30 = release_Dt_start2.substring(8);
	
	
	System.out.println("Date : " + year + month + day);
	System.out.println("Date7 : " + year7 + month7 + day7);
	System.out.println("Date30 : " + year30 + month30 + day30);
	
	//vms 크롤링
 	Document doc = Jsoup.connect("https://www.vms.or.kr/partspace/recruit.do?area=&areagugun=&acttype=&status=1&sttdte="+year+"-"+month+"-"+day+"&enddte="+year30+"-"+month30+"-"+day30+"&termgbn=&searchType=title&searchValue=&page=" + nowPage).get();
	Elements posts = doc.body().getElementsByClass("list_wrap");
	Elements file = posts.select("li");
    for(int i = 0;i < 4;i++){
    	int num = Integer.parseInt(file.get(i).select(".num").text());	//게시글 넘버
    	String newText = file.get(i).select(".hidden").text();
    	tit.add(file.get(i).select(".tit").text().replace(Integer.toString(num), "").replace(newText, ""));
    	startDate.add(file.get(i).select(".data.clear").text().split(":")[2].substring(0, 11));
    	endDate.add(file.get(i).select(".data.clear").text().split(":")[2].substring(13, 23));
    	link.add("https://www.vms.or.kr/partspace/" + file.get(i).select("a").attr("href"));
    	crawlingNum.add("01");
    	region.add(file.get(i).select(".region").text().substring(1, 3));
    	System.out.println("region_vms  : " + file.get(i).select(".region").text().substring(1, 3));
    }
    
    //청소년활동정보서비스 크롤링
    doc = Jsoup.connect("https://www.youth.go.kr/youth/dvl/ey/vlntwkAct/vlntwkActRcritLstForm.yt;jsessionid=zP0azFXOhuxQhbBxD1hpwxug8A78XwCNlaM4cXt1DFooOrNAyaujRhm7hodObVDa.youth-was01_servlet_kywaYouth?sort=&order=&page=" + nowPage + "&rows=&kProgrmSn=&nas.cmm.token.html.TOKEN=e2766fa25fed2aa5c82204dc31c81691&chrctrRecptnAt=&sDetailcnCode=&sActCtprvnCode=&sActSignguCode=&sAcdmcrCode=&sActDateSeCode=one_week&sActStartDate=" + year + "-" + month + "-" + day + "&sActEndDate=" + year7 + "-" + month7 + "-" + day7 + "&sFcltyGrpAt=Y&sGrpNm=&sFcltyGrpSn=&sProgrmNm=&dovolState=1&curMenuSn=undefined").get();
	posts = doc.body().getElementsByClass("actlist-ul");
	file = posts.select("li");
	for(int i = 0;i < 4;i++){
    	tit.add(file.get(i).select("a").text());
    	startDate.add(file.get(i).select(".child2").text().split(":")[1].substring(1, 11));
    	endDate.add(null);	//이 페이지는 시작 날짜만 있기 때문에 종료 날짜는 null로 둔다.
    	String link_num = file.get(i).select("a").attr("onclick").split("'")[1];
    	link.add("https://www.youth.go.kr/youth/dvl/ey/vlntwkAct/vlntwkActRcritDtl.yt?sort=&order=&page="+ nowPage + "&rows=&kProgrmSn=" + link_num + "&nas.cmm.token.html.TOKEN=e2766fa25fed2aa5c82204dc31c81691&chrctrRecptnAt=&sDetailcnCode=&sActCtprvnCode=&sActSignguCode=&sAcdmcrCode=&sActDateSeCode=one_week&sActStartDate=" + year + "-" + month + "-" + day + "&sActEndDate=" + year7 + "-" + month7 + "-" + day7 + "&sFcltyGrpAt=Y&sGrpNm=&sFcltyGrpSn=&sProgrmNm=&dovolState=1&curMenuSn=undefined");
    	crawlingNum.add("02");
    	region.add(file.get(i).select(".act-area-box").text().substring(0, 2));
    	System.out.println("region_youth  : " + file.get(i).select(".act-area-box").text().substring(0, 2));
    }
	
	//봉사활동1365사이트 크롤링
	doc = Jsoup.connect("https://www.1365.go.kr/vols/P9210/partcptn/timeCptn.do").get();
	posts = doc.body().getElementsByClass("list_wrap");
    file = posts.select("li");
	for(int i = 0;i < 4;i++){
    	tit.add(file.get(i).select(".tit_board_list").text().substring(0, file.get(i).select(".tit_board_list").text().lastIndexOf("(")));
    	startDate.add(file.get(i).select(".board_data").text().split(":")[3].substring(1, 11));
    	endDate.add(file.get(i).select(".board_data").text().split(":")[3].substring(14));
    	String link_num = file.get(i).select("input").attr("value");
    	link.add("https://www.1365.go.kr/vols/P9210/partcptn/timeCptn.do?titleNm=%EC%83%81%EC%84%B8%EB%B3%B4%EA%B8%B0&type=show&progrmRegistNo=" + link_num);
    	crawlingNum.add("03");
    	
    	//1365 페이지만 겉에 지역을 표시하지 않아 상세 페이지로 들어가 확인함
    	Document doc2 = Jsoup.connect("https://www.1365.go.kr/vols/P9210/partcptn/timeCptn.do?titleNm=%EC%83%81%EC%84%B8%EB%B3%B4%EA%B8%B0&type=show&progrmRegistNo=" + link_num).get();
    	Elements eRegion = doc2.body().getElementsByClass("incharge_data");
    	if(eRegion.select(".addr").text().substring(5,8) == "충청남")	{region.add("충남");}
    	else if(eRegion.select(".addr").text().substring(5,8) == "충청북")	{region.add("충북");}
    	else if(eRegion.select(".addr").text().substring(5,8) == "전라북")	{region.add("전북");}
    	else if(eRegion.select(".addr").text().substring(5,8) == "전라남")	{region.add("전남");}
    	else if(eRegion.select(".addr").text().substring(5,8) == "경상북")	{region.add("경남");}
    	else if(eRegion.select(".addr").text().substring(5,8) == "경상남")	{region.add("경북");}
    	else{region.add(eRegion.select(".addr").text().substring(5,7));}
    	
    	System.out.println("region_165  : " + eRegion.select(".addr").text().substring(5,7));
    }
%>

<%!
	public int prePaging(int page){
		if(page <= 10){
			return 1;
		}else{
			String num_1 = Integer.toString(page);
			int num_1_int = Integer.parseInt(num_1.substring(num_1.length()-1));
			switch(num_1_int){
				case 0:
					return page - 10;
				default:
					return page - num_1_int;
			}
		}
	}
	public int pagePrev(int page){
		if(page == 1) {return 1;}
		else {return page - 1;}
	}

	public int pageNext(int page,int last){
		if(page == last) {return page;}
		else {return page + 1;}
	}
	public int nextPaging(int page,int last){
		String num_1 = Integer.toString(page -1);
		num_1 = num_1.substring(0,num_1.length()-1) + '0'; //page값을 받아서 1의 자리 숫자를 0으로 만듦
		if(page >= ((last / 10) * 10)) {return last;}
		else {return Integer.parseInt(num_1) + 11;}
	}
	
	public int btnNum(int page){
		int num = (page - 1) / 10;
		if(num == 0){
			return 10;
		}else{
			return (num * 10) + 10;
		}
	}
%>

<%@ include file="Top.jsp" %>

<div class="line"> </div>
<div class="menu">
	<a href="talentDona.jsp" class="menutext" aria-current="false">시설봉사</a>
	<a href="careDona.jsp" class="menutext" aria-current="false">재가봉사</a>
	<a href="environmentDona.jsp" class="menutext" aria-current="false">전문봉사</a>
	<a href="enimalDona.jsp" class="menutext" aria-current="false">지역사회봉사</a>
	<a href="othersDona.jsp" class="menutext" aria-current="false">기타봉사</a>
</div>
<div class="line"> </div>

<div class="content">
	<div class="row">
		<a class="allCon">전체 <%=count %>개</a>
		<div class="col-sm-2 search">
			<div class="input-group mb-3">
				<input type="text" class="form-control" placeholder="Search" aria-label="Search" aria-describedby="button-addon2">
				<div class="input-group-append">
					<button class="btn btn-outline-secondary" type="button" id="button-addon2"><img class ="searchimg" src="imgs/searchimg.png"></button>
				</div>
			</div>	
		</div>
		<select name="sort" class="sel">
			<option selected>최신순</option>
			<option>종료임박순</option>
		</select>
	</div>
	
	<div id="rdonaboxes" class="card_wrap">
<%
	for(int i = 0;i < tit.size();i++){
		String img;//카드 이미지를 변수
		if(region.get(i).equals("서울") || region.get(i).equals("중앙")){img = "imgs/region/seoul.jpg";}
		else if(region.get(i).equals("부산")){img = "imgs/region/busan.jpeg";}
		else if(region.get(i).equals("대구")){img = "imgs/region/daegu.jpg";}
		else if(region.get(i).equals("인천")){img = "imgs/region/incheon.jpg";}
		else if(region.get(i).equals("광주")){img = "imgs/region/gwangju.jpg";}
		else if(region.get(i).equals("대전")){img = "imgs/region/daejeon.jpg";}
		else if(region.get(i).equals("울산")){img = "imgs/region/ulsan.jpg";}
		else if(region.get(i).equals("세종")){img = "imgs/region/sejong.jpg";}
		else if(region.get(i).equals("경기")){img = "imgs/region/gyeonggi.jpg";}
		else if(region.get(i).equals("강원")){img = "imgs/region/gangwon.PNG";}
		else if(region.get(i).equals("충북")){img = "imgs/region/chungbuk.jpg";}
		else if(region.get(i).equals("충남")){img = "imgs/region/chungnam.jpg";}
		else if(region.get(i).equals("전북")){img = "imgs/region/jeonbuk.jpg";}
		else if(region.get(i).equals("전남")){img = "imgs/region/jeonnam.jpg.jpg";}
		else if(region.get(i).equals("경북")){img = "imgs/region/gyeongbuk.jpg";}
		else if(region.get(i).equals("경남")){img = "imgs/region/gywongnam.jpg";}
		else if(region.get(i).equals("제주")){img = "imgs/region/jeju.jpg";}
		else{img = "https://dummyimage.com/600x400/000/fff";}
%>
		<a href=<%=link.get(i) %> class="card">
			<img src=<%=img %> class="card_img" >
			<div class="card_content">
				<strong class="card_title"><%=tit.get(i) %></strong>
				<div class="card_organization"><%=startDate.get(i) %>
					<%
						if(endDate.get(i) != null){
							%>
								&nbsp;~&nbsp;<%=endDate.get(i) %>
							<%
						}
					%>
				</div>
			</div>
		</a>
<%	} %>
	</div>
</div>

<div class="paging">
	<a href="volunteer.jsp?sPage=<%=prePaging(nowPage) %>&sBtn=<%=btnNum(prePaging(nowPage)) %>" aria-current="false">
		<img src="imgs/double-left-arrows.png" class="btn">
	</a>
	<a href="volunteer.jsp?sPage=<%=pagePrev(nowPage) %>&sBtn=<%=btnNum(pagePrev(nowPage)) %>" aria-current="false">
		<img src="imgs/left-arrow.png"class="btn">
	</a>
<%
	int j;//페이징 & 현재 페이지를 나타낼 변수
	int pageBtn; //페이징 단위(ex.1~10 or 11~20)
	String sBtn = request.getParameter("sBtn");
	
	if(sBtn == null || (Integer.parseInt(sBtn) <= 10)){
		if(last_page_num <= 10){
			j = 1;
			pageBtn = last_page_num;
		}else{
			j = 1;
			pageBtn = 10;
		}
	}
	else{
		j = Integer.parseInt(sBtn) - 9;
		pageBtn = Integer.parseInt(sBtn);
	}
	do{
%>
	<a class="pageNum" href="vounteer.jsp?sPage=<%=j %>&sBtn=<%=btnNum(j) %>" aria-current="false">
		<%
		if(j == nowPage){
		%>
			<span style="color:#C3A88C;font-size:20px;"><%=j %> </span>
		<% }else{ %>
			<span style="font-size:20px;"><%=j %> </span>
		<% } %>
	</a>
<%
		j++;
	}while(j < pageBtn + 1); 
%>
	<a href="volunteer.jsp?sPage=<%=pageNext(nowPage,last_page_num) %>&sBtn=<%=btnNum(pageNext(nowPage,last_page_num)) %>" aria-current="false">
		<img src="imgs/right-arrow.png" class="btn">
	</a>
	<a href="volunteer.jsp?sPage=<%=nextPaging(nowPage,last_page_num) %>&sBtn=<%=btnNum(nextPaging(nowPage,last_page_num)) %>" aria-current="false">
		<img src="imgs/double-right-arrows.png" class="btn" >
	</a>
</div>


<%@ include file="Bottom.jsp" %>
</body>
</html>