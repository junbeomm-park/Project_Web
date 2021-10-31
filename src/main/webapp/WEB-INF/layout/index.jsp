<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@page import="place.PlaceVO"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
	<head>
   		<meta charset="utf-8">
    	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	</head>
  <div class="hero-wrap js-fullheight" style="background-image: url('/tour/images/background-02.jpg');">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-start" data-scrollax-parent="true">
          <div class="col-md-9 ftco-animate" data-scrollax=" properties: { translateY: '70%' }">
            <h1 class="mb-4" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><strong>Explore <br></strong> your amazing city</h1>
    
            </div>
        
          </div>
        </div>
      </div>
    </div>
			 <div class="container-fluid" id="searchConF">
			<div class="container my-4">
		<div class="row">
					<div class="col-12 col-sm-8 col-lg-9 mb-4 mb-sm-0">
						<h2 class="mb-4"><strong>지역별</strong> 검색</h2><hr>
						<div class="area-block">
							<div class="container">
								<div class="row">
									<div class="col-lg-5 map-wrap map-block">
										<div id="map" class="" style=""></div>
									
									</div>
									<div class="col-12 col-lg-7 area-select-block px-1 px-lg-5">
										<form action="/tour/place/tour.do" method="get">
											<div class="row">
												<div class="col-8 col-lg-9 pr-1">
													<div class="form-group">
														<select class="form-control" id="areaname" name="areaname">
															<option value="" disabled="" selected="" hidden="">광역시/도</option>
															<option value="">전국</option>
														<option value="서울">서울</option>
														<option value="부산">부산</option>
														<option value="대구">대구</option>
														<option value="인천">인천</option>
														<option value="광주">광주</option>
														<option value="대전">대전</option>
														<option value="울산">울산</option>
														<option value="세종">세종</option>
														<option value="경기">경기</option>
														<option value="강원">강원</option>
														<option value="충북">충북</option>
														<option value="충남">충남</option>
														<option value="경북">경북</option>
														<option value="경남">경남</option>
														<option value="전북">전북</option>
														<option value="전남">전남</option>
														<option value="제주">제주</option>
														</select>
													</div>
													<div class="form-group">
														<select class="form-control" id="sigungu" name="sigungu"><option value="" disabled="" selected="" hidden="">시/군/구</option><option value="">전체</option></select>
													</div>
												</div>
												<div class="col-4 col-lg-3 px-1 text-center">
													<div class="form-group">
														<div class="" style="">
															<button type="submit" class="btn px-3">검색</button>
														</div>
													</div>
												</div>
												
											</div>
										</form>
										<div class="mt-3" id="ingiTable">
											<div class="bolder ingi-title">인기 지역</div>
											<div>
												<table>
													<tbody><tr>
														<td style="cursor:pointer;" onclick="location.href='/search.jsp?searchWords=부산'">부산</td>
														<td style="cursor:pointer;" onclick="location.href='/search.jsp?searchWords=춘천'">춘천</td>
														<td style="cursor:pointer;" onclick="location.href='/search.jsp?searchWords=제주'">제주</td>
													</tr>
													<tr>
														<td style="cursor:pointer;" onclick="location.href='/search.jsp?searchWords=광주'">광주</td>
														<td style="cursor:pointer;" onclick="location.href='/search.jsp?searchWords=거창'">거창</td>
														<td style="cursor:pointer;" onclick="location.href='/search.jsp?searchWords=대구'">대구</td>
													</tr>
												</tbody></table>
											</div>										
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-12 col-sm-4 col-lg-3 ingi-block">
						<div class="ingi-title mt-4 py-1">
							인기검색어
						</div>
						<div class="ingi-words">
						<div style="cursor:pointer;" onclick="location.href='/search.jsp?searchWords=부산'">부산</div>
						<div style="cursor:pointer;" onclick="location.href='/search.jsp?searchWords=진주'">진주</div>
						<div style="cursor:pointer;" onclick="location.href='/search.jsp?searchWords=대구'">대구</div>
						<div style="cursor:pointer;" onclick="location.href='/search.jsp?searchWords=경남'">경남</div>
						<div style="cursor:pointer;" onclick="location.href='/search.jsp?searchWords=경주'">경주</div>
						<div style="cursor:pointer;" onclick="location.href='/search.jsp?searchWords=용산'">용산</div>
						<div style="cursor:pointer;" onclick="location.href='/search.jsp?searchWords=맛집'">맛집</div>
						<div style="cursor:pointer;" onclick="location.href='/search.jsp?searchWords=종로'">종로</div>
						<div style="cursor:pointer;" onclick="location.href='/search.jsp?searchWords=첨성대'">첨성대</div>
						<div style="cursor:pointer;" onclick="location.href='/search.jsp?searchWords=코스'">코스</div>
						<div style="cursor:pointer;" onclick="location.href='/search.jsp?searchWords=레저'">레저</div>
						<div style="cursor:pointer;" onclick="location.href='/search.jsp?searchWords=해수욕장'">해수욕장</div>
						<div style="cursor:pointer;" onclick="location.href='/search.jsp?searchWords=전남'">전남</div>
						<div style="cursor:pointer;" onclick="location.href='/search.jsp?searchWords=통영'">통영</div>
						<div style="cursor:pointer;" onclick="location.href='/search.jsp?searchWords=섬'">섬</div>
						<div style="cursor:pointer;" onclick="location.href='/search.jsp?searchWords=강릉'">강릉</div>
						<div style="cursor:pointer;" onclick="location.href='/search.jsp?searchWords=목포'">목포</div>
						<div style="cursor:pointer;" onclick="location.href='/search.jsp?searchWords=김해'">김해</div>
						<div style="cursor:pointer;" onclick="location.href='/search.jsp?searchWords=태종대'">태종대</div>
						</div>
					</div>
				</div>
			</div>
		</div>
    
    <section class="ftco-section ftco-destination">
    	<div class="container">
    		<div class="row justify-content-start mb-5 pb-3">
          <div class="col-md-7 heading-section ftco-animate">
          	
            <h2 class="mb-4"><strong>인기</strong> 관광지</h2><hr>
          </div>
        </div>

    		<div class="row">
  
    			<div class="col-md-12">
    				<div class="destination-slider owl-carousel ftco-animate">
    					<div class="item">
		    				<div class="destination">
		    					<a href="http://localhost:8088/tour/place/tourdetail.do?spotareaid=7004&state=READ" class="img d-flex justify-content-center align-items-center" style="background-image: url(/tour/images/gaetaesa.jpg  );">
		    						<div class="icon d-flex justify-content-center align-items-center">
		    							<span class="icon-search2"></span>
		    						</div>
		    					</a>
		    					<div class="text p-3">
		    						<h3><a href="#">(논산)개태사</a></h3>
		    						<span class="listing">15 Listing</span>
		    					</div>
		    				</div>
	    				</div>

	    				<div class="item">
		    				<div class="destination">
		    					<a href="http://localhost:8088/tour/place/tourdetail.do?spotareaid=5002&state=READ" class="img d-flex justify-content-center align-items-center" style="background-image: url(/tour/images/jeonju02.jpg  );">
		    						<div class="icon d-flex justify-content-center align-items-center">
		    							<span class="icon-search2"></span>
		    						</div>
		    					</a>
		    					<div class="text p-3">
		    						<h3><a href="#">(전주)한지박물관</a></h3>
		    						<span class="listing">20 Listing</span>
		    					</div>
		    				</div>
	    				</div>
	    				<div class="item">
		    				<div class="destination">
		    					<a href="http://localhost:8088/tour/place/tourdetail.do?spotareaid=1002&state=READ" class="img d-flex justify-content-center align-items-center" style="background-image: url(/tour/images/gangneung01.jpg  );">
		    						<div class="icon d-flex justify-content-center align-items-center">
		    							<span class="icon-search2"></span>
		    						</div>
		    					</a>
		    					<div class="text p-3">
		    						<h3><a href="#">(강릉)참소리박물관</a></h3>
		    						<span class="listing">10 Listing</span>
		    					</div>
		    				</div>
	    				</div>
	    				<div class="item">
		    				<div class="destination">
		    					<a href="http://localhost:8088/tour/place/tourdetail.do?spotareaid=3001&state=READ" class="img d-flex justify-content-center align-items-center" style="background-image: url(/tour/images/kung3001.jpeg);">
		    						<div class="icon d-flex justify-content-center align-items-center">
		    							<span class="icon-search2"></span>
		    						</div>
		    					</a>
		    					<div class="text p-3">
		    						<h3><a href="#">(봉화)다덕약수관광지</a></h3>
		    						<span class="listing">3 Listing</span>
		    					</div>
		    				</div>
	    				</div>
	    				<div class="item">
		    				<div class="destination">
		    					<a href="http://localhost:8088/tour/place/tourdetail.do?spotareaid=7001&state=READ" class="img d-flex justify-content-center align-items-center" style="background-image: url(/tour/images/mok.jpg);">
		    						<div class="icon d-flex justify-content-center align-items-center">
		    							<span class="icon-search2"></span>
		    						</div>
		    					</a>
		    					<div class="text p-3">
		    						<h3><a href="#">(계룡)괴목정</a></h3>
		    						<span class="listing">3 Listing</span>
		    					</div>
		    				</div>
	    				</div>
	    				<div class="item">
		    				<div class="destination">
		    					<a href="http://localhost:8088/tour/place/tourdetail.do?spotareaid=5003&state=READ" class="img d-flex justify-content-center align-items-center" style="background-image: url(/tour/images/jinan01.jpg);">
		    						<div class="icon d-flex justify-content-center align-items-center">
		    							<span class="icon-search2"></span>
		    						</div>
		    					</a>
		    					<div class="text p-3">
		    						<h3><a href="#">(진안)마이산</a></h3>
		    						<span class="listing">3 Listing</span>
		    					</div>
		    				</div>
	    				</div>
    				</div>
    			</div>
    		</div>
    	</div>
    </section>

    <section class="ftco-section bg-light">
    	<div class="container">
				<div class="row justify-content-start mb-5 pb-3">
          <div class="col-md-7 heading-section ftco-animate">
          	
            <h2 class="mb-4"><strong>오늘의 추천코스</strong>&nbsp;&nbsp;&nbsp;&nbsp;"서울도심 - 예술이 빛나다"</h2><hr>
          </div>
        </div>    		
    	</div>
    	<div class="container-fluid">
    		<div class="row">
 
    			<div class="col-sm col-md-6 col-lg ftco-animate">
    				<div class="destination">
    					<a href="http://localhost:8088/tour/place/tourdetail.do?spotareaid=4001&state=READ" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/seoul01.jpg);">
    						<div class="icon d-flex justify-content-center align-items-center">
    							<span class="icon-search2"></span>
    						</div>
    					</a>
    					<div class="text p-3">
    						<div class="d-flex">
    							<div class="one">
		    						<h3><a href="#">(서울)덕수궁미술관</a></h3>
		    						<p class="rate">
		    							<i class="icon-star"></i>
		    							<i class="icon-star"></i>
		    							<i class="icon-star"></i>
		    							<i class="icon-star"></i>
		    							<i class="icon-star-o"></i>
		    							<span>8 Rating</span>
		    						</p>
	    						</div>
	    						
    						</div>
    						<p>국가적 차원에서 현대 미술작품의 수집·보존·전시와 이와 연관된 조사·연구를 하며 국제교류 및 미술활동의 보급을 위해서 설립된 국가를 대표하는 국립 미술관이다. 서울시 종로구 소격동 삼청로의 서울관과 덕수궁 내에 덕수궁관이라는 분관이 위치해 있다.</p>
    						<p class="days"><span>2 days 3 nights</span></p>
    						<hr>
    						<p class="bottom-area d-flex">
    							<span><i class="icon-map-o"></i> 서울특별시 중구 정동 세종대로 99</span> 
    							<span class="ml-auto"><a href="#">Discover</a></span>
    						</p>
    					</div>
    				</div>
    			</div>
    			   			<div class="col-sm col-md-6 col-lg ftco-animate">
    				<div class="destination">
    					<a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/seoul02.jpg);">
    						<div class="icon d-flex justify-content-center align-items-center">
    							<span class="icon-search2"></span>
    						</div>
    					</a>
    					<div class="text p-3">
    						<div class="d-flex">
    							<div class="one">
		    						<h3><a href="#">(서울)새문길 박물관거리</a></h3>
		    						<p class="rate">
		    							<i class="icon-star"></i>
		    							<i class="icon-star"></i>
		    							<i class="icon-star"></i>
		    							<i class="icon-star"></i>
		    							<i class="icon-star-o"></i>
		    							<span>8 Rating</span>
		    						</p>
	    						</div>
	    						
    						</div>
    						<p>새문길 내에 서울역사박물관 등 7개 박물관과 6개의 문화기관이 있는 거리다.</p>
    						<p class="days"><span>2 days 3 nights</span></p>
    						<hr>
    						<p class="bottom-area d-flex">
    							<span><i class="icon-map-o"></i>서울특별시 종로구 사직동 새문안로 55</span> 
    							<span class="ml-auto"><a href="#">Discover</a></span>
    						</p>
    					</div>
    				</div>
    			</div>
    			<div class="col-sm col-md-6 col-lg ftco-animate">
    				<div class="destination">
    					<a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/seoul03.jpg);">
    						<div class="icon d-flex justify-content-center align-items-center">
    							<span class="icon-search2"></span>
    						</div>
    					</a>
    					<div class="text p-3">
    						<div class="d-flex">
    							<div class="one">
		    						<h3><a href="#">(서울)새문길 박물관거리</a></h3>
		    						<p class="rate">
		    							<i class="icon-star"></i>
		    							<i class="icon-star"></i>
		    							<i class="icon-star"></i>
		    							<i class="icon-star"></i>
		    							<i class="icon-star-o"></i>
		    							<span>8 Rating</span>
		    						</p>
	    						</div>
	    						
    						</div>
    						<p>서울시립미술관(SeMA·세마)은 사용자, 매개자, 생산자 모두가 함께하는 공동의 기억을 짓고, 뜻깊은 사회문화적 가치를 일구는 미래를 상상합니다. 서울 전역에 펼쳐진 각 분관들이 시대와 미술의 변화에 조응해 교차하고, 서로를 채우고, 매일 성장하는 "서울형 네트워크 미술관"입니다</p>
    						<p class="days"><span>2 days 3 nights</span></p>
    						<hr>
    						<p class="bottom-area d-flex">
    							<span><i class="icon-map-o"></i> 서울특별시 중구 서소문동 덕수궁길 61</span> 
    							<span class="ml-auto"><a href="#">Discover</a></span>
    						</p>
    					</div>
    				</div>
    			</div>
    			<div class="col-sm col-md-6 col-lg ftco-animate">
    				<div class="destination">
    					<a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/seoul04.jpg);">
    						<div class="icon d-flex justify-content-center align-items-center">
    							<span class="icon-search2"></span>
    						</div>
    					</a>
    					<div class="text p-3">
    						<div class="d-flex">
    							<div class="one">
		    						<h3><a href="#">(서울)정동길</a></h3>
		    						<p class="rate">
		    							<i class="icon-star"></i>
		    							<i class="icon-star"></i>
		    							<i class="icon-star"></i>
		    							<i class="icon-star"></i>
		    							<i class="icon-star-o"></i>
		    							<span>8 Rating</span>
		    						</p>
	    						</div>
	    					
    						</div>
    						<p>너비 18m의 1차선 일방통행도로이다. 서울 시내에서 가장 아름다운 가로로, 유명한 산책길 중의 하나이다. 정동교회 앞 사거리에서 이화여자고등학교 동문 앞을 지나 새문안길에 이르는 구간이다.</p>
    						<p class="days"><span>2 days 3 nights</span></p>
    						<hr>
    						<p class="bottom-area d-flex">
    							<span><i class="icon-map-o"></i> 서울특별시 중구 정동 14-2</span> 
    							<span class="ml-auto"><a href="#">Discover</a></span>
    						</p>
    					</div>
    				</div>
    			</div>
    			<div class="col-sm col-md-6 col-lg ftco-animate">
    				<div class="destination">
    					<a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/seoul05.jpg);">
    						<div class="icon d-flex justify-content-center align-items-center">
    							<span class="icon-search2"></span>
    						</div>
    					</a>
    					<div class="text p-3">
    						<div class="d-flex">
    							<div class="one">
		    						<h3><a href="#">(서울)홍난파 가옥</a></h3>
		    						<p class="rate">
		    							<i class="icon-star"></i>
		    							<i class="icon-star"></i>
		    							<i class="icon-star"></i>
		    							<i class="icon-star"></i>
		    							<i class="icon-star-o"></i>
		    							<span>8 Rating</span>
		    						</p>
	    						</div>
	    						
    						</div>
    						<p>1930년에 독일 선교사가 지은 붉은색 벽돌 벽체에 기와를 얹은 서양식 건물로, 《봉선화》《고향의 봄》 등으로 유명한 작곡가 홍난파(1898~1941)가 6년간 말년을 보낸 집이다.</p>
    						<p class="days"><span>2 days 3 nights</span></p>
    						<hr>
    						<p class="bottom-area d-flex">
    							<span><i class="icon-map-o"></i> 서울특별시 종로구 홍파동 2-16</span> 
    							<span class="ml-auto"><a href="#">Discover</a></span>
    						</p>
    					</div>
    				</div>
    			</div>
    		</div>
    	</div>
    </section>

    <section class="ftco-section ftco-counter img" id="section-counter" style="background-image: url(images/bg_1.jpg);">
    	<div class="container">
    		<div class="row justify-content-center mb-5 pb-3">
          <div class="col-md-7 text-center heading-section heading-section-white ftco-animate">
            <h2 class="mb-4">Some fun facts</h2>
            
          </div>
        </div>
    		<div class="row justify-content-center">
    			<div class="col-md-10">
		    		<div class="row">
		          <div class="col-md-4 d-flex justify-content-center counter-wrap ftco-animate">
		            <div class="block-18 text-center">
		              <div class="text">
		                <strong class="number" data-number="1237">0</strong>
		                <span>Visitors</span>
		              </div>
		            </div>
		          </div>
		          <div class="col-md-4 d-flex justify-content-center counter-wrap ftco-animate">
		            <div class="block-18 text-center">
		              <div class="text">
		                <strong class="number" data-number="77">0</strong>
		                <span>Destination Places</span>
		              </div>
		            </div>
		          </div>
		          <div class="col-md-4 d-flex justify-content-center counter-wrap ftco-animate">
		            <div class="block-18 text-center">
		              <div class="text">
		                <strong class="number" data-number="14">0</strong>
		                <span>Course</span>
		              </div>
		            </div>
		          </div>
		    
		        </div>
	        </div>
        </div>
    	</div>
    </section>



    <section class="ftco-section testimony-section bg-light">
      <div class="container">
        <div class="row justify-content-start">
          <div class="col-md-5 heading-section ftco-animate">
          	
            <h2 class="mb-4 pb-3"><strong>What</strong> Tour Place?</h2>
            <p>저희 Tour place는 국내의 다양한 관광지를 소개합니다.</p>
            <p>관광지의 상세정보뿐만 아니라 관광지별 추천 코스를 제공하며 개인 일정을 계획할 수 있는 플래너 서비스도 제공하고 있습니다.</p>
            <p>고객님이 소중한 추억을 위해 저희 'Tour Place'가 함께 하겠습니다.</p>
            <p><a href="/tour/about.do" class="btn btn-primary btn-outline-primary mt-4 px-4 py-3">Read more</a></p>
          </div>
					<div class="col-md-1"></div>
          <div class="col-md-6 heading-section ftco-animate">
          	
            <h2 class="mb-4 pb-3"><strong>Our</strong> Developer Says</h2>
          	<div class="row ftco-animate">
		          <div class="col-md-12">
		            <div class="carousel-testimony owl-carousel">
		              <div class="item">
		                <div class="testimony-wrap d-flex">
		                  <div class="user-img mb-5" style="background-image: url(images/dasol.png)">
		                    <span class="quote d-flex align-items-center justify-content-center">
		                      <i class="icon-quote-left"></i>
		                    </span>
		                  </div>
		                  <div class="text ml-md-4">
		                    <p class="mb-5">자바를 배우고 첫 프로젝트로 시작했을때는 타 사이트 못지않게 구현하고 싶은 방법이 많았다.
비번의 암호화나 ,특수문자 기호 하나는 포함 8~ 13자리까지만 가능하도록 하기 외에도
다른 인증방법(전화인증, 주민번호 인증) 및 주소입력(시 군 구 선택후) 상세주소 입력까지 구현해보고 싶은 생각은 많이 했으나
실질적으로 하다보니 실용성 위주와 정말 필요한 정보만 입력한것 말고는 많이 부족하다는것도 느끼면서 프로젝트를 마치게 되어 아쉬웠다.
처음에는 쉽고 빠르게 나갈거라 생각했던 개인정보를 입력하는 회원가입 페이지만으로도 많은 코드들이 들어가고 분석하는대 시간이 걸리면서 늦어졌는대
실제 사용되고 있는 사이트에서는 어떠한 구조를 갖고 있을지 전혀 예상이 가질 않았다. 생각한것만큼 많이 구현하지는 못했지만 그래도 해봤다는것에 만족하면서
이번 프로젝트를 하면서 많은 고생을 한 팀장 준범님, 미희님, 사랑님 그리고 구조이해에 도움을 많이 주신 김서연 강사님까지 모든분들에게 감사드립니다.</p>
		                    <p class="name">Dasol Lee</p>
		                    
		                  </div>
		                </div>
		              </div>
		              <div class="item">
		                <div class="testimony-wrap d-flex">
		                  <div class="user-img mb-5" style="background-image: url(images/junbeom.png)">
		                    <span class="quote d-flex align-items-center justify-content-center">
		                      <i class="icon-quote-left"></i>
		                    </span>
		                  </div>
		                  <div class="text ml-md-4">
		                    <p class="mb-5">첫 프로젝트 팀이 짜여지고 어수선한 분위기에서 팀장을 맡게 되었을때 정말 많은 고민과 부담감이 있었다. '내가 잘 이끌수 있을까? 내가 제일 많이 부족하지 않을까? 지금이라도 팀장 못하겠다고 말을할까 ?' 라는 온갖 생각들이 스쳐갔었다. 그래서 프로젝트 초반 매우 소극적이었고 판단을 잘 못내렸다. 하지만 시간이 지날 수록 팀원들과 많은 얘기를 나누고 프로젝트외의 수업내용등을 서로 공유하면서 적극적으로 참여하게 됬으며, 심지어 욕심까지 났다. 더 나아가 우리 조원들에게 피해를 안주려고 수업한 내용을 복습, 될 때까지 복습, 선생님이 그날 내주신 과제를 무조건 소화 하려고 복습을 했다. 아직 많이 부족하지만 이러한 과정이 없었다면 프로젝트 진행에 어려움이 있었을 거라 생각한다. 완성 하지 못한 기능이 있지만 아쉽지만 프로젝트의 중요성을 깨닫게 되었다.
							그리고 2달 여 동안 같이 고생한 우리 다솔님, 미희님, 사랑님 정말 너무 고생 많았고 끝까지 믿고 따라와줘서 좋은 추억을 남기게 되어 감사의 말씀을 드리고 싶다. 그리고 늦은 밤, 주말까지
							질문을 받아주시고 친절히 답장을 해주신 
							김서연 선생님, 말로 표현할 수 없는 감사의
							말씀을 드립니다.</p>
		                    <p class="name">Junbeom Park</p>
		                    
		                  </div>
		                </div>
		              </div>
		              <div class="item">
		                <div class="testimony-wrap d-flex">
		                  <div class="user-img mb-5" style="background-image: url(images/mihee.png)">
		                    <span class="quote d-flex align-items-center justify-content-center">
		                      <i class="icon-quote-left"></i>
		                    </span>
		                  </div>
		                  <div class="text ml-md-4">
		                    <p class="mb-5">처음으로 프로그래밍 언어를 배우면서 스스로 이런 기능들을 다 구현할 수 있을까 걱정이 많았습니다. 프로젝트를 진행하면서도 이론적으로 배우는 것과 실제로 활용하여 기능을 구현하는 것은 굉장히 다르다는 것을 느꼈습니다. 팀원들과 협업하며 처음 방향성과는 달라진 부분도 있어 아쉽기도 하지만, 생각했던 기능들은 잘 구현해 낸 것 같아 뿌듯한 경험이었습니다. 이번 프로젝트로 한층 더 성장할 수 있었고 함께 한 팀원들과 도움 주신 강사님께 정말 감사합니다.</p>
		                    <p class="name">Mihee Lee</p>
		                    
		                  </div>
		                </div>
		              </div>
		               <div class="item">
		                <div class="testimony-wrap d-flex">
		                  <div class="user-img mb-5" style="background-image: url(images/sarang.jpg)">
		                    <span class="quote d-flex align-items-center justify-content-center">
		                      <i class="icon-quote-left"></i>
		                    </span>
		                  </div>
		                  <div class="text ml-md-4">
		                    <p class="mb-5">일단, 지금까지 써왔던 웹사이트들을 다시 보게 되는 계기가 되었다. 그리고 처음 해보는 것이 너무 많았기에, 개인적으로는 '더 잘할 수 있었을 것 같은데'라는 생각이 들어서 조금 아쉬웠다. 하지만, 생에 첫 프로젝트를 정말 운이 좋게도 좋은 팀원들과 선생님을 만나, 무사히 끝마칠 수 있었다는 것에 감사한다.</p>
		                    <p class="name">Sarang Kim</p>
		                    
		                  </div>
		                </div>
		              </div>
		            </div>
		          </div>
		        </div>
          </div>
        </div>
      </div>
    </section>


		<section class="ftco-section-parallax">
      <div class="parallax-img d-flex align-items-center">
        <div class="container">
          <div class="row d-flex justify-content-center">
            <div class="col-md-7 text-center heading-section heading-section-white ftco-animate">
              <h2>Subcribe to our Newsletter</h2>
              
              <div class="row d-flex justify-content-center mt-5">
                <div class="col-md-8">
                  <form action="#" class="subscribe-form">
                    <div class="form-group d-flex">
                      <input type="text" class="form-control" placeholder="Enter email address">
                      <input type="submit" value="Subscribe" class="submit px-3">
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>




	    <!-- map 불러오기 -->
	 <script>
			$(document).ready(sigunguChange);
			$("#area").change(sigunguChange);
			
			function sigunguChange() {
				var selectedMetropol2 = $("#area").val();
				
				var content = "";
				//console.log(selectedMetropol2);
				$.ajax({
					url : "/web-semi-project/ajax/ajaxStateCity.jsp",
					data: {"metropol2":selectedMetropol2},
					type : 'get',
					success : function(data) {
						//console.log(data);
						var dataSub = data.substr(2, data.length-4);
						var dataSubSp = dataSub.split('}, {');
						
						content += "<option value='' disabled selected hidden>시/군/구</option>";
						content += "<option value=''>전체</option>";
						for (var i=1; i<dataSubSp.length; i++) {
							var dataSubSpSp = dataSubSp[i].split(', ');
							var stateCity = dataSubSpSp[0].split('=');
							var sigunguCode = dataSubSpSp[1].split('=');
							//console.log(dataSubSp[i]);
							content += "<option class='' value='"+stateCity[1]+"'>"+stateCity[1]+"</option>";
						}
						$('#sigungu').html(content);
					}
				})
				$("#sigungu").removeClass('select-option');
			}
			</script>
			
			<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d1fec8d8766a8a6cd6d1d7a100d376e0&libraries=services"></script>
			<script> // map 불러오기
			document.addEventListener('DOMContentLoaded', function () {
				var GEBImap = document.getElementById('map');
				var maploadDebounce = null;
				
				function mapload() {
					if (maploadDebounce) {
						clearTimeout(maploadDebounce);
					}
					
					maploadDebounce = setTimeout(function () {
						//console.log(window.innerWidth);
						//console.log(GEBImap);
						
						if ( window.innerWidth >= 992 ) {
							//console.log("992 이상");
							while ( GEBImap.hasChildNodes() ) { GEBImap.removeChild( GEBImap.firstChild ); }
							setMap();
						} else if ( window.innerWidth < 992 ) {
							//console.log("992 미만");
							while ( GEBImap.hasChildNodes() ) { GEBImap.removeChild( GEBImap.firstChild ); }
						}
					}, 100);
					
				}
				
				window.addEventListener('resize', mapload);
				window.addEventListener('orientationChange', mapload);
				window.addEventListener('load', mapload);
			});
			
			function setMap() {
				var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
				mapOption = {
					center: new kakao.maps.LatLng(35.9, 127.75), // 지도의 중심좌표
					level: 14 // 지도의 확대 레벨
				};
				
				kakao.maps.disableHD();
				var map = new kakao.maps.Map(mapContainer, mapOption),
					customOverlay = new kakao.maps.CustomOverlay({}),
					infowindow = new kakao.maps.InfoWindow({removable: true});	
					
				// 마우스 드래그와 모바일 터치를 이용한 지도 이동을 막는다
				map.setDraggable(false);		
		
				// 마우스 휠과 모바일 터치를 이용한 지도 확대, 축소를 막는다
				map.setZoomable(false);   
				
				DrawPolygon();
				
				function DrawPolygon() {
					$.getJSON("http://localhost:8088/web-semi-project/tour_place/metropolygon.json", function(geojson) {
						var data = geojson.features;
						var name = '';
						var code = '';
						
						$.each(data, function(index, val) {
							name = val.properties.CTP_KOR_NM;
							code = val.properties.CTPRVN_CD;
							
							if (val.geometry.type == "MultiPolygon") {
								displayArea(name, code, val.geometry.coordinates, true);
							} else {
								displayArea(name, code, val.geometry.coordinates, false);
							}
						});
					});
				}
				
				function makePolygon(coordinates) {
					var polygonPath = [];
					
					$.each(coordinates[0], function(index, coordinate) {
						polygonPath.push(new kakao.maps.LatLng(coordinate[1], coordinate[0]));
					});
					
					return new kakao.maps.Polygon({
						path: polygonPath,
						strokeWeight: 1,
						strokeColor: '#ababab',
						strokeOpacity: 1,
						fillColor: '#ffffff',
						fillOpacity: 1
					});
				}
				
				function makeMultiPolygon(coordinates) {
					var polygonPath = [];
					
					$.each(coordinates, function(index, val2) {
						var coordinates2 = [];
						
						$.each(val2, function(index2, coordinate) {
							coordinates2.push(new kakao.maps.LatLng(coordinate[1], coordinate[0]));
						});
						
						polygonPath.push(coordinates2);
					});
					
					return new kakao.maps.Polygon({
						path: polygonPath,
						strokeWeight: 1,
						strokeColor: '#ababab',
						strokeOpacity: 1,
						fillColor: '#ffffff',
						fillOpacity: 1
					});
				}
				
				function displayArea(name, code, coordinates, multi) {
					var polygon;
					var metName = name;
					if (multi) {
						polygon = makeMultiPolygon(coordinates);
					} else {
						polygon = makePolygon(coordinates);
					}
					
					polygon.setMap(map);
					
					// 지역명을 표시하는 커스텀오버레이를 지도위에 표시합니다
					kakao.maps.event.addListener(polygon, 'mouseover', function(mouseEvent) {
						polygon.setOptions({fillColor: '#a1afc1'});
						
						customOverlay.setContent('<div class="area">' + metName + '</div>');
						customOverlay.setPosition(mouseEvent.latLng); 
						customOverlay.setMap(map);
					});
					
					// 다각형에 mousemove 이벤트를 등록하고 이벤트가 발생하면 커스텀 오버레이의 위치를 변경
					kakao.maps.event.addListener(polygon, 'mousemove', function(mouseEvent) {
						customOverlay.setPosition(mouseEvent.latLng); 
					});
		
					// 다각형에 mouseout 이벤트를 등록하고 이벤트가 발생하면 폴리곤의 채움색을 원래색으로 변경
					// 커스텀 오버레이를 지도에서 제거합니다 
					kakao.maps.event.addListener(polygon, 'mouseout', function() {
						polygon.setOptions({fillColor: '#ffffff'});
						customOverlay.setMap(null);
					}); 
					
					// 다각형에 click 이벤트를 등록하고 이벤트가 발생하면 페이지 이동
					kakao.maps.event.addListener(polygon, 'click', function(mouseEvent) {
						location.href='/tour/place/tour.do?category='+ metName;
					});
				}	
			}	
	</script> 
	</body>
</html>
  

  
    
  