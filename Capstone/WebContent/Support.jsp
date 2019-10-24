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
<title>campaign</title>
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
   color: #E5CF51;;
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
margin-top:-12px;
   letter-spacing: -.5px;

}
.s_bx1 {
   letter-spacing: -.5px;
   
   margin-top:-12px;
   
}
.s_bx2 {
   letter-spacing: -.5px;
   margin-top:-12px;
}
.s_bx3 {
   letter-spacing: -.5px;
   margin-top:-12px;
   
}

.s_bx4 {
   letter-spacing: -.5px;
   margin-top:-12px;
   
}

.s_bx5 {
   letter-spacing: -.5px;
   margin-top:-12px;
   
}

.s_bx6 {
   letter-spacing: -.5px;
   margin-top:-12px;
   
}


.category {

   font-size: 12px;
   font-weight: 700;
   color: #333;
}

.association {
   font-size: 12px;
   font-weight: 700;
   color: #000000;
}

.ss_bx {
   margin-top:12px;
}
.ss_bx1 {
   margin-top: -5px;
   
}
.ss_bx2 {
   margin-top: -5px;
   
}
.ss_bx3 {
   margin-top: -5px;
   
}
.ss_bx4 {
   margin-top: -5px;
   
}
.ss_bx5 {
   margin-top: -5px;
   
}
.ss_bx6 {
   margin-top: -5px;
   
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
margin-top:6px;
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
      
      <br>
   <div class="row">
   <div class="col-3">
      <div class="card_wrap">
         <div class="card"> <img src="imgs/1.jpg" class="card_img">
            <div class="card_content">
               <div class="info_bx">
                  <strong class="card_title">애니휴먼</strong>
                  <div class="s_bx">
                     <span class="category"> 나눔의 집 위안부 할머님들을 후원</span>
                  </div>
                  <div class="ss_bx">
                  <a href="http://anyhuman.co.kr/"><button id="btn" >사이트 이동</button></a>
                  </div>
               </div>
            </div>
         </div>
      </div>
      </div>   
      
      <div class="col-3">
      <div class="card_wrap">
         <div class="card"> <img src="imgs/2.jpg" class="card_img">
            <div class="card_content">
               <div class="info_bx">
                  <strong class="card_title">마리몬드</strong>
                  <div class="s_bx1">
                     <span class="category"> 인권을 위해 행동하고 폭력에 반대하는 라이프스타일 브랜드</span>
                  </div>
                  <div class="ss_bx1">
                  <a href="https://marymond.kr/"><button id="btn" >사이트 이동</button></a>
                  </div>
               </div>
            </div>
         </div>
      </div>
      </div>   
      <div class="col-3">
      <div class="card_wrap">
         <div class="card"> <img src="imgs/3.jpg" class="card_img">
            <div class="card_content">
               <div class="info_bx">
                  <strong class="card_title">마르코로호</strong>
                  <div class="s_bx2">
                     <span class="category"> 윤리적 소비를 장려하고 할머님께 행복한 노후를 선물하는 브랜드</span>
                  </div>
                  <div class="ss_bx2">
                  <a href="https://marcoroho.com/"><button id="btn" >사이트 이동</button></a>
                  </div>
               </div>
            </div>
         </div>
      </div>
      </div>   
      <div class="col-3">
      <div class="card_wrap">
         <div class="card"> <img src="imgs/4.jpg" class="card_img">
            <div class="card_content">
               <div class="info_bx">
                  <strong class="card_title">비커넥트</strong>
                  <div class="s_bx3">
                     <span class="category"> 나아진 그들 삶의 변화를 위한 착한 소비</span>
                  </div>
                  <div class="ss_bx3">
                  <a href="http://www.befriendmarket.com/prod/list.asp?gubun=BCONNECT"><button id="btn" >사이트 이동</button></a>
                  </div>
               </div>
            </div>
         </div>
      </div>
      </div>   
      </div>
      
      
      
      <div class="row">
   <div class="col-3">
      <div class="card_wrap">
         <div class="card"> <img src="imgs/5.jpg" class="card_img">
            <div class="card_content">
               <div class="info_bx">
                  <strong class="card_title">비코</strong>
                  <div class="s_bx4">
                     <span class="category"> 유기동물 이야기 BE THE CYNOSURE OF ALL EYES</span>
                  </div>
                  <div class="ss_bx4">
                  <a href="https://smartstore.naver.com/bcoe"><button id="btn" >사이트 이동</button></a>
                  </div>
               </div>
            </div>
         </div>
      </div>
      </div>   
      
      <div class="col-3">
      <div class="card_wrap">
         <div class="card"> <img src="imgs/6.jpg" class="card_img">
            <div class="card_content">
               <div class="info_bx">
                  <strong class="card_title">W-재단</strong>
                  <div class="s_bx5">
                     <span class="category">환경오염, 지구온난화로 고통받는 이들에게 손을 내밀어 주세요.</span>
                  </div>
                  <div class="ss_bx5">
                  <a href="https://www.gcrfund.org/bracelet/"><button id="btn" >사이트 이동</button></a>
                  </div>
               </div>
            </div>
         </div>
      </div>
      </div>   
      <div class="col-3">
      <div class="card_wrap">
         <div class="card"> <img src="imgs/7.jpg" class="card_img">
            <div class="card_content">
               <div class="info_bx">
                  <strong class="card_title">메리디아니</strong>
                  <div class="s_bx6">
                     <span class="category"> 유기견과 유기묘의 평화로운 하루를 위한 디자인</span>
                  </div>
                  <div class="ss_bx6">
                  <a href="https://smartstore.naver.com/meridiani"><button id="btn" >사이트 이동</button></a>
                  </div>
               </div>
            </div>
         </div>
      </div>
      </div>   

      </div>
      
   </div>
</body>
</html>

