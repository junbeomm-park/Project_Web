<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="place.PlaceVO"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
		<script src="https://cdn.jsdelivr.net/npm/fullcalendar@5.9.0/main.js"></script>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/fullcalendar@5.9.0/main.css">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/fullcalendar@5.9.0/main.min.css">
		<!-- fuallcalender theme system -->
		<link href='https://use.fontawesome.com/releases/v5.0.6/css/all.css' rel='stylesheet'>
		<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<style type="text/css">
			html, body {
				margin: 0;
				padding: 0;
				font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
				font-size: 14px;
			}
			#map {
				max-width: 900px;
				margin: 40px auto;
				padding: 0 10px;
				height: 700px;
			}
			#datepicker{
				display: flex;
				justify-content: center;
				align-items: center;
			}
			.inputModal {
  				width: 80%;
  				margin-bottom: 10px;
  				margin-left: 15px;
			}
			}
		  	.SavePlanner {
				box-shadow: 0px 0px 20px -8px #276873;
				background:linear-gradient(to bottom, #599bb3 5%, #408c99 100%);
				background-color:#599bb3;
				border-radius:25px;
				display:inline-block;
				cursor:pointer;
				color:#ffffff;
				font-family:Georgia;
				font-size:21px;
				font-weight:bold;
				padding:14px 23px;
				text-decoration:none;
				text-shadow:2px 3px 10px #3d768a;
				margin-right: 200px;
			}
			.SavePlanner:hover {
				background:linear-gradient(to bottom, #408c99 5%, #599bb3 100%);
				background-color:#408c99;
			}
			.SavePlanner:active {
				position:relative;
				top:1px;
			}
			.well {
				margin: 10px;
				padding: 50px;
				background-color: #f8faff;
				box-sizing: content-box;
				text-align: center;
			}
			#myInput {
			  background-image: url('/img/searchicon.png');
			  background-position: 10px 12px;
			  background-repeat: no-repeat;
			  width: 70%;
			  height: 50px;
			  font-size: 16px;
			  padding: 12px 20px 12px 40px;
			  border: 1px solid #cccccc;
			  border-radius: 10px;
			  margin-bottom: 12px;
			  margin-right: 10px;
			  margin-left: 20px;
			}
			.placeimg{
				width: 80px;
				height: 80px;
				
			}
			.placebox{
				margin: 10px;
				border-radius: 10px;
				border: 0.5px solid #bfcdf0;
				width: 95%; 
				height: 120px;
			}
			.placerow{
				margin: 10px;
			}
			.placename{
				font-weight: bold;
				font-size: 12pt;
				padding-left: 12px;
			}
			.areaname{
				font-size: 10pt;
				padding-left: 10px;
				color: gray;
			}
			.placebtn {
				position: absolute; 
				right: 0px; 
				bottom: 0px;
				width: 30px;
				height: 30px;
				border:none;
				outline: none;
				border-radius: 20px;
				cursor: pointer;
			}
			.searchbtn{
				width: 30px;
				height: 30px;
				border:none;
				outline: none;
				cursor: pointer;
				background-color:#f8faff;
				margin-top: 5px;
			}
			.btnimg{
				position: absolute; 
				right: 0px; 
				bottom: 0px;
				width: 30px;
				height: 30px;
				border:none;
				outline: none;
				border-radius: 20px;
				cursor: pointer;
			}
		</style>

	</head>
	<body>
 <% 				ArrayList<PlaceVO> placelist = (ArrayList<PlaceVO>) request.getAttribute("placelist");
	
				int size = placelist.size();
%>  
	<!-- 	  	<div class="hero-wrap js-fullheight" style="background-image: url('/tour/images/bg-Planner.jpg');">
		    	<div class="overlay"></div>
		      	<div class="container">
		        	<div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
		          		<div class="col-md-9 ftco-animate text-center" data-scrollax=" properties: { translateY: '70%' }">
		            		<p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span class="mr-2"><a href="index.html">Home</a></span> <span>Planner</span></p>
		            		<h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Travel Plan</h1>
		          		</div>
	        		</div>
		      	</div>
		    </div> -->
		  	<!-- START Content -->
		  	<div class="container-fluid text-center bg-light" >
		  		<div class="row content">
	  				<div class="col-md-12 well">
	  					<!-- (설정창) -->
	  				</div>
	  			</div>
		  		<div class="row content">
		  			<div class="col-md-3">
			  			<div class="row contentL">
							<div class="col-md-12 well">
								<div id="datepicker"></div>
							</div>
							<div class="col-md-10 well">
								<!-- 여행 계획 -->
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div id='map'></div>
						<!-- modal 추가 -->
					    <div class="modal fade" id="calendarModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
					        <div class="modal-dialog" role="document">
					            <div class="modal-content text-left">
					                <!-- modal header -->
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalLabel">일정을 입력하세요.</h5>
										<button type="button" class="close" data-dismiss="modal" aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>
									<!-- modal body -->
									<div class="modal-body">
										<div class="form-group">
											<div class="row">
												<div class="col-md-12">
													<label class="col-md-3 mb-1" for="edit-allDay">하루종일</label> 
													<input class='allDayNewEvent' id="edit-allDay" type="checkbox">
												</div>
											</div>
											<div class="row">
												<div class="col-md-12">
													<label class="col-md-3 mb-1" for="edit-title">일정명</label> 
													<input class="inputModal" type="text" name="edit-title" id="edit-title" required="required" />
												</div>
											</div>
											<div class="row">
												<div class="col-md-12">
													<label class="col-md-3 mb-1" for="edit-start">시작</label> 
													<input class="inputModal" type="date" name="edit-start" id="edit-start" />
												</div>
											</div>
											<div class="row">
												<div class="col-md-12">
													<label class="col-md-3 mb-1" for="edit-end">끝</label> 
													<input class="inputModal" type="date" name="edit-end" id="edit-end" />
												</div>
											</div>
											<div class="row">
												<div class="col-md-12">
													<label class="col-md-3 mb-1" for="edit-desc">설명</label>
													<textarea rows="4" cols="50" class="inputModal" name="edit-desc" id="edit-desc"></textarea>
												</div>
											</div>
										</div>
									</div>
									<!-- modal Footer -->
									<div class="modal-footer addEvent">
										<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
										<button type="button" class="btn btn-primary" id="save-event">저장</button>
									</div>
									<div class="modal-footer modifyEvent">
	                        			<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
	                        			<button type="button" class="btn btn-danger" id="deleteEvent">삭제</button>
	                        			<button type="button" class="btn btn-primary" id="updateEvent">저장</button>
                    				</div>
					            </div> <!-- modal-content end -->
					        </div> <!-- modal-dialog end -->
					    </div>	<!-- modal end -->
					</div>
   
					<div class="col-md-3">
						<div class="row contentR">
							<div class="well col-xs-12 text-left">
								<form action="/tour/createplan/search.do">
									<div class="row">
											<input type="text" id="myInput" onkeyup="myFunction()" name="search" placeholder="관광지 검색">
											<button class="searchbtn" type="submit"><img class="searchbtn" alt="" src="/tour/images/search.png"></button>
									</div>
									<div style="height: 600px; overflow: auto">
									<%		    							
												for(int i = 0; i < placelist.size() ; i++) { 
												PlaceVO place = placelist.get(i);
									%>
										<div class="placebox" >
											<div class="placerow">
											<div class="row">
												<div class="col-md-3" style=" margin-right:10px;">
													<img class="placeimg" src="/tour/images/<%= place.getImage()%>"/>
												</div>
												
												
												<div class="col-md-8">
													<div class="placename"><%= place.getSpotname() %></div>
													<div class="placeaddr" id="addr">&nbsp;&nbsp;<%=place.getAddr() %></div>
													<button class="placebtn" type="button" id="placebtn<%=i%>" onclick="test('placebtn<%=i%>')">
													<img class="btnimg" alt="" src="/tour/images/plusbtn.PNG"></button>
												</div>
											</div>
											</div>
										</div>
										<%} %>
									</div>
								</form>
							</div>
						</div>
					</div>
					 
				</div>
		  	</div>	<!-- END Content -->
	</body>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d1fec8d8766a8a6cd6d1d7a100d376e0&libraries=services"></script>
		<script type="text/javascript">
		

		
		function test(name){
			alert("=============="+name)
			 addr = $("#"+name).closest("div").find(".placeaddr").text();
			 alert(addr)
			 setMap(addr)
			 $.ajax({
					url:"/tour/tour/getAddr",
					type:"get",
					data:{"addr":addr},
					success:function(data){
						
						$("#test").empty();
						$("#test").append(data)
					}
				})
		}

	
		
	 		setMap()
			function setMap(addr){
				alert("map=>"+addr)
				var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
			    mapOption = { 
			        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
			        level: 4 // 지도의 확대 레벨
			    };
			
			var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
			
			// 주소-좌표 변환 객체를 생성합니다
			for (var i = 0; i < addr.length; i++ ) {
				
				var geocoder = new kakao.maps.services.Geocoder();
			
			
			
	
			
			// 주소로 좌표를 검색합니다
			geocoder.addressSearch(addr, function(result, status) {

		    // 정상적으로 검색이 완료됐으면 
		    if (status === kakao.maps.services.Status.OK) {
		
		    var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

	        // 결과값으로 받은 위치를 마커로 표시합니다
	        var marker = new kakao.maps.Marker({
	            map: map,
	            position: coords
	        });
	
	        // 인포윈도우로 장소에 대한 설명을 표시합니다
	        var infowindow = new kakao.maps.InfoWindow({
	            content: '<div style="width:150px;text-align:center;padding:6px 0;">addr</div>'
	        });
	        infowindow.open(map, marker);
		    
	        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
	        map.setCenter(coords);
	   		 } 
			});      
		}
		}
		

			
		</script>
<!-- 		<script type="text/javascript">
		function placeSelect() {
			alert("선택됨");
			
	          });
		</script> -->
</html>