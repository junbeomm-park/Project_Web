<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
	<head>
   		<meta charset="UTF-8">
    	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    	<link rel="stylesheet" href="/tour/common/css/review.css">
	</head>
  <body>
    <form action="/tour/place/tourdetail.do">
    <div class="hero-wrap js-fullheight" style="background-image: url('/tour/images/background-03.jpg');">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
          <div class="col-md-9 ftco-animate text-center" data-scrollax=" properties: { translateY: '70%' }">
            <p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span>Tour</span></p>
            <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Tour Information</h1>
          </div>
        </div>
      </div>
    </div>
	  <section class="ftco-section ftco-degree-bg">
      <div class="container">
				<div style="border:2px solid blue; width:100%; height:300px; font-size: 20pt; font-weight: bold;">관광지사진</div>
		      	<div style="border:2px solid blue; width:100%; height:300px; font-size: 20pt; font-weight: bold;">관광지 상세정보</div>
		      	<div style="border:2px solid blue; width:100%; height:300px; font-size: 20pt; font-weight: bold;">날씨정보</div>
		      	<%-- <jsp:include page="map.jsp"></jsp:include> --%>
		      	<div style="border:2px solid blue; width:100%; height:300px; font-size: 20pt; font-weight: bold;">추천 관광코스</div>
		      	<div style="border:2px solid blue; width:100%; height:300px; font-size: 20pt; font-weight: bold;">별점&후기 리스트</div>
		  		<div class="review">
		  			<div class="star-rating" onlaod="setReview()">
						<input type="radio" id="5-stars" name="rating" value="5" v-model="ratings"/>
						<label for="5-stars" class="star pr-4">★</label>
						<input type="radio" id="4-stars" name="rating" value="4" v-model="ratings"/>
						<label for="4-stars" class="star">★</label>
						<input type="radio" id="3-stars" name="rating" value="3" v-model="ratings"/>
						<label for="3-stars" class="star">★</label>
						<input type="radio" id="2-stars" name="rating" value="2" v-model="ratings"/>
						<label for="2-stars" class="star">★</label>
						<input type="radio" id="1-star" name="rating" value="1" v-model="ratings" />
						<label for="1-star" class="star">★</label>
					</div>
					<div class="review_contents">
					   	<input type="text" class="review_textarea"/>
					</div>   
					<div class="cmd">
						<input type="button" name="save" id="save" value="등록하기">
					</div>
				</div>	
    	</div>
    	</section>

  
	</form>
  </body>
</html>
