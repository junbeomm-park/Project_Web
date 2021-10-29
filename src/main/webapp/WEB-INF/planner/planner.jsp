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
				width: 85%; 
				height: 100px;
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
			.searchbtn{
				width: 30px;
				height: 30px;
				border:none;
				outline: none;
				cursor: pointer;
				background-color:#f8faff;
				margin-top: 5px;
			}
		</style>
		
	</head>
	<body>
 <% 				ArrayList<PlaceVO> placelist = (ArrayList<PlaceVO>) request.getAttribute("placelist");
	
				int size = placelist.size();
%>  
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
								<form action="/tour/planner/insert.do">
									<!-- modal body -->
									<input type="hidden" name="writer" id="writer" value="${loginOkUser.mem_id}"/>
									<div class="modal-body">
										<div class="form-group">
											<div class="row">
												<div class="col-md-12">
													<label class="col-md-3 mb-1" for="edit-allDay">하루종일</label> 
													<input class='allDayNewEvent' name="allDay" id="edit-allDay" type="checkbox">
												</div>
											</div>
											<div class="row">
												<div class="col-md-12">
													<label class="col-md-3 mb-1" for="edit-title">일정명</label> 
													<input class="inputModal" type="text" name="title" id="edit-title" required="required" />
												</div>
											</div>
											<div class="row">
												<div class="col-md-12">
													<label class="col-md-3 mb-1" for="edit-start">시작</label> 
													<div class="input-group date">
														<input class="inputModal" type="text" name="start_date" id="edit-start" />
														<div class="input-group-addon">
													        <span class="glyphicon glyphicon-th"></span>
													    </div>
													</div>
												</div>
											</div>
											<div class="row">
												<div class="col-md-12">
													<label class="col-md-3 mb-1" for="edit-end">끝</label> 
													<input class="inputModal" type="text" name="end_date" id="edit-end" />
												</div>
											</div>
											<div class="row">
												<div class="col-md-12">
													<label class="col-md-3 mb-1" for="edit-desc">설명</label>
													<textarea rows="4" cols="50" class="inputModal" name="description" id="edit-desc"></textarea>
												</div>
											</div>
										</div>
									</div>
									<!-- modal Footer -->
									<div class="modal-footer addEvent">
										<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
										<button type="submit" class="btn btn-primary" id="save-event" >저장</button>
									</div>
								</form>
									<div class="modal-footer modifyEvent">
	                        			<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
	                        			<button type="button" class="btn btn-danger" id="deleteEvent">삭제</button>
	                        			<button type="button" class="btn btn-primary" id="updateEvent">저장</button>
                    				</div>
                    			</div>
					          </div> <!-- modal-content end -->
					      </div> <!-- modal-dialog end -->
					  </div>	<!-- modal end -->
  		
					<div class="col-md-3">
						<div class="row contentR">
							<div class="well col-xs-12 text-left">
								<form action="/tour/planner/search.do">
									<div class="row">
											<input type="text" id="myInput" onkeyup="myFunction()" name="search" placeholder="관광지 검색">
											<button class="searchbtn" type="submit"><img class="searchbtn" alt="" src="/tour/images/search.png"></button>
									</div>
									<div style="height: 600px; overflow: auto">
									<%		    							
												for(int i = 0; i < placelist.size() ; i++) { 
												PlaceVO place = placelist.get(i);
									%>
										<div class="placebox">
											<div class="placerow">
											<div class="row">
												<div class="col-md-3" style=" margin-right:10px;">
													<img class="placeimg" src="/tour/images/<%= place.getImage()%>"/>
												</div>
												<div class="col-md-8">
													<div class="placename"><%= place.getSpotname() %></div>
													<div class="areaname">&nbsp;&nbsp;<%=place.getCategory() %></div>
													<button class="placebtn" type="submit" id="placebtn" onclick="addPlaceEvent()"><img class="btnimg" alt="" src="/tour/images/plusbtn.PNG"></button>
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
				</div>
		  	</div>	<!-- END Content -->
	</body>
	<!-- <script src="/tour/common/js/planner.js"></script> -->
	  <script src="https://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>
	<script type="text/javascript">
	/**
	 *  Planner main
	 */
	 var calendar = null;
	 var events = [];
	 var writer = $("#writer").val();
	 document.addEventListener('DOMContentLoaded', function() {
	    var calendarEl = document.getElementById('calendar');

	    calendar = new FullCalendar.Calendar(calendarEl, {
			expandRows: true, // 화면에 맞게 높이 재설정
			slotMinTime: '06:00', // Day 캘린더에서 시작 시간
			slotMaxTime: '02:00', // Day 캘린더에서 종료 시간
			// 해더에 표시할 툴바
			headerToolbar: {
				left: 'prev,next today',
				center: 'title',
				right: 'dayGridMonth,timeGridWeek,timeGridDay,listWeek'
			},
			initialView: 'dayGridMonth', // 초기 로드 될때 보이는 캘린더 화면(기본 설정: 달)
			navLinks: true, // 날짜를 선택하면 Day 캘린더나 Week 캘린더로 링크
			editable: true, // 수정 가능 여부
			selectable: true, // 달력 일자 드래그 설정가능
			nowIndicator: true, // 현재 시간 마크
			dayMaxEvents: true, // 이벤트가 오버되면 높이 제한 (+more)
			locale: 'ko', // 한국어 설정
			views: {
			    dayGridMonth: {
			      titleFormat: { month: 'long', year: 'numeric'}
			    },
			    timeGridWeek: {
			      titleFormat: { month: 'long', year: 'numeric', day: 'numeric'}
			    },
			    timeGridDay: {
			      titleFormat: { month: 'long', year: 'numeric', day: 'numeric'}
			    },
			    listWeek: {
			      titleFormat: { month: 'long', year: 'numeric', day: 'numeric'}
			    }
			},
			select: function(info) {
				addEvent(info); // 이벤트 추가 function
		    },
		     eventClick: function(info) {
				editEvent(info); // 이벤트 수정 function
				
			},

			events:function(info, successCallback, failureCallback){
	            $.ajax({
	            	 url: "/tour/planner/list.do",
		              type: "get",
		              data:{"writer" : writer},
	                   success: 
	                       function(data) {
	                           if(data!=null){
	                                   $.each(data, function(index, element) {
	                                         events.push({
	                                        	 title: element.title,
	         		            	             start : element.start_date,
	         		        	        		 end : element.end_date,
	         		        	        		 deacription : element.description,
	         		        	        		 allDay : element.allDay
	                                            });
	                                     }); //.each()
	                               console.log(events);
	                           }//if end                           
	                           successCallback(events);                               
	                       }//success: function end                          
	            }); //ajax end
	        } //events:function end
		
	        // 테스트 이벤트
			
		});
	    
		// 캘린더 랜더링
		calendar.render();

		$(function () {
			$('#datepicker').datepicker({ 
				todayBtn: "linked",
				language: "ko",
				todayHighlight: true,
				format: "yyyy-mm-dd",
			})
		});
	});	
	
		  
	/*
	 * addEvents
	 */
	var addEvent = function(info) {
		var start = moment(info.startStr).format('YYYY-MM-DD');
		var end = moment(info.endStr).format('YYYY-MM-DD');
		
		$('.modal-title').html('새로운 일정');
	    $('#edit-title').val('');
	    $('#edit-start').val(start);
	    $('#edit-end').val(end);
	    $('#edit-desc').val('');
	    $('#edit-allDay').prop('checked', true); // datetimepicker로 시간을 추가할 수 있게되면 수정
	    
	    $('.addEvent').show();
	    $('.modifyEvent').hide();
	    $("#calendarModal").modal('show');	
	    
	    $('#save-event').unbind();
		$('#save-event').on('click', function () {
			var addTitle = $('#edit-title').val()
			var addStart = $('#edit-start').val()
			var addEnd = $('#edit-end').val()
			var allDay=$('#edit-allDay').val()
			calendar.addEvent({
	            title: addTitle,
	            start: addStart,
	            end: addEnd,
	            allDay: allDay
	          });
			$('#edit-allDay').prop('checked', false);
			$("#calendarModal").modal('hide');
		});
		
		$("#edit-start, #edit-end").datepicker({
			format: "yyyy-mm-dd",
			language: "ko",
			autoclose: true
		})
		.on("change", function () {
	    	var fromdate = $(this).val();
	    });
	}

	/*
	 * editEvent
	 */
	var editEvent = function(info) {
		var start = moment(info.event.startStr).format('YYYY-MM-DD');
		var end = moment(info.event.endStr).format('YYYY-MM-DD');
		
		$('.modal-title').html('일정 수정');
	    $('#edit-title').val(info.event.title);
	    $('#edit-start').val(start);
	    $('#edit-end').val(end);
	    $('#edit-desc').val('');
	    $('#edit-allDay').prop('checked', true); // datetimepicker로 시간을 추가할 수 있게되면 수정
	    
	    $('.addEvent').hide();
	    $('.modifyEvent').show();
	    $("#calendarModal").modal('show');
	    
	    $('#updateEvent').unbind();
		$('#updateEvent').on('click', function () {
			info.event.remove();
			var modifyTitle = $('#edit-title').val()
			var modifyStart = $('#edit-start').val()
			var modifyEnd = $('#edit-end').val()
			calendar.addEvent({
	            title: modifyTitle,
	            start: modifyStart,
	            end: modifyEnd,
	            allDay: true
	          });
			
			$("#calendarModal").modal('hide');
		});
		$('#deleteEvent').unbind();
		$('#deleteEvent').on('click', function () {
			info.event.remove();
			$('#edit-allDay').prop('checked', false);
		    $("#calendarModal").modal('hide');
		});
		
		$("#edit-start, #edit-end").datepicker({
			format: "yyyy-mm-dd",
			language: "ko",
			autoclose: true
		})
		.on("change", function () {
	    	var fromdate = $(this).val();
	    });
	}
	
	function addPlaceEvent() {
	   var writer = prompt('id를 입력하세요.');
	   var title = prompt('타이틀을 입력하세요');
	   var start = prompt('YYYY-MM-DD 맞춰서 날짜를 입력하세요.');
	    var end = prompt('YYYY-MM-DD 맞춰서 날짜를 입력하세요.');
	    var description = prompt('설명을 적어주세요.');
	      events.push({
	         writer : writer,
	         title : title,
	         start : start,
	         end : end,
	         description : description,
	         allDay : true
	      }); //push end
	    $.ajax({
	    	url: "/tour/planner/insert.do",
            type: "get",
            data:{"writer" : writer,
          		"title" : title,
          		"start" : start_date,
          		"end" : end_date,
          		"description" : description,
          		"allDay" : allDay
            },  // 컨트롤러로 가서 insert sql 명령어 안에 들어갈 값.
	        success: function(data) {
	            if(data!=null){
	                console.log(events);
	            }//if end                           
	            successCallback(events);
	            alter('일정이 추가되었습니다.')
	        }//success: function end                          
	    }); //ajax end
	} // addPlaceEvent() function end  
	

	</script>
</html>