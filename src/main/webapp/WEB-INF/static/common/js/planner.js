/**
 * 
 */
 var calendar = null;
 
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
		// 테스트 이벤트
		events: [
			{
				title: 'All Day Event',
				start: '2021-10-25',
			},
			{
				title: 'All Day Event2',
				start: '2021-10-25',
				end: '2021-10-26',
			},
			{
				groupId: 999,
				title: 'Test Event1',
				start: '2021-10-17T16:00:00',
				end: '2021-10-17T20:00:00'
			},
			{
				groupId: 999, // groupId가 같은 반복 이벤트 생성
				title: 'Test Event2',
				start: '2021-10-18T16:00:00',
				end: '2021-10-18T20:00:00'
			},
		] // DB에 있는 데이터를 가져와야한다.
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
 * addPlaceEvents
 */

		
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
		/* 모달에서 받아온 값으로 event 값 셋팅 */
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
    /* DB에 저장 */
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
		$("#calendarModal").modal('hide');
	});
	$('#deleteEvent').unbind();
	$('#deleteEvent').on('click', function () {
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

 