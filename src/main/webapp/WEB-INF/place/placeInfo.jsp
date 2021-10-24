<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" href="/tour/common/css/placeInfo.css">
    	<script>
    </script>
    </head>
	<body>
		<section>
		<div class="container">
			<div class="placename">${place.spotname}</div>
			<div class="slider">
			    <input type="radio" name="slide" id="slide1" checked>
			    <input type="radio" name="slide" id="slide2">
			    <input type="radio" name="slide" id="slide3">
			    <ul id="imgholder" class="imgs">
			        <li><img src="/tour/images/${place.image}"></li>
			        <li><img src="/tour/images/jeonju01.jpg"></li>
			        <li><img src="/tour/images/jeonju02.jpg"></li>
			    </ul>
			    <div class="bullets">
			        <label for="slide1">&nbsp;</label>
			        <label for="slide2">&nbsp;</label>
			        <label for="slide3">&nbsp;</label>
			    </div>
			</div>   			
<%-- 			<div id="myCarousel" class="carousel slide" data-ride="carousel" style="width:100%; height:500px;">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
				</ol>

				<!-- Wrapper for slides -->
				<div class="carousel-inner" role="listbox">
					<div class="item active">
						<img src="/tour/images/${place.image}" alt="Image" style="width:100%; height:500px;">
					</div>
					<div class="item">
						<img src="/tour/images/jeonju01.jpg" alt="Image" style="width:100%; height:500px;">
					</div>
					<div class="item">
						<img src="/tour/images/jeonju02.jpg" alt="Image" style="width:100%; height:500px;">
					</div>
				</div>
				
				<!-- Left and right controls -->
					<a class="left carousel-control" href="#myCarousel" role="button"
						data-slide="prev"> <span
						class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a> <a class="right carousel-control" href="#myCarousel" role="button"
						data-slide="next"> <span
						class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>
			</div> --%>
			<div class="info">
				<div class="infonav">상세정보</div>
				<table>
					<tr>
						<td id="head" class="col-sm-1">지역</td>
						<td class="col-sm-6">${place.category}&nbsp;${place.spotareaname}</td>
					</tr>
					<tr>
						<td id="head" class="col-sm-1">주소</td>
						<td class="col-sm-6">${place.addr}</td>
					</tr>
					<tr>
						<td id="head" class="col-sm-1">소개</td>
						<td class="col-sm-6">${place.content}</td>
					</tr>
				</table>
			</div>
		</div>
		</section>
	</body>
</html>