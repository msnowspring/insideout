<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="Resources/css/bootstrap.min.css">
<style>
	.header{
		margin-top:30px;
		margin-bottom:30px;
	}
	.today{
		padding-top:7px;
	}
	.searchimg {
		width:18px;
		height:18px;
	}
	.loginimg {
		width:30px;
		height:30px;
		float:right;
		margin-top:5px;
		margin-right:15px;
	}
	.menudiv{
		text-align:center;
		padding-top:25px;
	}
	.menuitem {
		padding: 0px 30px 0px 30px;
		font-size:25px;
		font-weight:600;
		color:#000;
		font-align:center;
	}
	.menuitem:hover {
		/* color:#C3A88C; */
		color:#EACC1A;
		text-decoration:none;
	}
	.redmenu {
		color:#AB3839;
	}
	.redmenu:hover {
		color:#F86C6B;
	}
	/* .bcolor {
		background:#888888;
	} */
	.logo {
		width:20px;
		height:20px;
		margin-left:15px;
	}
</style>
</head>
<body>
<script src="Resources/js/bootstrap.min.js"></script>

<header class="header" class="header">
	<div class="row">
		<div class="col-sm-2">
			<img class ="logo" src="imgs/logo.jpg">
		</div>
		<div class="col-sm-5"></div>
		<div class="col-sm-2 today">
			<span> Today with </span>
			<span> 0 </span>
		</div>
		<div class="col-sm-2">
			<div class="input-group mb-3">
				<input type="text" class="form-control" placeholder="Search" aria-label="Search" aria-describedby="button-addon2">
				<div class="input-group-append">
					<button class="btn btn-secondary" type="button"><img class ="searchimg" src="imgs/search.png"></button>
				</div>
			</div>	
		</div>
		<div class="col-sm-1">
			<img class ="loginimg" src="imgs/loginimg.png">
		</div>
	</div>
	<div class="row">
		<div class="col">
			<div class="menudiv">
				<a href="donation.jsp" class="menuitem give" aria-current="false"> 기부 </a>
				<a href="volunteer.jsp" class="menuitem" aria-current="false"> 봉사 </a>
				<a href="campaign.jsp" class="menuitem" aria-current="false"> 캠페인 </a>
				<a href="drank.jsp" class="menuitem" aria-current="false"> 기부순위 </a>
				<a href="gogodonation.jsp" class="menuitem redmenu" aria-current="false"> 기부해요 </a>
			</div>
		</div>
	</div>
</header>
	
</body>
</html>