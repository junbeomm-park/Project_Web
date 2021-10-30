<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<style type="text/css">
			.title{
			font-size: 40pt;
			color:#4181cf;
			font-weight: bold;
			magrin: 20px;
		}
		.detail{
		 	font-size: 15pt;
		 	color: #6b6b6b;
		 	font-weight: bold;
		 	margin-bottom: 70px;
		 	
		}
		.check{
			width: 30px;
			height: 30px;
			margin-right: 20px;
		}
		.list {
			font-size: 13pt;
			font-weight: bold;
		}
		.infoimg{
			width: 200px;
			height: 200px;
			margin-left: 40px;
			margin-right: 40px;
		}
		.listhead{
			font-size: 20pt;
			font-weight: bold;
			margin-bottom: 30px;
			padding-bottom : 10px;
			border-bottom: 1px solid #b1b1b1;
		}
		.box{
			margin: 80px;
			margin-bottom: 100px;
		}
	</style>
	
</head>

<body>
	<form action="/tour/about/about.do">
		<div class="hero-wrap js-fullheight"
			style="background-image: url('images/background-01.jpg');">
			<div class="overlay"></div>
			<div class="container">
				<div
					class="row no-gutters slider-text js-fullheight align-items-center justify-content-center"
					data-scrollax-parent="true">
					<div class="col-md-9 text-center ftco-animate"
						data-scrollax=" properties: { translateY: '70%' }">
						<p class="breadcrumbs"
							data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">
							<span class="mr-2"><a href="index.do">Home</a></span> <span>About</span>
						</p>
						<h1 class="mb-3 bread"
							data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">About
							Us</h1>
					</div>
				</div>
			</div>
		</div>

		<section class="ftco-section">
			<div class="container">
						<div class="title">
							Tour Place	
						</div>
						<div class="detail">
							저희 Tour place는 국내의 다양한 관광지를 소개합니다.<br/>
							관광지의 상세정보뿐만 아니라 관광지별 추천 코스를 제공하며 개인 일정을 계획할 수 있는 플래너 서비스도 제공하고 있습니다.<br/>
							고객님이 소중한 추억을 위해 저희 'Tour Place'가 함께 하겠습니다.
						</div>	
								<div class="box">
 									<div class="row">
											<div class="col-md-4">
												<img class="infoimg" alt="" src="/tour/images/placemap.png">
											</div>
											<div class="col-md-8">
												<h2 class="listhead"> 관광지 정보</h2>
												<p class="list"><img class="check" src="/tour/images/check.jpg">관광지 이미지</p>
												<p class="list"><img class="check" src="/tour/images/check.jpg">관광지 위치 및 지도</p>
												<p class="list"><img class="check" src="/tour/images/check.jpg">관광지별 상세 정보</p>
											</div>
										</div>
									</div>
									<div class="box">
										<div class="row">
											<div class="col-md-8">
												<h2 class="listhead"> 추천 코스</h2>
												<p class="list"><img class="check" src="/tour/images/check.jpg">관광지 지역별 추천코스</p>
												<p class="list"><img class="check" src="/tour/images/check.jpg">관광지별 회원 별점 및 review</p>
											</div>
											<div class="col-md-4">
												<img class="infoimg" alt="" src="/tour/images/coursemap.png">
											</div>
										</div>
									</div>
									<div class="box">
										<div class="row">
											<div class="col-md-4">
												<img class="infoimg" alt="" src="/tour/images/calendar.png">
											</div>
											<div class="col-md-8">
												<h2 class="listhead"> 여행 Planner</h2>
												<p class="list"><img class="check" src="/tour/images/check.jpg">개인별 여행 계획</p>
												<p class="list"><img class="check" src="/tour/images/check.jpg">월별, 주별, 일별 planner 기능</p>
												<p class="list"><img class="check" src="/tour/images/check.jpg">관광지 추가 기능</p>
											</div>
										</div>
									</div>
			</div>

	</form>
</body>
</html>