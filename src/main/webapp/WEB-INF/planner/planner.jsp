<%@page import="place.PlaceVO"%>
<%@page import="course.CourseVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
		<script src="https://cdn.jsdelivr.net/npm/fullcalendar@5.9.0/main.js"></script>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/fullcalendar@5.9.0/main.css">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/fullcalendar@5.9.0/main.min.css">
		<!-- fuallcalender theme system -->
		<link href='https://use.fontawesome.com/releases/v5.0.6/css/all.css' rel='stylesheet'>
		<style type="text/css">
			html, body {
				margin: 0;
				padding: 0;
				font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
				font-size: 14px;
			}
			#calendar {
				max-width: 900px;
				margin: 40px auto;
				padding: 0 10px;
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
			  width: 90%;
			  font-size: 16px;
			  padding: 12px 20px 12px 40px;
			  border: 1px solid #cccccc;
			  border-radius: 10px;
			  margin-bottom: 12px;
			  margin-right: 20px;
			}
			
		</style>
	</head>
	<body>
 <% 				ArrayList<PlaceVO> placelist = (ArrayList<PlaceVO>) request.getAttribute("placelist");
	
				int size = placelist.size();
%>  
		<form action="/tour/planner.do">
		  	<div class="hero-wrap js-fullheight" style="background-image: url('/tour/images/bg-Planner.jpg');">
		    	<div class="overlay"></div>
		      	<div class="container">
		        	<div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
		          		<div class="col-md-9 ftco-animate text-center" data-scrollax=" properties: { translateY: '70%' }">
		            		<p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span class="mr-2"><a href="index.html">Home</a></span> <span>Planner</span></p>
		            		<h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Travel Plan</h1>
		          		</div>
	        		</div>
		      	</div>
		    </div>
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
						<div id='calendar'></div>
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
								<input type="text" id="myInput" onkeyup="myFunction()" placeholder="강원도 강릉 여행">


								<ul id="myUL">
								<%		    							
											for(int i = 0; i < placelist.size() ; i++) { 
											PlaceVO place = placelist.get(i);
%>
								  <li><a href="#"> <%= place.getSpotname() %> </a></li>
								  <%} %>
								</ul>
							</div>
						</div>
					</div>
					 
				</div>
		  	</div>	<!-- END Content -->
		</form>
	</body>
	<script src="/tour/common/js/planner.js"></script>
</html>