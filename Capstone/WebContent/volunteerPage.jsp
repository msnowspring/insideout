<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="Resources/css/bootstrap.min.css">
<link rel="shortcut icon" href="imgs/favicon.ico" >
<link rel="icon" href="favicon.ico" >
<title>Insert title here</title>
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
      outline-color: #E5CF51;
	}
</style>
</head>
<body>
<%@ include file="Top.jsp" %>

<div id="container">
	<div class="collect_wrap">
		<div class="collect_content">
			<a href="#" class="theme" style="text-decoration:none">봉사  &gt; 분류</a>
			<h3 class="tit">재가장애인 '가을나들이' 자원봉사자 모집 안내 필요</h3>
			<div class="tab_cont">
				<div class="t_group">
					<dl style="margin:0;">
						<dt>신청/모집 인원</dt> <dd>15/ 0</dd>
					</dl>
				</div>
				<div class="t_group">
					<dl style="margin:0;">
						<dt>활동기간</dt> <dd>2019-10-17~ 2019-10-17</dd>
					</dl>
				</div>
				<div class="t_group">
					<dl>
						<dt>봉사활동처</dt> <dd>세종시장애인복지관</dd>
					</dl>
				</div>
				<p style="margin:20px 0 0 0">
					재가장애인 '가을 나들이'에 함께 해 주실 자원봉사자를 모집합니다. <br>
					재가장애인의 문화활동을 지원하기 위한 목적으로 가을 맞이 '나들이'를 실시합니다. <br>
					이에 함께 해 주실 자원봉사자를 아래와 같이 모집하오니 많은 관심과 참여 바랍니다. <br><br>
					1. 일시: 2019년 10월 17일(목요일) 08:30~18:00 <br>
					2. 장소: 충북 단양군 일원(다누리 아쿠아리움, 충주호 유람선 등) <br>
					3. 재가장애인 참여 인원: 60명 <br>
					4. 자원봉사자 모집 인원: 15명<br>
					5. 모집 기간: 2019년 10월10일부터 2019년 10월 15일 13시까지 <br>
					6. 담당자: 조윤한 사회복지사(070-4240-7457) 
				</p>
			</div>
		</div>
		<div class="collect_side">
			<div class="side_tit">자원봉사자 참여 신청</div>
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
			<div class="t_group">
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