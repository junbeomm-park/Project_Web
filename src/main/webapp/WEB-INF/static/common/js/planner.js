/**
 * 
 */
 document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('calendar');

    var calendar = new FullCalendar.Calendar(calendarEl, {
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
			select: function(info) {
				$('.modal-title').html('새로운 일정');
			    $('#edit-title').val('');
			    $('#edit-start').val(info.start);
			    $('#edit-end').val(info.end);
			    $('#edit-desc').val('');
			    
			    $('.addEvent').show();
			    $('.modifyEvent').hide();
			    $("#calendarModal").modal('show');	//일자 클릭 시 모달 호출 이하 DB작업중,,,,
		    },
		    eventClick: function(info) {
				$('.modal-title').html('일정 수정');
			    $('#edit-title').val(info.title);
			    $('#edit-start').val(info.start);
			    $('#edit-end').val(info.end);
			    $('#edit-desc').val('');
			    
			    $('.addEvent').hide();
			    $('.modifyEvent').show();
			    $("#calendarModal").modal('show');	//일자 클릭 시 모달 호출 이하 DB작업중,,,,	//이벤트 클릭 시 모달 호출
		    },
		 	eventChange: function(info){
				//allDay true로 바꾸면 end가 없어서 만듬
				if(info.event.end == null){
					var end = new Date();
					end.setDate(info.event.start.getDate()+1);
					info.event.setEnd(end);	
				}
		 	},
			// 테스트 이벤트
			events: [
				{
					title: 'All Day Event',
					start: '2021-09-01',
				},
				{
					groupId: 999,
					title: 'Test Event1',
					start: '2021-09-09T16:00:00'
				},
				{
					groupId: 999, // groupId가 같은 반복 이벤트 생성
					title: 'Test Event2',
					start: '2021-09-16T16:00:00'
				},
				{
					title: 'Click for Naver',
					url: 'https://www.naver.com/', // 클릭시 해당 url로 이동
					start: '2021-09-28'
				},
				{
					groupId: 'blueEvents', // groupId가 같으면 드래그할 때 같이 이동, 없으면 따로 이동 가능 
					daysOfWeek: [ '4' ],
					startTime: '10:45:00',
					endTime: '12:45:00',
					color: 'red'
			    },
			]
		});
		// 캘린더 랜더링
		calendar.render();
		$(function() {
			$('#datepicker').datepicker({ 
				todayBtn: "linked",
	    		language: "ko",
	    		todayHighlight: true,
				onSelect: function(dateText) {
					$('#datepicker2').datepicker("setDate", $(this).datepicker("getDate"));
				}
			});
		$("#edit-start, #edit-end").datetimepicker({
   	 		format: 'YYYY-MM-DD HH:mm'
		});
	});
});	
