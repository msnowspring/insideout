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
   .carousel-indicators li {
      border-radius: 100%;
   }
   .detailMenuDiv {
      text-align:center;
      padding: 30px 0px 30px 0px;
      border-bottom: 1px solid #e8e9ed;
   }
   .detailIcon {
      width:30px;
      height:30px;
      align:center;
   }
   .detailMenuItem {
      padding: 0px 30px 0px 30px;
      font-size:18px;
      font-weight:500;
      color:#000;
      font-align:center;
   }
   .detailMenuItem:hover {
      color:#EACC1A;
      text-decoration:none;
   }
   .donationMain, .volunteerMain, .campaignMain{
      padding: 30px; 
   }
   .smallTitle {
      font-size:15px;
      font-weight:500;
      color:#000;
   }
   .smallTitle:hover {
      color:#000;
      text-decoration:none;
   }
   .right_point {
      width:17px;
      height:15px;
      padding-left:5px;
      margin-bottom:3px;
   }
   
   
</style>
</head>
<body>
<script src="Resources/js/bootstrap.min.js"></script>
<script src="Resources/jquery/jquery-3.4.1.min.js"></script>

<div class="container">
   
   
   <!-- Top 불러옴 -->
   <%@ include file="Top.jsp" %>
   
   <!-- Center 들어갈 것들 -->
   <div class="center">
   
      <!-- 이벤트 등 슬라이드 이미지로 표시 -->
      <div class="row">
         <div class="col">
            <div id="hiCarousel" class="carousel slide" data-ride="carousel">
               <ol class="carousel-indicators">
                  <li data-target="#hiCarousel" data-slide-to="0" class="active" style="width:10px;height:10px;"></li>
                  <li data-target="#hiCarousel" data-slide-to="1" style="width:10px;height:10px;"></li>
                  <li data-target="#hiCarousel" data-slide-to="2" style="width:10px;height:10px;"></li>
               </ol>
               <div class="carousel-inner">
                   <div class="carousel-item active" data-interval="5000">
                        <img src="https://dummyimage.com/1140x480/000/fff" class="d-block w-100" alt="">
                        <div class="carousel-caption d-none d-md-block">
                        <h5> 요호호 </h5>
                        <p> 예시 설명 </p>
                     </div>
                   </div>
                   <div class="carousel-item" data-interval="5000">
                        <img src="https://dummyimage.com/1140x480/000/fff" class="d-block w-100" alt="">
                        <div class="carousel-caption d-none d-md-block">
                        <h5> 오렌지는 왜 맛있을까 </h5>
                        <p> 오렌지니까.. </p>
                     </div>
                   </div>
                   <div class="carousel-item" data-interval="5000">
                        <img src="https://dummyimage.com/1140x480/000/fff" class="d-block w-100" alt="">
                        <div class="carousel-caption d-none d-md-block">
                        <h5> 돈까스 먹고싶다 </h5>
                        <p> 돈까스 최고존엄 </p>
                     </div>
                  </div>
               </div>
               <a class="carousel-control-prev" href="#hiCarousel" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                 </a>
                 <a class="carousel-control-next" href="#hiCarousel" role="button" data-slide="next">
                   <span class="carousel-control-next-icon" aria-hidden="true"></span>
                 </a>
            </div>
         </div>
      </div>
      
      <!-- 상세 메뉴 -->
      <div class="row">
         <div class="col">
            <div class="detailMenuDiv">
                  <a href="youth.jsp" class="detailMenuItem" aria-current="false"> 
                     <!--  <img src="imgs/children.png" class="detailIcon">
                     <br>-->
                     아동•청소년
                  </a>

                  <a href="family.jsp" class="detailMenuItem" aria-current="false">
                     <!--  <img src="imgs/family.png" class="detailIcon">
                     <br> -->
                     가정 
                  </a>

                  <a href="elderly.jsp" class="detailMenuItem" aria-current="false">
                     <!-- <img src="imgs/elderly.png" class="detailIcon"> 
                     <br> -->
                     어르신 
                  </a>

                  <a href="disabled.jsp" class="detailMenuItem" aria-current="false"> 
                     장애인 
                  </a>

                  <a href="animal.jsp" class="detailMenuItem" aria-current="false"> 
                     동물 
                  </a>

                  <a href="disaster.jsp" class="detailMenuItem" aria-current="false"> 
                     재난•재해 
                  </a>

                  <a href="environment.jsp" class="detailMenuItem" aria-current="false"> 
                     환경 
                  </a>

                  <a href="etc.jsp" class="detailMenuItem" aria-current="false"> 
                     기타 
                  </a>

            </div>
         </div>
      </div>
      
      <!-- 기부 -->
      <div class="row">
         <div class="col">
            <div class="donationMain">
               <a href="donation.jsp" class="smallTitle give">
                   기부 <img src="imgs/right_point.png" class="right_point">
               </a>
            </div>
         </div>
      </div>
      
      <!-- 봉사 -->
      <div class="row">
         <div class="col">
            <div class="volunteerMain">
               <a href="volunteer.jsp" class="smallTitle">
                  봉사 <img src="imgs/right_point.png" class="right_point"> 
               </a>
            </div>
         </div>
      </div>
      
      <!-- 캠페인 -->
      <div class="row">
         <div class="col">
            <div class="campaignMain">
               <a href="campaign.jsp" class="smallTitle"> 
                  캠페인 <img src="imgs/right_point.png" class="right_point"> 
               </a>
            </div>
         </div>
      </div>
   

            
            
         
   </div>
   
   <%@ include file="Bottom.jsp" %>
   
</div>

</body>
</html>