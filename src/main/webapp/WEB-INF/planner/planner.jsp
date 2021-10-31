<%@page import="planner.PlannerVO"%>
<%@page import="place.PlaceVO"%>
<%@page import="course.CourseVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<!-- Planner CDN -->
		<script src="https://cdn.jsdelivr.net/npm/fullcalendar@5.9.0/main.js"></script>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/fullcalendar@5.9.0/main.css">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/fullcalendar@5.9.0/main.min.css">
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
			
			#datepicker {
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
				background: linear-gradient(to bottom, #599bb3 5%, #408c99 100%);
				background-color: #599bb3;
				border-radius: 25px;
				display: inline-block;
				cursor: pointer;
				color: #ffffff;
				font-family: Georgia;
				font-size: 21px;
				font-weight: bold;
				padding: 14px 23px;
				text-decoration: none;
				text-shadow: 2px 3px 10px #3d768a;
				margin-right: 200px;
			}
			
			.SavePlanner:hover {
				background: linear-gradient(to bottom, #408c99 5%, #599bb3 100%);
				background-color: #408c99;
			}
			
			.SavePlanner:active {
				position: relative;
				top: 1px;
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
			
			.placeimg {
				width: 80px;
				height: 80px;
			}
			
			.placebox {
				margin: 10px;
				border-radius: 10px;
				border: 0.5px solid #bfcdf0;
				width: 85%;
				height: 100px;
			}
			
			.placerow {
				margin: 10px;
			}
			
			.placename {
				font-weight: bold;
				font-size: 12pt;
				padding-left: 12px;
			}
			
			.areaname {
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
				border: none;
				outline: none;
				border-radius: 20px;
				cursor: pointer;
			}
			
			.btnimg {
				position: absolute;
				right: 0px;
				bottom: 0px;
				width: 30px;
				height: 30px;
				border: none;
				outline: none;
				border-radius: 20px;
				cursor: pointer;
			}
			
			.searchbtn {
				width: 30px;
				height: 30px;
				border: none;
				outline: none;
				cursor: pointer;
				background-color: #f8faff;
				margin-top: 5px;
			}
		</style>
	
	</head>
	<body>
		<% ArrayList<PlaceVO> placelist = (ArrayList<PlaceVO>) request.getAttribute("placelist");
			int size = placelist.size(); 
		%>
		<div class="hero-wrap js-fullheight" style="background-image: url('/tour/images/bg-Planner.jpg');">
			<div class="overlay"></div>
			<div class="container">
				<div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
					<div class="col-md-9 ftco-animate text-center" data-scrollax=" properties: { translateY: '70%' }">
						<p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">
							<span class="mr-2"><a href="index.html">Home</a></span>
							<span>Planner</span>
						</p>
						<h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Travel Plan</h1>
					</div> <!-- col-md-9 end -->
				</div> <!-- row no-gutters end -->
			</div> <!-- container end -->
		</div> <!-- hero-wrap js-fullheight end -->
		<!-- START Content -->
		<div class="container-fluid text-center bg-light">
			<div class="row content">
				<div class="col-md-12 well">
					<!-- (설정창) -->
				</div> 
			</div> <!-- content top row end -->
			<div class="row content">
				<div class="col-md-3">
					<div class="row contentL">
						<div class="col-md-12 well">
							<div id="datepicker"></div>
						</div> <!-- datepicker 미니 달력 공간 end -->
						<div class="col-md-10 well">
							<!-- 여행 계획 -->
						</div>
					</div> <!-- row contentL end -->
				</div> <!-- col-md-3 end -->
				<div class="col-md-6">
					<!-- calendar -->
					<div id='calendar'></div> 
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
								<!-- addEvent modal-body -->
								<!-- insert.do form -->
								<form action="/tour/planner/insert.do">
									<!-- modal body -->
									<div class="modal-body addEvent">
										<input type="hidden" name="writer" id="writer" value="${loginOkUser.mem_id}" />
										<div class="form-group">
											<div class="row">
												<div class="col-md-12">
													<label class="col-md-3 mb-1" for="edit-allDay">하루종일</label>
													<input class='allDayNewEvent' name="allDay" id="addEvent-edit-allDay" type="checkbox">
												</div>
											</div>
											<div class="row">
												<div class="col-md-12">
													<label class="col-md-3 mb-1" for="edit-title">일정명</label> 
													<input class="inputModal" type="text" name="title" id="addEvent-edit-title" required="required" />
												</div>
											</div>
											<div class="row">
												<div class="col-md-12">
													<label class="col-md-3 mb-1" for="edit-start">시작</label>
													<div class="input-group date">
														<input class="inputModal" type="text" name="start_date" id="addEvent-edit-start" />
														<div class="input-group-addon">
															<span class="glyphicon glyphicon-th"></span>
														</div>
													</div>
												</div>
											</div>
											<div class="row">
												<div class="col-md-12">
													<label class="col-md-3 mb-1" for="edit-end">끝</label> 
													<input class="inputModal" type="text" name="end_date" id="addEvent-edit-end" />
												</div>
											</div>
											<div class="row">
												<div class="col-md-12">
													<label class="col-md-3 mb-1" for="edit-desc">설명</label>
													<textarea rows="4" cols="50" class="inputModal" name="description" id="addEvent-edit-desc"></textarea>
												</div>
											</div>
										</div>
									</div>
									<!-- modal Footer -->
									<div class="modal-footer addEvent">
										<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
										<button type="submit" class="btn btn-primary" id="save-event">저장</button>
									</div> <!-- modal Footer end -->
								</form> <!-- addEvent form end -->
								<!-- editEvent modal body -->
								<!-- update.do form -->
								<form action="/tour/planner/update.do">
									<div class="modal-body editEvent">
									<input type="hidden" name="writer" id="writer" value="${loginOkUser.mem_id}" />
										<div class="form-group">
											<div class="row">
												<div class="col-md-12">
													<label class="col-md-3 mb-1" for="edit-allDay">하루종일</label> 
													<input class='allDayNewEvent' name="allDay" id="editEvent-edit-allDay" type="checkbox">
												</div>
											</div>
											<div class="row">
												<div class="col-md-12">
													<label class="col-md-3 mb-1" for="edit-title">일정명</label> 
													<input class="inputModal" type="text" name="title" id="editEvent-edit-title" required="required" />
												</div>
											</div>
											<div class="row">
												<div class="col-md-12">
													<label class="col-md-3 mb-1" for="edit-start">시작</label>
													<div class="input-group date">
														<input class="inputModal" type="text" name="start_date" id="editEvent-edit-start" />
														<div class="input-group-addon">
															<span class="glyphicon glyphicon-th"></span>
														</div>
													</div>
												</div>
											</div>
											<div class="row">
												<div class="col-md-12">
													<label class="col-md-3 mb-1" for="editEvent-edit-end">끝</label> 
													<input class="inputModal" type="text" name="end_date" id="editEvent-edit-end" />
												</div>
											</div>
											<div class="row">
												<div class="col-md-12">
													<label class="col-md-3 mb-1" for="editEvent-edit-desc">설명</label>
													<textarea rows="4" cols="50" class="inputModal" name="description" id="editEvent-edit-desc"></textarea>
												</div>
											</div>
										</div>
									</div>
									<!-- editEvent modal Footer -->
									<div class="modal-footer editEvent">
										<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
										<button type="button" class="btn btn-danger" id="deleteEvent" name="deleteEvent">삭제</button>
										<button type="button" class="btn btn-primary" id="updateEvent">저장</button>
									</div> <!-- editEvent modal-footer end -->
								</form> <!-- editEvent form end -->
							</div> <!-- modal-content end -->
						</div> <!-- modal-dialog end -->
					</div>  <!-- modal end -->
				</div>
				<!-- placelist Content -->
				<div class="col-md-3">
					<div class="row contentR">
						<div class="well col-xs-12 text-left">
							<form action="/tour/planner/search.do">
								<div class="row">
									<input type="text" id="myInput" onkeyup="myFunction()" name="search" placeholder="관광지 검색">
									<button class="searchbtn" type="submit">
										<img class="searchbtn" alt="" src="/tour/images/search.png">
									</button>
								</div>
								<div style="height: 600px; overflow: auto">
									<%
									for (int i = 0; i < placelist.size(); i++) {
										PlaceVO place = placelist.get(i);
									%>
									<div class="placebox">
										<div class="placerow">
											<div class="row">
												<div class="col-md-3" style="margin-right: 10px;">
													<img class="placeimg" src="/tour/images/<%=place.getImage()%>" />
												</div>
												<div class="col-md-8">
													<div class="placename"><%=place.getSpotname()%></div>
													<div class="areaname"> &nbsp;&nbsp;<%=place.getCategory()%></div>
													<button class="placebtn" type="button" id="placebtn" onclick="addPlaceEvent()">
														<img class="btnimg" alt="" src="/tour/images/plusbtn.PNG">
													</button>
												</div>
											</div>
										</div>
									</div>
									<%
									}
									%>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div> <!-- END row content -->
		</div><!-- END Content -->
	</body>
	<script src="https://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>
	<script type="text/javascript">
		/* Planner main */
		var calendar = null; // calendar 전역변수 선언
		var events = []; // ajax를 처리하기 위해 빈 배열을 전역변수로 선언
		var writer = $("#writer").val(); // 이벤트 작성자 = 로그인한 사용자의 아이디.
		document.addEventListener('DOMContentLoaded', function() {
			var calendarEl = document.getElementById('calendar');
			calendar = new FullCalendar.Calendar(calendarEl, {
				expandRows : true, // 화면에 맞게 높이 재설정
				slotMinTime : '06:00', // Day 캘린더에서 시작 시간
				slotMaxTime : '02:00', // Day 캘린더에서 종료 시간
				// 해더에 표시할 툴바
				headerToolbar : {
					left : 'prev,next today',
					center : 'title',
					right : 'dayGridMonth,timeGridWeek,timeGridDay,listWeek'
				},
				initialView : 'dayGridMonth', // 초기 로드 될때 보이는 캘린더 화면(기본 설정: 달)
				navLinks : true, // 날짜를 선택하면 Day 캘린더나 Week 캘린더로 링크
				editable : true, // 수정 가능 여부
				selectable : true, // 달력 일자 드래그 설정가능
				nowIndicator : true, // 현재 시간 마크
				dayMaxEvents : true, // 이벤트가 오버되면 높이 제한 (+more)
				locale : 'ko', // 한국어 설정
				views : {
					dayGridMonth : { titleFormat : { month : 'long', year : 'numeric' } },
					timeGridWeek : { titleFormat : { month : 'long', year : 'numeric', day : 'numeric' } },
					timeGridDay : { titleFormat : { month : 'long', year : 'numeric', day : 'numeric' } },
					listWeek : { titleFormat : { month : 'long', year : 'numeric', day : 'numeric' } }
				},
				select : function(info) {
					addEvent(info); // 이벤트 추가 function
				},
				eventClick : function(info) {
					editEvent(info); // 이벤트 수정 function
	
				},
				events : function(info, successCallback, failureCallback) {
					$.ajax({
						url : "/tour/planner/list.do",
						type : "get",
						data : {
							"writer" : writer
						},
						success : function(data) {
							if (data != null) {
								$.each(data, function(index, element) {
									events.push({
										id : element.id,
										title : element.title,
										start : element.start_date,
										end : element.end_date,
										deacription : element.description,
										allDay : element.allDay
									});
								}); // .each() end
								console.log(events);
							}// if end                           
							successCallback(events); 
						}// success: function end                          
					}); // ajax end
				} // events:function end
			}); // calendar 옵션 End
			calendar.render(); // 캘린더 랜더링
			$(function() {
				$('#datepicker').datepicker({
					todayBtn : "linked",
					language : "ko",
					todayHighlight : true,
					format : "yyyy-mm-dd",
				})
			});
		}); /* document ready function end */
		/* addEvents */
		var addEvent = function(info) {
			var start = moment(info.startStr).format('YYYY-MM-DD');
			var end = moment(info.endStr).format('YYYY-MM-DD');
			
			$('.modal-title').html('새로운 일정'); // modal-title
			
			$('#addEvent-edit-title').val(''); // addEvent title input
			$('#addEvent-edit-start').val(start); // addEvent start date input
			$('#addEvent-edit-end').val(end); // addEvent end date input
			$('#addEvent-edit-desc').val(''); // addEvent desc input
			$('#addEvent-edit-allDay').prop('checked', true); 
	
			$('.modal-body.addEvent').show(); // Show addEvent modal-body 
			$('.modal-body.editEvent').hide();
			$('.modal-footer.addEvent').show(); // Show addEvent modal-footer
			$('.modal-footer.editEvent').hide();
			$("#calendarModal").modal('show'); // Show calendarModal
	
			$('#save-event').unbind();
			$('#save-event').on('click', function() {
				var title = $('#addEvent-edit-title').val();
				
				if (start > end) {
		            alert('끝나는 날짜가 앞설 수 없습니다.');
		            return false;
		        }
				if (title === '') {
		            alert('일정명은 필수입니다.');
		            return false;
		        }
				$('#addEvent-edit-allDay').prop('checked', false);
				$("#calendarModal").modal('hide');
			}); // save-event button 
			$("#addEvent-edit-start, #addEvent-edit-end").datepicker({
				format : "yyyy-mm-dd",
				language : "ko",
				autoclose : true
			}).on("change", function() {
				var fromdate = $(this).val();
			});
		} /* addEvents() End */
		/* editEvent */
		var editEvent = function(info) {
			var id = info.event.id;
			var title = info.event.title;
			var start = info.event.startStr;
			var end = info.event.endStr;
			var deacription = info.event.extendedProps.deacription;
			var allDay = info.event.allDay;
			// DB에 저장된 이벤트값을 editEvent 모달에 전달
			
			$('.modal-title').html('일정 수정');  // modal-title
			
			$('#editEvent-edit-title').val(title); // editEvent title input
			$('#editEvent-edit-start').val(start); // addEvent start date input
			$('#editEvent-edit-end').val(end); // addEvent end date input
			$('#editEvent-edit-desc').val(deacription); // addEvent desc input
			$('#editEvent-edit-allDay').prop('checked', true); 
			
			$('.modal-body.addEvent').hide();
			$('.modal-body.editEvent').show(); // Show editEvent modal-body
			$('.modal-footer.addEvent').hide();
			$('.modal-footer.editEvent').show(); // Show editEvent modal-footer
			$("#calendarModal").modal('show'); // Show calendarModal
			
			$('#updateEvent').unbind();
			$('#updateEvent').on('click', function() {
				if (start > end) {
		            alert('끝나는 날짜가 앞설 수 없습니다.');
		            return false;
		        }
				if (title === '') {
		            alert('일정명은 필수입니다.');
		            return false;
		        }
				// update
				$("#calendarModal").modal('hide');
			}); // updateEvent button 
			$('#deleteEvent').unbind();
			$('#deleteEvent').on('click', function() {
				location.href = "/tour/planner/delete.do?id=" + encodeURI(id)
				$('#editEvent-edit-allDay').prop('checked', false);
				$("#calendarModal").modal('hide');
			}); // deleteEvent button 
			$("#editEvent-edit-start, #editEvent-edit-end").datepicker({
				format : "yyyy-mm-dd",
				language : "ko",
				autoclose : true
			}).on("change", function() {
				var fromdate = $(this).val();
			});
		} /* editEvent() End */
		function addPlaceEvent() {
			var Spotname; // 선택한 지역의 이름이 선언되어야한다. var Spotname = ;
			$('.modal-title').html('새로운 일정'); // modal-title
			
			$('#addEvent-edit-title').val(Spotname); // addEvent title input
			$('#addEvent-edit-start').val(''); // addEvent start date input
			$('#addEvent-edit-end').val(''); // addEvent end date input
			$('#addEvent-edit-desc').val(''); // addEvent desc input
			$('#addEvent-edit-allDay').prop('checked', true); 
	
			$('.modal-body.addEvent').show(); // Show addEvent modal-body 
			$('.modal-body.editEvent').hide();
			$('.modal-footer.addEvent').show(); // Show addEvent modal-footer
			$('.modal-footer.editEvent').hide();
			$("#calendarModal").modal('show'); // Show calendarModal
	
			$('#save-event').unbind();
			$('#save-event').on('click', function() {
				var title = $('#addEvent-edit-title').val();
				
				if (start > end) {
		            alert('끝나는 날짜가 앞설 수 없습니다.');
		            return false;
		        }
				if (title === '') {
		            alert('일정명은 필수입니다.');
		            return false;
		        }
				$('#addEvent-edit-allDay').prop('checked', false);
				$("#calendarModal").modal('hide');
			}); // save-event button 
			$("#addEvent-edit-start, #addEvent-edit-end").datepicker({
				format : "yyyy-mm-dd",
				language : "ko",
				autoclose : true
			}).on("change", function() {
				var fromdate = $(this).val();
			});
		} // addPlaceEvent() function end
	</script>
</html>