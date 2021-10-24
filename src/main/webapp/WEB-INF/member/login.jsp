<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- favicon -->
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
<link rel="icon" href="images/favicon.ico" type="image/x-icon">
<title>로그인</title>

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<%
	Cookie[] cookies = request.getCookies();
String mem_id = "";
if (cookies != null) {
	for (int i = 0; i < cookies.length; i++) {
		if (cookies[i].getName().equals("mem_id")) {
	mem_id = cookies[i].getValue();
		}
	}
}
%>
<!--  카카오 로그인 SDK -->

<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script>
	  	Kakao.init('d1fec8d8766a8a6cd6d1d7a100d376e0');
	    	console.log(Kakao.isInitialized());
	    	
	    /* function kakaoLogin() {
	    	window.Kakao.Auth.login({
	    		scope:'profile_nickname	, account_email, gender',
	    		success: function(authObj) {
	    			console.log(authObj);
	    			window.Kakao.API.request({
	    				url: '/v2/user/me',
	    				success: res => {
	    					const kakao_account = res.kakao_account;
	    					console.log(kakao_account);
	    				}
	    			})
	    		}
	    	});
	    }   */
		$(document).ready(function){
			$("#mem_id").on("keyup",function(){
				$.get("/tour/member/login.do",
	  					{"mem_id":$("#mem_id").val()},
	  					function(data){ //data는 응답되어 오는 데이터를 자동으로  success란에 명시하는 함수의 매개변수로 전달
	  										  //-----------------------  ---> Ajax성공으로 받은 데이터
	  										  //Ajax로 요청해서 응답받은 데이터를 <span>태그의 내부 텍스트로 출력
	  						$("#checkVal").text(data);
	  				},
	  				"text");
	 	  		});
	  	});
	  </script>
<style>
body {
	min-height: 100vh;
	background: -webkit-gradient(linear, left bottom, right top, from(#92b5db),
		to(#1d466c));
	background: -webkit-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
	background: -moz-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
	background: -o-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
	background: linear-gradient(to top right, #92b5db 0%, #1d466c 100%);
}

.input-form {
	max-width: 680px;
	margin-top: 80px;
	padding: 32px;
	background: #fff;
	-webkit-border-radius: 10px;
	-moz-border-radius: 10px;
	border-radius: 10px;
	-webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	-moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
}

button {
	margin-top: 20px;
	margin-bottom: 20px;
}

ul li:link {
	color: gray;
}

ul li {
	display: inline;
	padding: 20px;
	text-align: center;
	margin-left: 50px;
}

ul li:hover {
	color: gray;
	text-decoration: underline;
}
</style>



</head>

<body>

	<div class="container">
		<div class="input-form-backgroud row">
			<div class="input-form col-md-12 mx-auto">
				<h4 class="mb-3">로그인</h4>
				<form class="validation-form" action="/tour/member/login.do"
					method="post" novalidate>
					<div class="mb-3">
						<label for="id">아이디</label> <input type="text"   name="mem_id"
							class="form-control"  placeholder="아이디를 입력해주세요."  value="<%= mem_id%>"
							required>
						<div class="invalid-feedback">아이디를 입력해주세요.</div>
					</div>

					<div class="mb-3">
						<label for="pass">비밀번호</label> <input type="text" name="pwd"
							class="form-control"  placeholder="비밀번호를 입력해주세요."
							required>
						<div class="invalid-feedback">비밀번호를 입력해주세요.</div>
					</div>
					<div class="mb-4"></div>
					<button class="btn btn-primary btn-lg btn-block" type="submit">로그인</button>
					<!-- <a href="javascript:kakaoLogin();"> -->
					<a
						href="https://kauth.kakao.com/oauth/authorize?client_id=d1fec8d8766a8a6cd6d1d7a100d376e0&redirect_uri=http://localhost:8088/web-semi-project/tour_place/index.html&response_type=code"><img
						src="images/kakao_login_large_wide.png"></a>
					<!--  <a	href="/tour/index.do">로그아웃</a> -->
					<br/>
					<br/>
					<div class="row">
						<div class="col-md-4 mb-3">
							<div class="btn btn-primary btn-lg btn-block" ><a
								href="/tour/sign.do" ><font color = "white">회원가입</font></a></div>
						</div>
						<div class="col-md-4 mb-3">
							<div class="btn btn-primary btn-lg btn-block"><a
								href="/tour/find_id.do" ><font color = "white">아이디 찾기</font></a></div>
						</div>
						<div class="col-md-4 mb-3">
							<div class="btn btn-primary btn-lg btn-block"><a
								href="/tour/find_pass.do" ><font color = "white">비밀번호 찾기</font></a></div>
						</div>
					</div>

				</form>
			</div>

		</div>
	</div>

	<footer class="my-3 text-center text-small">
		<p class="mb-1">&copy; 2021 YD</p>
	</footer>

	<script>
	    window.addEventListener('load', () => {
	      const forms = document.getElementsByClassName('validation-form');
	
	      Array.prototype.filter.call(forms, (form) => {
	        form.addEventListener('submit', function (event) {
	          if (form.checkValidity() === false) {
	            event.preventDefault();
	            event.stopPropagation();
	          }
	
	          form.classList.add('was-validated');
	        }, false);
	      });
	    }, false);
	  </script>
</body>

</html>