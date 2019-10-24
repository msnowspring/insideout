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
         <h3 class="tit"> 리어카가 가벼울수록 마음은 무겁습니다. </h3>
         <div class="tab_cont">
            <div class="t_group">
               <dl style="margin:0;">
                  <dt>기부 기간</dt> <dd>2019-08-19~ 2019-11-17</dd>
               </dl>
            </div>
            <div class="t_group">
               <dl>
                  <dt>기부 단체</dt> <dd>강동구립해공노인복지관</dd>
               </dl>
            </div>
            <img src="imgs/cimg6.jpg" class="dimg">
            <p class="stitle"> 폐지 줍는 어르신들은 하루하루가 전쟁터입니다. </p>
            <p class="scont">
				"하루가 전쟁 같아." "도무지 마음 편하게 살 날이 없어." 하루 종일 돌아다녀도 어르신이 벌 수 있는 돈은 4천원 입니다. 요즘 같이 폐지 값이 저렴할 때는 열심히 모아도 김밥한줄 사먹기가 힘듭니다. 동네 폐지어르신들이 많이 찾는 고물상에서는 “어르신들을 받아주는 곳은 없고 마지막으로 와서 일하는 곳이 여기입니다. 어느 날 안 오시면 그 이후로는 생사를 알 수 없는 상황이죠. 참 세상이 야속합니다.” 하루 벌어 하루를 사는 노인들. 오늘도 불볕더위 속에 또 길거리로 나섭니다.
            </p>
            
            <p class="stitle"> 어르신들의 마음의 무게를 함께 덜어주세요. </p>
            <p class="scont">
				어지러울 정도로 더워도, 손끝이 갈라질 정도로 추워도 거리를 헤매는 어르신들이 있습니다. 어르신들은 하루하루를 살아가기 위해 거리의 폐지를 주워 모읍니다. 주무시는 동안에도, 식사를 하시는 동안에도 폐지를 조금이라도 더 모아야 한다는 걱정에 항상 마음이 무겁습니다. 우리 지역에는 마음 편히 식사하지 못하는 폐지 줍는 어르신들이 있습니다. 어르신들에게 마음의 무게를 조금이나마 덜어드리기 위해 쌀과 김을 지원해 드리겠습니다. 쌀이 떨어지기 전까지 만이라도 마음 편하게 식사하실 수 있도록 어르신들의 삶의 무게를 덜어주세요.
            </p>
            
            
            <div class="t_group">
               <dl style="margin:0;">
                  <dt style="background:#fff;border-right:1px solid #e0e0e0;">기부 기간</dt> <dd>2019-08-19~ 2020-11-17</dd>
               </dl>
            </div>
            <div class="t_group">
               <dl style="margin:0;">
                  <dt style="background:#fff;border-right:1px solid #e0e0e0;">기부 대상</dt> <dd>취약계층 어르신</dd>
               </dl>
            </div>
            <div class="t_group">
               <dl style="margin:0;">
                  <dt style="background:#fff;border-right:1px solid #e0e0e0;">대상 수</dt> <dd>100명</dd>
               </dl>
            </div>
            <div class="t_group">
               <dl>
                  <dt style="background:#fff;border-right:1px solid #e0e0e0;">기대 효과</dt> <dd>- 저소득 어르신 100분께 식사지원 물품 100set 지원
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