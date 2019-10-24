	<%@ page language="java" contentType="text/html; charset=UTF-8"
		pageEncoding="UTF-8"%>
	<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<html>
	
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>campaign 뚜아뚜지 </title>
	</head>
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
      border-bottom: 0px solid #e5e5e5;
      border-top: 0px solid #e5e5e5;
      border-left:0px solid #e5e5e5;
      border-right:0px solid #e5e5e5;
   }
.jb-wrap {
	width: 700px;
	height: 300px;
	margin: 10px auto;
	border: 1px solid #FFFFFF;
	positon: relative;
}

.jb-wrap img {
	width: 410px;
	vertical-align:middle;
	height: 300px;
	margin-right:290px;
	
}

.jb-text {
	padding: 5px 10px;
	background-color: #E5CF51;;
	text-align: center;
	positon: absolute;
	height: 300px;
	margin-right: 270px;
	margin-left: 130px;
	transform: translate(91%, -100%);
}

.title-bx {
	text-align: center;
	padding: 5px 10px;
	bottom: 50px;
	margin-top: 80px;
	font-weight: 700;
	font-size: 30px;
	color: #FFFFFF;
}

.p-t {
	color: #FFFFFF;
	font-size: 10px;
}

.block-text {
	min-width: 30px;
	padding: 5px 5px 5px;
	border: 1px solid #E5CF51;
	border-width: 1px 0;
	line-height: 45px;
	box-sizing: border-box;
	display: inline-block;
	position: relative;
	margin: 20px;
	word-break: break-all;
	white-space: pre-line;
	font-weight:700;
	font-size:20px;
}

.blockquote {
	margin-block-start: 1em;
	margin-block-end: 1em;
	margin-inline-start: 40px;
	margin-inline-end: 40px;
}
.container{
text-align:center;
}
.text-talk{
text-align:center;
font-size:12pt;
font-weight: 400;
    line-height: 28px;
    color: #343434;
    margin-right:200px;
    margin-left:200px;
}
.text-par{
margin-top:50px;
text-align:center;
font-size:15pt;
font-weight: 700;
    line-height: 28px;
    color: #343434;
    margin-right:200px;
    margin-left:200px;
}
.sm-ta{
font-size:15pt;
font-weight: 700;
    line-height: 28px;
    color: #E5CF51;
   
    
}

</style>
</head>
<body>
	<%@ include file="Top.jsp"%>
	<div class="container">
	<div class="collect_wrap">
	<div class="jb-wrap">
		<div class="jb-image">
			<img src="imgs/campain2.jpg" alt="">
			<div class="jb-text">
				<div class="title-bx">물 절약, 잘 하고 있나요?</div>
				<br>
				<p class="p-t">꿀비 X 뚜아뚜지</p>
			</div>
		</div>
	</div>
	<blockquote class="block-text"><div class="sm-ta">뚜아뚜지를 소개합니다</div></blockquote>
	<div class="container">
	<iframe width="700" height="380" src="https://www.youtube.com/embed/DZeOEwbBT0M" frameborder="0" align="middle"></iframe>
	</div>
	<br>
	<div class="text-talk">
	DIA TV 소속 키즈 크리에이터로 이란성 쌍둥이인 어수아, 어수지로 구성되어 있는 유튜브 채널이다. 주로 육아일기를 업로드 하고 있으며 콩트, 뮤직비디오, 여행기, ASMR 및 리뷰등 다양한 분야에서 촬영하고 있다.
	</div>
	<blockquote class="block-text"><div class="sm-ta">뚜아뚜지와 함께 물 절약하기! </div></blockquote>
	<div class="text-talk">
	스타와 함께하는 캠페인! 물은 우리 삶의 소중한 자원으로써 없어서는 안되는 중요한 자원!<br>
          물을 절약해야 한다는 인식은 갖고 싶지만 실천을 잘 못하는 경우가 많아요 지금처럼 물을 절약하지 않고 쓴다면 나중에는
          물 부족 현상을 겪어야 할지도 몰라요 <br>그래서 준비한 뚜아뚜지와 함께 하는 물 절약하기 캠페인!!<br>
          물 절약함으로써 지구도 지키고 물도 아끼는 캠페인 함께 실천해요!
	</div>	
	<div class="text-par">
	참여기간 : 2019년 1월 10일~12월 20일

	</div>
	</div>
</div>
<%@ include file="Bottom.jsp"%>
</body>
</html>