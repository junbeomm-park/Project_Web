<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<style type="text/css">
			.content{
				margin-bottom: 80px;
			}
			form{
				margin-top: 150px;;
			}
		</style>
	</head>
	<body>
		<div>
			<!-- 이곳에 nav화면을 연결하세요" -->
			<tiles:insertAttribute name="nav"></tiles:insertAttribute>
		</div>
		<form action="/tour/place/tourdetail.do">
<!-- 	   <div class="hero-wrap js-fullheight" style="background-image: url('/tour/images/background-05.jpg');">
	      <div class="overlay"></div>
	      <div class="container">
	        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
	          <div class="col-md-9 ftco-animate text-center" data-scrollax=" properties: { translateY: '70%' }">
	            <p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span>Tour</span></p>
	            <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Tour Information</h1>
	          </div>
	        </div>
	      </div>
	    </div>  -->
		<div class="container">
			<div class="content">
				<!-- 이곳에 content화면을 연결하세요" -->
				<tiles:insertAttribute name="content1"></tiles:insertAttribute>
			</div>
			<div class="content">
				<tiles:insertAttribute name="content2"></tiles:insertAttribute>
			</div>
			<div class="content">
				<tiles:insertAttribute name="content3"></tiles:insertAttribute>
			</div >
			<div class="content">
				<tiles:insertAttribute name="content4"></tiles:insertAttribute>
			</div>
			<div class="content">
				<tiles:insertAttribute name="content5"></tiles:insertAttribute>
			</div>
		</div>
		<div>
			<!-- 이곳에 footer화면을 연결하세요" -->
			<tiles:insertAttribute name="footer"></tiles:insertAttribute>
		</div>
		</form>	
	</body>
</html>




