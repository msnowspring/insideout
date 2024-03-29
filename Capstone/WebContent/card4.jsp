<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="Resources/css/bootstrap.min.css">
<link rel="shortcut icon" href="imgs/favicon.ico" >
<link rel="icon" href="favicon.ico" >
<title> 꿀비 </title>
<style>
   #container{
      -webkit-font-smoothing: antialiased;
      font-family: '돋움',Dotum,Helvetica,sans-serif;
      font-size: 12px;
      color: #666;
      width: 100%;
      position: relative;
      overflow: hidden;
      margin: 0;
      padding-bottom: 0;
   }
   .collect_wrap{
      -webkit-font-smoothing: antialiased;
      color: #666;
      font-size: 12px;
      font-family: NanumBarunGothic,"나눔바른고딕","Nanum Barun Gothic",Sans-serif;
      overflow: hidden;
      width: 1098px;
      margin: 0 auto 90px;
      border-bottom: 1px solid #e5e5e5;
      border-top: 1px solid #e5e5e5;
      background: url(https://ssl.pstatic.net/happyimg2/img/mainhome/bg_crowd.gif) repeat-y;
   }
   .collect_content{
      -webkit-font-smoothing: antialiased;
      color: #666;
      font-family: NanumBarunGothic,"나눔바른고딕","Nanum Barun Gothic",Sans-serif;
      float: left;
      width: 816px;
      padding: 60px 94px 90px;
      font-size: 16px;
   }
   .collect_side{
      -webkit-font-smoothing: antialiased;
      color: #666;
      font-family: NanumBarunGothic,"나눔바른고딕","Nanum Barun Gothic",Sans-serif;
      float: left;
      width: 282px;
      font-size: 15px;
   }
   .theme{
      -webkit-font-smoothing: antialiased;
      font-family: NanumBarunGothic,"나눔바른고딕","Nanum Barun Gothic",Sans-serif;
      font-size: 17px;
      letter-spacing: -.06em;
      line-height: 1;
      color: #E5CF51;
      font-weight: 700;
      text-decoration: none;
   }
   .tit{
      -webkit-font-smoothing: antialiased;
      margin-top: 16px;
      padding: 0;
      display: block;
      clear: both;
      content: '';
      margin-bottom: 15px;
      font-family: NanumBarunGothic,"나눔바른고딕","Nanum Barun Gothic",Sans-serif;
      font-size: 36px;
      font-weight: 400;
      color: #222;
      letter-spacing: .4px;
      line-height: 40px;
   }
   .tab_cont{
      -webkit-font-smoothing: antialiased;
      color: #666;
      font-family: NanumBarunGothic,"나눔바른고딕","Nanum Barun Gothic",Sans-serif;
      font-size: 16px;
      margin: 57px 0 55px;
   }
   .t_group{
      font-family: 'NanumBarunGothic','Malgun Gothic','맑은 고딕','돋움',Dotum,Helvetica,'Apple SD Gothic Neo',Sans-serif;
      font-size: 14px;
      color: #2f2f2f;
      font-weight: 400;
      word-break: break-word;
      line-height: 140%;
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      border-top: 1px solid #e0e0e0;
      height: 47px;
   }
   dl{
      font-family: 'NanumBarunGothic','Malgun Gothic','맑은 고딕','돋움',Dotum,Helvetica,'Apple SD Gothic Neo',Sans-serif;
      font-size: 14px;
      color: #2f2f2f;
      font-weight: 400;
      word-break: break-word;
      line-height: 140%;
      margin: 0 !important;
      padding: 0;
      float: left;
      position: relative;
      width: 100%;
      padding-left: 120px;
      box-sizing: border-box;
      height: 47px;
   }
   dt{
      font-family: 'NanumBarunGothic','Malgun Gothic','맑은 고딕','돋움',Dotum,Helvetica,'Apple SD Gothic Neo',Sans-serif;
      font-size: 14px;
      color: #2f2f2f;
      word-break: break-word;
      line-height: 140%;
      margin: 0;
      position: absolute;
      top: 0;
      left: 0;
      width: 120px;
      height: 47px;
      padding: 10px;
      text-align: center;
      font-weight: 700;
      box-sizing: border-box;
      background: #f8f8f8;
   }
   dd{
      font-family: 'NanumBarunGothic','Malgun Gothic','맑은 고딕','돋움',Dotum,Helvetica,'Apple SD Gothic Neo',Sans-serif;
      font-size: 14px;
      color: #2f2f2f;
      font-weight: 400;
      word-break: break-word;
      line-height: 140%;
      margin: 0;
      width: 100%;
      height: 47px;
      padding: 10px;
      box-sizing: border-box;
   }
   .side_tit{
      font-family: 'NanumBarunGothic','Malgun Gothic','맑은 고딕','돋움',Dotum,Helvetica,'Apple SD Gothic Neo',Sans-serif;
      font-size: 14px;
      color: #2f2f2f;
      font-weight: 400;
      word-break: break-word;
      line-height: 140%;
      position: relative;
      margin: 0 0 20px 0;
      padding: 25px;
      text-align: center;
      background: #E5CF51;
      font-size: 18px;
      color: #fff;
      font-weight: 700;
   }
   .try{
      word-break: break-word;
      margin: 10px 90px;
      cursor: pointer;
      background: none;
      display: inline-block;
      min-height: 35px;
      padding: 5px 20px;
      text-align: center;
      background-color: #fff;
      border: 1px solid #cdcdcd;
      border-radius: 4px;
      box-sizing: border-box;
      vertical-align: middle;
      line-height: 160%;
      border-color: #E5CF51;
      color: #E5CF51!important;
   }
   .try:focus {
      outline-color: #B2977B;
   }
   .stitle {
   		font-size:23px;
   		padding-top:30px;
   		margin:0px;
   		font-weight:500;
   		color:#444;
   }
   .scont {
   		padding-top:17px;
   		font-size:17px;
   }
   .dimg {
   		padding-top:20px;
   		width: 628px;
   }
</style>
</head>
<body>
<%@ include file="Top.jsp" %>

<div id="container">
   <div class="collect_wrap">
      <div class="collect_content">
         <a href="#" class="theme">기부  &gt; 분류</a>
         <h3 class="tit"> 독거어르신들에게 특별한 하루를 선물하세요!! </h3>
         <div class="tab_cont">
            <div class="t_group">
               <dl style="margin:0;">
                  <dt>기부 기간</dt> <dd>2019-09-01~ 2020-11-30</dd>
               </dl>
            </div>
            <div class="t_group">
               <dl>
                  <dt>기부 단체</dt> <dd>용산재가노인지원센터</dd>
               </dl>
            </div>
            <img src="imgs/cimg4.jpg" class="dimg">
            <p class="stitle"> 90세가 넘도록 생일을 잊고 지내시는 노순자 할머님 (가명, 91세) </p>
            <p class="scont">
				슬하에 자식없이 평생 혼자 사신 노할머님은 언제나 큰 소리로 밝은 미소를 지으시며 우리를 맞으십니다.	<br>
				머리는 새하얀 백발이며 귀가 거의 들리지 않아 보청기 없이는 의사소통이 힘들지만,		<br>
				다른 어르신들이 앓고 있는 만성질환 (고혈압, 당뇨, 관절염, 통증 등) 하나 없이 건강한 편입니다.	<br>
				그러나 90세가 넘어가면서 치매증상을 보이며 혼자 새벽에 배회하기도 하고	<br>
				도둑이 들어와 물건을 훔쳐갔다는 말씀을 자주 하십니다.	<br>
				혼자 지내다보니 무료하신 시간이 많아 경로당, 노인대학 등에 열심히 다니시고,	<br>
				시간이 나면 집 앞 공원에 나가 지나가는 사람들을 쳐다보며 지내시곤 합니다.		<br>
				어제가 오늘 같고, 오늘이 내일 같은 할머님에게 지나가는 세월은 무심하기만 합니다.	<br>
				구순이 지났지만 일평생 생일을 챙겨주는 사람없이 외롭게 지내시는 할머님에게	<br>
				이제라도 특별한 하루를 선물하고 싶습니다.	<br>
            </p>
            
            <p class="stitle"> 평생을 눈물로 보내신 김숙희 할머님 (가명, 90세) </p>
            <p class="scont">
				김할머님은 씨받이로 들어간 가정에서 본처의 학대를 받으며 평생을 지내셨습니다.	<br>
				다행히 아들 둘을 낳고 80세가 넘어서야 본처에게서 인정을 받고 뒤늦게 평안을 찾았지만,	<br>
				서른이 넘도록 직장도 없이 집에서 빈둥거리며 용돈을 달라고 행패부리는	<br>
				둘째 아들 때문에 날마다 눈물로 세월을 보내고 있습니다.	<br>
				수급비를 모아 아들 용돈에 보태곤 하지만, 아들의 학대가 점점 심해지면서	<br>
				더 이상 살고 싶지 않다며 하소연하는 김할머님을 보면 가슴이 먹먹합니다.	<br>
				평생을 눈물로 보내시며 올해 구순이 되었지만 누구 한 사람 할머님의	<br>
				생신을 챙겨주는 사람이 없는 상황에서 할머님의 서러움과 슬픔이 쌓여가고 있습니다.	<br>
				김할머님에게 단 하루만이라도 서러움과 슬픔을 잊고 행복한 시간이 되도록	<br>
				이웃분들과 함께 어르신의 구순잔치를 베풀고자 합니다.	<br>
            </p>
            
            <p class="stitle"> 90세가 넘은 어르신들에게 구순잔치를 해드리고자 합니다! </p>
            <p class="scont">
				현재 저희 센터에서 서비스를 제공하고 있는 재가어르신 중에서 	<br>
				구순이 넘어 혼자 사는 어르신들의 수가 10여명이 됩니다. 	<br>
				이 어르신들을 모시고 지역주민과 친구분들과  	<br>
				함께 어르신들을 위한 구순잔치를 해드리고 싶습니다. 	<br>
				고운 한복도 준비하고, 잔치상도 준비하고, 노래와 춤 등 다양한 프로그램으로  	<br>
				어르신들을 행복하게 해드리고 싶습니다. 또한 어르신들에게 선물도 드리고  	<br>
				지금껏 살아온 나날 중 가장 행복한 시간을 만들어드리고 싶습니다. 	<br>
				외로움과 서러움으로 평생을 보내시는 어르신들을 위한 구순잔치에 많은 분들의 관심과 응원을 부탁드립니다.	    	<br>        
			</p>
            
            
            <div class="t_group">
               <dl style="margin:0;">
                  <dt style="background:#fff;border-right:1px solid #e0e0e0;">기부 기간</dt> <dd>2019-09-01~ 2020-11-30</dd>
               </dl>
            </div>
            <div class="t_group">
               <dl style="margin:0;">
                  <dt style="background:#fff;border-right:1px solid #e0e0e0;">기부 대상</dt> <dd>독거 어르신</dd>
               </dl>
            </div>
            <div class="t_group">
               <dl style="margin:0;">
                  <dt style="background:#fff;border-right:1px solid #e0e0e0;">대상 수</dt> <dd>15명</dd>
               </dl>
            </div>
            <div class="t_group">
               <dl>
                  <dt style="background:#fff;border-right:1px solid #e0e0e0;">기대 효과</dt> <dd>- 독거어르신 15명에게 구순잔치 실시<br> - 지역주민들과 함께 어르신 생신 축하하여 지역공동체 활성화 기여</dd>
               </dl>
            </div>
         </div>
      </div>
      <div class="collect_side">
         <div class="side_tit">기부 참여</div>
         <div class="t_group">
            <dl style="margin:0;">
               <dt>구분</dt> 
               <dd>
                  <input type="radio" name="chk_btn" value="individual" checked="checked">개인
                  <input type="radio" name="chk_btn" value="group">단체
               </dd>
            </dl>
         </div>
         <div class="t_group">
            <dl style="margin:0;">
               <dt>이름</dt> 
               <dd> <input type="text" name="name" size="15"> </dd>
            </dl>
         </div>
         <div class="t_group">
            <dl style="margin:0;">
               <dt>연락처</dt> 
               <dd>
                  <input type="text" name="name" size="15">
               </dd>
            </dl>
         </div>
         <div class="t_group" >
            <dl style="margin:0;">
               <dt>이메일</dt> 
               <dd> <input type="text" name="name" size="15"> </dd>
            </dl>
         </div>
         <button type="button" onclick="#" class="try">신청하기</button>
      </div>
   </div>
</div>

<%@ include file="Bottom.jsp" %>
</body>
</html>