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
         <h3 class="tit"> 내복 한 벌, 어르신에겐 3도씨의 따뜻함이 필요합니다. </h3>
         <div class="tab_cont">
            <div class="t_group">
               <dl style="margin:0;">
                  <dt>기부 기간</dt> <dd>2019-10-07~ 2020-11-30</dd>
               </dl>
            </div>
            <div class="t_group">
               <dl>
                  <dt>기부 단체</dt> <dd>하당노인복지관</dd>
               </dl>
            </div>
            <img src="imgs/cimg5.jpg" class="dimg">
            <p class="stitle"> 날이 갈수록 더욱 추워지는 날들 </p>
            <p class="scont">
				하루가 다르게 기온차가 달라집니다. 벌써부터 두꺼운 가디건을 꺼내입어야 하는	<br>
				계절이 다가온 것 같습니다. 이 시기에는 감기도 쉽게 걸립니다. 	<br>
				방안에 찬 공기가 가득하지만 어르신의 체온을 감싸줄 수 있는 것은 낡은 점퍼 하나, 	<br>
				다 삭아버린 겨울 이불 한 채입니다. 폐지를 주우며 생계를 유지하시는 김점례 어르신은	<br>
				올 겨울도 걱정이 이만저만이 아닙니다.	<br>
            </p>
            
            <p class="stitle"> 내복 한 벌, 3℃의 보온효과를 낼 수 있답니다. </p>
            <p class="scont">
				요즘 사람들은 잘 입지 않는 내복, 어르신들에게는 이 내복 한 벌이 	<br>
				얼마나 소중하고 따뜻한 존재인지 모릅니다. 	<br>
				내복으로 인하여 약 3℃의 보온효과를 낼 수 있습니다. 사람의 체온이 1℃ 내려갈 때마다	<br>
				 면역력은 30%씩 감소한다고 합니다. 어르신에게는 면역력은 정말 중요합니다. 	<br>
				 그렇기 때문에 건강하고 행복한 노후를 위해서는 우리의 도움이 절실합니다. 	<br>
				 겨울에 입는 두꺼운 외투들은 가격도 비싸 어르신들이 구매하기에는 어려움이 있습니다. 	<br>
				 하지만 내복은 부담 없이 많은 어르신들을 따뜻하게 할 수 있습니다.	<br>
            </p>
            
            <p class="stitle"> 따뜻한 겨울을 위한 사랑을 전달합니다. </p>
            <p class="scont">
				겨울은 가장 외롭고 쓸쓸한 계절인 것 같습니다. 홀로 생활하시는 우리 어르신들에게는 	<br>
				더욱 외롭고 쓸쓸한 계절일 것입니다. 낡은 이불 한채로 사계절을 생활하시는 어르신, 	<br>
				얇은 외투 하나로 사계절을 보내시는 어르신, 몸도 마음도 추운 이 계절, 	<br>
				어르신들에게는 내복 한 벌로도 따뜻하고 행복한 계절이 되실 것입니다. 	<br>
				어르신들의 몸과 마음을 따뜻하게 만들어주실 당신을 기다립니다.        <br>
			</p>
            
            
            <div class="t_group">
               <dl style="margin:0;">
                  <dt style="background:#fff;border-right:1px solid #e0e0e0;">기부 기간</dt> <dd>2019-10-07~ 2020-11-30</dd>
               </dl>
            </div>
            <div class="t_group">
               <dl style="margin:0;">
                  <dt style="background:#fff;border-right:1px solid #e0e0e0;">기부 대상</dt> <dd>독거 어르신</dd>
               </dl>
            </div>
            <div class="t_group">
               <dl style="margin:0;">
                  <dt style="background:#fff;border-right:1px solid #e0e0e0;">대상 수</dt> <dd>100명</dd>
               </dl>
            </div>
            <div class="t_group">
               <dl>
                  <dt style="background:#fff;border-right:1px solid #e0e0e0;">기대 효과</dt> <dd>- 몸과 마음에 따뜻함을 전한다
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