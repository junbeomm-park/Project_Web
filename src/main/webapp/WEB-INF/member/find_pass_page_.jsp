<%@page import="member.memberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>회원가입</title>
		<% memberVO idfind = (memberVO)request.getAttribute("passfind"); %>
		 	<!-- Bootstrap CSS -->
		 	 <!-- favicon -->
  	 	<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
		<link rel="icon" href="images/favicon.ico" type="image/x-icon">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
		<style>
			body {
			  min-height: 100vh;
			
			  background: -webkit-gradient(linear, left bottom, right top, from(#92b5db), to(#1d466c));
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
		</style>
	</head>
	<body>
		<form method="post" action="/tour/member/find_id.do">
		<div class="container">
			<div class="input-form-backgroud row">
				<div class="input-form col-md-12 mx-auto">
					<h4 class="mb-3">비밀번호 찾기</h4>
 					<!-- <form class="validation-form" novalidate> -->
						<div class="row">
							<div class="col-md-6 mb-3">
								<label for="nickname">비밀번호</label>
								<label for="nickname"><%"passfind"%></label>
							</div>
							
						<button ahref="/index.do" class="btn btn-primary btn-lg btn-block" type="submit">홈으로</button>
					</form>
				</div>
			</div>
			<footer class="my-3 text-center text-small">
				<p class="mb-1">&copy; 2021 YD</p>
			</footer>
		</div>
		</form>
	</body>
</html>

<%-- <%@page import="multi.erp.emp.EmpVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
	EmpVO user = (EmpVO) request.getAttribute("loginOkUser");
%>
</head>
<body>
	<h1>mypage</h1>
	<h3><%= user.getName() %></h3>
	<!--  --------------- -->
	<!-- db에서 조회한 로그인한 사용자의 성명 -->
</body>
</html> --%>