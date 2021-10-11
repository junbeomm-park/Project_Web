<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
			#calendar.fc-unthemed {
		    font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
		  	}
		</style>
	</head>
	<body>
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
  					<!-- (테마 변경 설정창) -->
  				</div>
  			</div>
	  		<div class="row content">
	  			<div class="col-md-3">
		  			<div class="row contentL">
						<div class="col-md-10 well">
							<!-- (미니 달력) -->
						</div>
						<div class="col-md-10 well">
							<!-- (계획 리스트) -->
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<div id='calendar'></div>
					<!-- modal 추가 -->
				    <div class="modal fade" id="calendarModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
				        <div class="modal-dialog" role="document">
				            <div class="modal-content">
				                <div class="modal-header">
				                    <h5 class="modal-title" id="exampleModalLabel">일정을 입력하세요.</h5>
				                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
				                        <span aria-hidden="true">&times;</span>
				                    </button>
				                </div>
				                <div class="modal-body">
				                    <div class="form-group">
				                        <div class="row">
				                            <div class="col-xs-12">
				                                <label class="col-xs-4" for="edit-allDay">하루종일</label>
				                                <input class='allDayNewEvent' id="edit-allDay" type="checkbox"></label>
				                            </div>
				                        </div>
				                        <div class="row">
				                            <div class="col-xs-12">
				                                <label class="col-xs-4" for="edit-title">일정명</label>
				                                <input class="inputModal" type="text" name="edit-title" id="edit-title" required="required" />
				                            </div>
				                        </div>
				                        <div class="row">
				                            <div class="col-xs-12">
				                                <label class="col-xs-4" for="edit-start">시작</label>
				                                <input class="inputModal" type="text" name="edit-start" id="edit-start" />
				                            </div>
				                        </div>
				                        <div class="row">
				                            <div class="col-xs-12">
				                                <label class="col-xs-4" for="edit-end">끝</label>
				                                <input class="inputModal" type="text" name="edit-end" id="edit-end" />
				                            </div>
				                        </div>
				                        <div class="row">
				                            <div class="col-xs-12">
				                                <label class="col-xs-4" for="edit-color">색상</label>
				                                <select class="inputModal" name="color" id="edit-color">
				                                    <option value="#D25565" style="color:#D25565;">빨간색</option>
				                                    <option value="#9775fa" style="color:#9775fa;">보라색</option>
				                                    <option value="#ffa94d" style="color:#ffa94d;">주황색</option>
				                                    <option value="#74c0fc" style="color:#74c0fc;">파란색</option>
				                                    <option value="#f06595" style="color:#f06595;">핑크색</option>
				                                    <option value="#63e6be" style="color:#63e6be;">연두색</option>
				                                    <option value="#a9e34b" style="color:#a9e34b;">초록색</option>
				                                    <option value="#4d638c" style="color:#4d638c;">남색</option>
				                                    <option value="#495057" style="color:#495057;">검정색</option>
				                                </select>
				                            </div>
				                        </div>
				                        <div class="row">
				                            <div class="col-xs-12">
				                                <label class="col-xs-4" for="edit-desc">설명</label>
				                                <textarea rows="4" cols="50" class="inputModal" name="edit-desc" id="edit-desc"></textarea>
				                            </div>
				                        </div>
				                    </div>
				                </div>
				                <div class="modal-footer modalBtnContainer-addEvent">
								    <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
								    <button type="button" class="btn btn-primary" id="save-event">저장</button>
								</div>
				            </div> <!-- modal-content end -->
				        </div> <!-- modal-dialog end -->
				    </div>	<!-- modal end -->
				</div>
				<div class="col-md-3">
					<div class="row contentR">
						<div class="well">
							<!-- (코스 검색창) -->
						</div>
					</div>
				</div>
			</div>
	  	</div>	<!-- END Content -->
	  	
</form>
</body>
</html>