<%@page import="member.memberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<!-- Main CDN -->
		<title>Tour Place</title>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<!-- Main StyleSheet -->
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" >
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Alex+Brush" >
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/open-iconic/1.1.1/font/css/open-iconic-bootstrap.min.css">
		<link rel="stylesheet" href="/tour/common/css/animate.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.1/assets/owl.carousel.min.css" integrity="sha512-ZuuX4YQSwlpe+a1/9xJ9AEVsvHirmTDj18GZgM5sYr0xNxZgXLjiA59Z5uUKvzbwt/1Rt3RgOg8zKMyluve8Hg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/assets/owl.theme.default.min.css" integrity="sha512-GQz6nApkdT7cWN1Cnj/DOAkyfzNOoq+txIhSEK1G4HTCbSHVGpsrvirptbAP60Nu7qbw0+XlAAPGUmLU2L5l4g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/magnific-popup.css" integrity="sha512-WEQNv9d3+sqyHjrqUZobDhFARZDko2wpWdfcpv44lsypsSuMO0kHGd3MQ8rrsBn/Qa39VojphdU6CMkpJUmDVw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.css" integrity="sha512-1cK78a1o+ht2JcaW6g8OXYwqpev9+6GqOkz9xmBN9iUUhIndKtxwILGWYOSibOKjLsEdjyjZvYDq/cZwNeak0w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/4.0.0-19/css/ionicons.min.css" integrity="sha512-giJ3DduyVsSAMMuTihAnhnvnm8DwsYDJImEWCnbdeg5bfqHoJX/Q7lAhTv9rh4XBMloWmSoWhsDHlkSx7UJQFA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css" integrity="sha512-mSYUmp1HYZDFaVKK//63EcZq4iFWFjxSL+Z3T/aCt4IO9Cejm03q3NKKYN6pFQzY0SBOr8h+eCIAZHPXcpZaNw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
		<link rel="stylesheet" href="/tour/common/css/flaticon.css">
		<link rel="stylesheet" href="/tour/common/css/icomoon.css">
		<link rel="stylesheet" href="/tour/common/css/style.css">
		<!--  Map StyleSheet -->
		<link rel="stylesheet" type="text/css" href="/tour/common/css/kakaoMapStyleNew.css">
		<link rel="preload" as="style" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
		<!-- favicon -->
	  	<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
		<link rel="icon" href="img/favicon.ico" type="image/x-icon">
		
		<!--  Map  -->
		<style>
		#searchConF #map { width: 100%; height: 350px; }
		#searchConF #map > div:first-child > div > div:nth-child(2) > img { display: none; }
		#searchConF #map > div:first-child { background-color: #fafafa; width: 100%; }
		#searchConF #map .area { position: absolute; background: #fff; border: 1px solid #707070; color: #707070; font-size: 0.9rem; top: -5px; left: 15px; padding: .125rem .75rem; }
		#searchConF .area-select-block { align-self: center; margin: 1.5rem 0; } 
		#searchConF .area-select-block select{ color: #b8b8b8; }
		#searchConF .area-select-block button{ background-color: #304562; color: #fff; } 
		#searchConF #ingiTable .ingi-title{ color: #2f4763; padding: 0 0 0.5rem 0.5rem; } 
		#searchConF #ingiTable table { border: 1px solid #e6e9ee; border-collapse: separate; border-radius: 12px; border-spacing: 0px; width: 100%; height: 6rem; }
		#searchConF #ingiTable table td { text-align: center; border: 1px solid #e6e9ee; }
		#searchConF #ingiTable table tr td:hover { background: #2c4160; color: #fff; }
		#searchConF #ingiTable table tr:first-child td:first-child { border-radius: 10px 0 0 0; }
		#searchConF #ingiTable table tr:first-child td:nth-child(3) { border-radius: 0 10px 0 0; }
		#searchConF #ingiTable table tr:last-child td:first-child { border-radius: 0 0 0 10px; }
		#searchConF #ingiTable table tr:last-child td:nth-child(3) { border-radius: 0 0 10px 0; }
		#searchConF .ingi-block { background: #fefbec; text-align: center; }
		#searchConF .ingi-block .ingi-title{ font-size: 1.1rem; font-weight: 700; color: #21385a; border: 2px solid #21385a; }
		#searchConF .ingi-words { display: flex; justify-content: flex-start; padding: 0.5rem 0.25rem 1rem 0.25rem; max-height: 17rem; overflow: hidden; flex-wrap: wrap; align-items: center; align-content: stretch; height: 70%; }
		#searchConF .ingi-words div:before { content: ''; display: inline-block; position: relative; left: 0; top: -4px; width: 3px; height: 3px; background-color: #7d7c7a; margin-right: 0.3rem; border-radius: 20px; }
		#searchConF .ingi-words div { padding: 0.25rem 0.5rem; }
		</style>
	</head>
	<body>
	<% memberVO user = (memberVO) session.getAttribute("loginOkUser"); %>
	  <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="/tour/index.do">tour place</a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>
	
	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	          <li class="nav-item active"><a href="/tour/index.do" class="nav-link">Home</a></li>
	          <li class="nav-item"><a href="/tour/about.do" class="nav-link">About</a></li>
	          <li class="nav-item"><a href="/tour/place/tourPage.do" class="nav-link">Tour</a></li>
	          <li class="nav-item"><a href="/tour/contact.do" class="nav-link">Contact</a></li>
	          <li class="nav-item"><a href="/tour/planner.do" class="nav-link">Planner</a></li>
	        <%if(user==null){ %>
	          <li class="nav-item cta"><a href="/tour/login.do" class="nav-link"><span>Login</span></a></li>
	        <%}else{ %>
	          <li class="nav-item cta"><a href="/tour/member/logout.do" class="nav-link"><span>LogOut</span></a></li>
	        <%} %>
	        </ul>
	      </div>
	    </div>
	  </nav>
	</body>
</html>

  


  
  