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
         <h3 class="tit"> 바다에 사는 로또라구요? 바다에 사는 보호종,고래예요. </h3>
         <div class="tab_cont">
            <div class="t_group">
               <dl style="margin:0;">
                  <dt>기부 기간</dt> <dd>2019-10-02~ 2019-12-31</dd>
               </dl>
            </div>
            <div class="t_group">
               <dl>
                  <dt>기부 단체</dt> <dd>환경운동연합</dd>
               </dl>
            </div>
            <img src="imgs/cimg6.jpg" class="dimg">
            <p class="stitle"> 우리나라 고래의 현실을 보고 듣고 느끼고, 변화를 위한 행동에 함께 해주세요! </p>
            <p class="scont">
				고래를 보호하기 위해서는 세 가지가 필요해요.	<br>
				1. 고래가 빠져나갈 수 있는 어업도구를 사용하고 	<br>
				2. 고래 고기를 먹지 않으며 	<br>
				3. 불법· 비보고· 비규제 어업(IUU)의 단속을 강화하는 거죠. 	<br>
				이것들이 이루어지려면 많은 사람들이 고래의 현실에 대해 잘 알고 	<br>
				마음을 모으는 것이 무엇보다 중요합니다.	<br>
				내년 1월 1일부터는 해양포유류 안전기준을 통과한 수산물과 가공품만	<br>
				미국으로 수출할 수 있게 돼요. 미국이 해양포유류의 사망이나 부상을 발생하게 	<br>
				하는 방법으로 잡은 수산물이나 그 가공품의 수입을 금지했기 때문이에요. 	<br>
				이에 발맞춰 환경운동연합은 시네마 토크 콘서트와 정부 정책 토론회를 준비 중입니다.	<br>
				여러분과 함께 우리나라 고래의 현실을 보고 들을 수 있는 시네마 토크 콘서트. 	<br>
				오셔서 느낀 것들을 널리 알려주세요. 함께 행동해주세요.	<br>
				불법· 비보고· 비규제 어업(IUU)과 미국 해양포유류 보호법에 관한 정책 토론회를 	<br>
				개최하여 정부에 여러분의 따뜻한 마음을 전달하겠습니다.	<br>
            </p>
            
            
            <div class="t_group">
               <dl style="margin:0;">
                  <dt style="background:#fff;border-right:1px solid #e0e0e0;">기부 기간</dt> <dd>2019-10-02~ 2020-12-31</dd>
               </dl>
            </div>
            <div class="t_group">
               <dl style="margin:0;">
                  <dt style="background:#fff;border-right:1px solid #e0e0e0;">기부 대상</dt> <dd>야생동물</dd>
               </dl>
            </div>
            <div class="t_group">
               <dl style="margin:0;">
                  <dt style="background:#fff;border-right:1px solid #e0e0e0;">대상 수</dt> <dd>1000마리</dd>
               </dl>
            </div>
            <div class="t_group">
               <dl>
                  <dt style="background:#fff;border-right:1px solid #e0e0e0;">기대 효과</dt> <dd>- 멸종위기에 몰린 고래를 지키고 보호할 수 있어요
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