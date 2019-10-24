<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<title>campain</title>
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

	<%@ include file="Top.jsp"%>
	<div class="container">
		<div class="row">
			<div class="col-12">

				<a href="Campaign.jsp" class="menuitem" aria-current="false">진행중</a>
				 <span class="bar" style="font-size: 25px; font-weight: 600;">|</span>
				<a href="Camapaignend.jsp" class="menuitem" aria-current="false">종료 </a>


			</div>
		</div>
		<br>
	<div class="row">
	<div class="col-3">
		<div class="card_wrap">
			<div class="card"> <img src="imgs/campain2.jpg" class="card_img">
				<div class="card_content">
					<div class="info_bx">
						<strong class="card_title">물 절약, 잘 하고 있나요?</strong>
						<div class="s_bx">
							<span class="category"> 꿀비</span> <span class="bar">X </span> <span
								class="association"> 뚜아뚜지</span>
						</div>
						<div class="ss_bx">
						<a href="Campaign2.jsp"><button id="btn" >자세히 보기</button></a>
						</div>
					</div>
				</div>
			</div>
		</div>
		</div>	
		
		<div class="col-3">
		<div class="card_wrap">
			<div class="card"> <img src="imgs/campaign3.jpg" class="card_img">
				<div class="card_content">
					<div class="info_bx">
						<strong class="card_title">전기안전,잘 지키고 있나요?</strong>
						<div class="s_bx">
							<span class="category"> 꿀비</span> <span class="bar">X </span> <span
								class="association"> 한국전기안전공사</span>
						</div>
						<div class="ss_bx">
						<a href="Campaign3.jsp"><button id="btn" >자세히 보기</button></a>
						</div>
					</div>
				</div>
			</div>
		</div>
		</div>	
		
		<div class="col-3">
		<div class="card_wrap">
			<div class="card"> <img src="imgs/campaign4.jpg" class="card_img">
				<div class="card_content">
					<div class="info_bx">
						<strong class="card_title">기억해요 , 재생 에너지</strong>
						<div class="s_bx">
							<span class="category"> 꿀비</span> <span class="bar">X </span> <span
								class="association"> 한국에너지 공단</span>
						</div>
						<div class="ss_bx">
						<a href="Campaign4.jsp"><button id="btn" >자세히 보기</button></a>
						</div>
					</div>
				</div>
			</div>
		</div>
		</div>	
		
		<div class="col-3">
		<div class="card_wrap">
			<div class="card"> <img src="imgs/campaign5.PNG" class="card_img">
				<div class="card_content">
					<div class="info_bx">
						<strong class="card_title">대한민국의 밝은 내일을 응원해주세요</strong>
						<div class="s_bx">
							<span class="category"> 꿀비</span> <span class="bar">X </span> <span
								class="association"> 중소벤처기업부</span>
						</div>
						<div class="ss_bx">
						<a href="Campaign5.jsp"><button id="btn" >자세히 보기</button></a>
						</div>
					</div>
				</div>
			</div>
		</div>
		</div>	
		
		</div> <%-- 첫번째 row  --%>	
		<div class="row">
	<div class="col-3">
		<div class="card_wrap">
			<div class="card"> <img src="imgs/campaign6-1.jpg" class="card_img">
				<div class="card_content">
					<div class="info_bx">
						<strong class="card_title">굿컴퍼니를 만나다!기아자동차 이야기</strong>
						<div class="s_bx">
							<span class="category"> 꿀비</span> <span class="bar">X </span> <span class="association"> 기아자동차</span>
						</div>
						<div class="ss_bx">
						<a href="Campaign6.jsp"><button id="btn" >자세히 보기</button></a>
						</div>
					</div>
				</div>
			</div>
		</div>
		</div>	
		
			<div class="col-3">
		<div class="card_wrap">
			<div class="card"> <img src="imgs/campaign7.jpg" class="card_img">
				<div class="card_content">
					<div class="info_bx">
						<strong class="card_title">희망에너지 전달 꿀비와 함께해요!</strong>
						<div class="s_bx">
							<span class="category"> 꿀비</span> <span class="bar">X </span> <span class="association">전력거래소</span>
						</div>
						<div class="ss_bx">
						<a href="Campaign7.jsp"><button id="btn" >자세히 보기</button></a>
						</div>
					</div>
				</div>
			</div>
		</div>
		</div>	
		
			<div class="col-3">
		<div class="card_wrap">
			<div class="card"> <img src="imgs/campaign8.jpg" class="card_img">
				<div class="card_content">
					<div class="info_bx">
						<strong class="card_title">누구에게나 공평한 사춘기가 될 수 있도록 응원해요</strong>
						<div class="s_bx">
							<span class="category"> 꿀비</span> <span class="bar">X </span> <span class="association">유한킴벌리</span>
						</div>
						<div class="ss_bx">
						<a href="Campaign8.jsp"><button id="btn" >자세히 보기</button></a>
						</div>
					</div>
				</div>
			</div>
		</div>
		</div>	
		
			<div class="col-3">
		<div class="card_wrap">
			<div class="card"> <img src="imgs/campaign9.jpg" class="card_img">
				<div class="card_content">
					<div class="info_bx">
						<strong class="card_title">건강한 심장과 뇌를 지키는 생활 함께해요!</strong>
						<div class="s_bx">
							<span class="category"> 꿀비</span> <span class="bar">X </span> <span class="association">인하대병원 뇌혈관질환센터</span>
						</div>
						<div class="ss_bx">
						<a href="Campaign9.jsp"><button id="btn" >자세히 보기</button></a>
						</div>
					</div>
				</div>
			</div>
		</div>
		</div>	
		</div><!--  row 두번째 -->
		<div class="row">
	<div class="col-3">
		<div class="card_wrap">
			<div class="card"> <img src="imgs/campaign10.jpg" class="card_img">
				<div class="card_content">
					<div class="info_bx">
						<strong class="card_title">차학연의 따뜻한 나눔스토리</strong>
						<div class="s_bx">
							<span class="category"> 꿀비</span> <span class="bar">by </span> <span class="association"> 차학연</span>
						</div>
						<div class="ss_bx">
						<a href="Campaign10.jsp"><button id="btn" >자세히 보기</button></a>
						</div>
					</div>
				</div>
			</div>
		</div>
		</div>	
		</div><!--  row 세번째 -->
		</div><%-- page container --%>	
</body>
</html>
</body>
</html>
