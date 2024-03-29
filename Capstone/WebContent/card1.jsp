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
         <a href="#" class="theme" style="text-decoration:none">기부  &gt; 분류</a>
         <h3 class="tit"> 생리대가 필요한 아이들 </h3>
         <div class="tab_cont">
            <div class="t_group">
               <dl style="margin:0;">
                  <dt>기부 기간</dt> <dd>2019-08-18~ 2019-11-31</dd>
               </dl>
            </div>
            <div class="t_group">
               <dl>
                  <dt>기부 단체</dt> <dd>함께하는 한숲</dd>
               </dl>
            </div>
            <img src="imgs/cimg1.png" class="dimg">
            <p class="stitle"> 어린아이들이 감당하기엔 버거운 그 날 </p>
            <p class="scont">
				매일 반복되는 하루 속 끼니를 때우기 위한 걱정만으로도 벅찬 아이들에게	<br>
				갑작스레 찾아온 그 날의 걱정은 더욱더 버겁기만 합니다.	<br>
				값비싼 생리대를 매달 구입하는 것은 차마 엄두조차 내지 못해	<br>
				급한대로 휴지로 대신하거나 천 조각 하나로 막으며 지내고 있는 날들에 	<br>
				옆에서 함께 지켜보는 부모의 가슴은 찢어집니다.	<br>
				그들이 생리대라는 존재를 몰라서, 사용할 줄을 몰라서 쓰지 않는 것이 아닙니다.	<br>
				누군가에겐 당연하게 여겨졌던 것들이 이곳에선 당연하게 여겨지지 않았고,	<br>
				값비싼 생필품을 감당하지 못해 쓰지 못하고 있었던 것뿐입니다.	<br>
				이렇게 안타까운 현실을 마주한 아이들은 한 달에 한 번씩 찾아올 그 날이 차라리 오지 않기를 바랄 뿐입니다.	<br>
            </p>
            
            <p class="stitle"> 두렵지 않고 당당하게 어깨를 펼 수 있는 생리대라는 선물 </p>
            <p class="scont">
				열악한 환경에서 천 조각으로 막으며 아슬아슬하게 	<br>
				그날을 버텨온 아이들은 매달 주눅 들어 어깨를 움츠리고,	<br>
				별다른 생리대가 없어 생리가 새어 옷에 묻고 냄새가 날까 전전긍긍하며 	<br>
				그날이 얼른 지나가기를 바라고 또 바랐습니다. 	<br>
				당연한 신체변화를 두려워하고, 오지 않기를 바라며, 또 창피하게까지 느껴질 정도로 아이들에게 그날은 버거운 날이었습니다. 	<br>
				따뜻한 세상을 만드는 함께하는 한숲은 해외 여성청소년들을 위한 생리대 지원을 하고자 합니다. 	<br>
				작은 손길이, 또 작은 관심과 사랑이 한곳에 모이면 커다란 기적을 만들 수 있으며, 	<br>
				가볍게 생각할 수 있는 여러분의 콩 하나가 아이들을 당당하게 자랄 수 있게 만들어 줍니다. 	<br>
				콩 하나의 기적은 고스란히 여자아이들을 위한 생리대로 전달되어 신체 변화를 자연스럽게 받아들이고 	<br>
				자신의 몸을 아끼고 사랑할 줄 아는 사람으로 성장할 수 있도록 도울 것입니다. 	<br>
				제3세계 여성 청소년 아이들이 움츠러들지 않고 건강한 아름다움을 되찾을 수 있도록 많은 관심 부탁드립니다.	<br>
            </p>
            
            
            <div class="t_group">
               <dl style="margin:0;">
                  <dt style="background:#fff;border-right:1px solid #e0e0e0;">기부 기간</dt> <dd>2019-08-18~ 2019-11-31</dd>
               </dl>
            </div>
            <div class="t_group">
               <dl style="margin:0;">
                  <dt style="background:#fff;border-right:1px solid #e0e0e0;">기부 대상</dt> <dd>캄보디아 여성 청소년</dd>
               </dl>
            </div>
            <div class="t_group">
               <dl style="margin:0;">
                  <dt style="background:#fff;border-right:1px solid #e0e0e0;">대상 수</dt> <dd>100명</dd>
               </dl>
            </div>
            <div class="t_group">
               <dl>
                  <dt style="background:#fff;border-right:1px solid #e0e0e0;">기대 효과</dt> <dd>- 해외 빈곤 여성 아동들에게 생리대 지원으로 건강한 삶을 선물한다. </dd>
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