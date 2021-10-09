<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		<!-- favicon -->
	  	<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
		<link rel="icon" href="img/favicon.ico" type="image/x-icon">
	</head>
	<body>
		<!-- START Nav -->
		<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
			<div class="container">
		    	<a class="navbar-brand" href="index.html">tour place</a>
			    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
					<span class="oi oi-menu"></span> Menu
			    </button>
		    	<div class="collapse navbar-collapse" id="ftco-nav">
					<ul class="navbar-nav ml-auto">
						<li class="nav-item active"><a href="index.html" class="nav-link">Home</a></li>
						<li class="nav-item"><a href="about.html" class="nav-link">About</a></li>
						<li class="nav-item"><a href="tour.html" class="nav-link">Tour</a></li>
						<li class="nav-item"><a href="review.html" class="nav-link">Review</a></li>
						<li class="nav-item"><a href="contact.html" class="nav-link">Contact</a></li>
						<li class="nav-item"><a href="Planner.html" class="nav-link">Planner</a></li>
						<li class="nav-item cta"><a href="login.html" class="nav-link"><span>login</span></a></li>
					</ul>
		    	</div>
			</div>
		</nav>
		  <!-- END nav -->
		 
		<div class="hero-wrap js-fullheight" style="background-image: url('images/bg_1.jpg');">
			<div class="overlay"></div>
			<div class="container">
				<div class="row no-gutters slider-text js-fullheight align-items-center justify-content-start" data-scrollax-parent="true">
				    <div class="col-md-9 ftco-animate" data-scrollax=" properties: { translateY: '70%' }">
				      	<h1 class="mb-4" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><strong>Explore <br></strong> your amazing city</h1>
				      	<p data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Find great places to stay, eat, shop, or visit from local experts</p>
				      	<div class="block-17 my-4">
				        	<form action="" method="post" class="d-block d-flex">
				          		<div class="fields d-block d-flex">
				            		<div class="textfield-search one-third">
				            			<input type="text" class="form-control" placeholder="Ex: food, service, hotel">
				            		</div>
				            		<div class="select-wrap one-third">
				              			<div class="icon"><span class="ion-ios-arrow-down"></span></div>
										<select name="" id="" class="form-control" placeholder="Keyword search">
											<option value="">Where</option>
											<option value="">San Francisco USA</option>
											<option value="">Berlin Germany</option>
											<option value="">Lodon United Kingdom</option>
											<option value="">Paris Italy</option>
										</select>
				            		</div>
				          		</div>
				         		<input type="submit" class="search-submit btn btn-primary" value="Search">  
				        	</form>
				      	</div>
				    </div>
				</div>
			</div>
		</div>
		
		<!--  <section class="ftco-section services-section bg-light">
		   <div class="container">
		     <div class="row d-flex">
		       <div class="col-md-3 d-flex align-self-stretch ftco-animate">
		         <div class="media block-6 services d-block text-center">
		           <div class="d-flex justify-content-center"><div class="icon"><span class="flaticon-guarantee"></span></div></div>
		           <div class="media-body p-2 mt-2">
		             <h3 class="heading mb-3">Best Price Guarantee</h3>
		             <p>A small river named Duden flows by their place and supplies.</p>
		           </div>
		         </div>      
		       </div>
		       <div class="col-md-3 d-flex align-self-stretch ftco-animate">
		         <div class="media block-6 services d-block text-center">
		           <div class="d-flex justify-content-center"><div class="icon"><span class="flaticon-like"></span></div></div>
		           <div class="media-body p-2 mt-2">
		             <h3 class="heading mb-3">Travellers Love Us</h3>
		             <p>A small river named Duden flows by their place and supplies.</p>
		           </div>
		         </div>    
		       </div>
		       <div class="col-md-3 d-flex align-self-stretch ftco-animate">
		         <div class="media block-6 services d-block text-center">
		           <div class="d-flex justify-content-center"><div class="icon"><span class="flaticon-detective"></span></div></div>
		           <div class="media-body p-2 mt-2">
		             <h3 class="heading mb-3">Best Travel Agent</h3>
		             <p>A small river named Duden flows by their place and supplies.</p>
		           </div>
		         </div>      
		       </div>
		       <div class="col-md-3 d-flex align-self-stretch ftco-animate">
		         <div class="media block-6 services d-block text-center">
		           <div class="d-flex justify-content-center"><div class="icon"><span class="flaticon-support"></span></div></div>
		           <div class="media-body p-2 mt-2">
		             <h3 class="heading mb-3">Our Dedicated Support</h3>
		             <p>A small river named Duden flows by their place and supplies.</p>
		           </div>
		         </div>      
		       </div>
		     </div>
		   </div>
		 </section> -->
		<section class="ftco-section ftco-destination">
			<div class="container">
		 		<div class="row justify-content-start mb-5 pb-3">
		       		<div class="col-md-7 heading-section ftco-animate">
		       			<span class="subheading">Featured</span>
		         		<h2 class="mb-4"><strong>Featured</strong> Destination</h2>
		       		</div>
		     	</div>
		 		<div class="row">
		 			<div class="col-md-12">
		 				<div class="destination-slider owl-carousel ftco-animate">
		 					<div class="item">
				   				<div class="destination">
				   					<a href="#" class="img d-flex justify-content-center align-items-center" style="background-image: url(images/destination-1.jpg);">
				   						<div class="icon d-flex justify-content-center align-items-center">
				   							<span class="icon-search2"></span>
				   						</div>
				   					</a>
				   					<div class="text p-3">
				   						<h3><a href="#">Paris, Italy</a></h3>
				   						<span class="listing">15 Listing</span>
				   					</div>
				   				</div>
	  						</div>
			  				<div class="item">
				   				<div class="destination">
				   					<a href="#" class="img d-flex justify-content-center align-items-center" style="background-image: url(images/destination-2.jpg);">
				   						<div class="icon d-flex justify-content-center align-items-center">
				   							<span class="icon-search2"></span>
				   						</div>
				   					</a>
				   					<div class="text p-3">
				   						<h3><a href="#">San Francisco, USA</a></h3>
				   						<span class="listing">20 Listing</span>
				   					</div>
				   				</div>
			  				</div>
			  				<div class="item">
				   				<div class="destination">
				   					<a href="#" class="img d-flex justify-content-center align-items-center" style="background-image: url(images/destination-3.jpg);">
				   						<div class="icon d-flex justify-content-center align-items-center">
				   							<span class="icon-search2"></span>
				   						</div>
				   					</a>
				   					<div class="text p-3">
				   						<h3><a href="#">Lodon, UK</a></h3>
				   						<span class="listing">10 Listing</span>
				   					</div>
				   				</div>
			  				</div>
			  				<div class="item">
				   				<div class="destination">
				   					<a href="#" class="img d-flex justify-content-center align-items-center" style="background-image: url(images/destination-4.jpg);">
				   						<div class="icon d-flex justify-content-center align-items-center">
				   							<span class="icon-search2"></span>
				   						</div>
				   					</a>
				   					<div class="text p-3">
				   						<h3><a href="#">Lion, Singapore</a></h3>
				   						<span class="listing">3 Listing</span>
				   					</div>
				   				</div>
			  				</div>
			  				<div class="item">
				   				<div class="destination">
				   					<a href="#" class="img d-flex justify-content-center align-items-center" style="background-image: url(images/destination-5.jpg);">
				   						<div class="icon d-flex justify-content-center align-items-center">
				   							<span class="icon-search2"></span>
				   						</div>
				   					</a>
				   					<div class="text p-3">
				   						<h3><a href="#">Australia</a></h3>
				   						<span class="listing">3 Listing</span>
				   					</div>
			   					</div>
		  					</div>
		  					<div class="item">
		   						<div class="destination">
				   					<a href="#" class="img d-flex justify-content-center align-items-center" style="background-image: url(images/destination-6.jpg);">
				   						<div class="icon d-flex justify-content-center align-items-center">
				   							<span class="icon-search2"></span>
				   						</div>
				   					</a>
		   							<div class="text p-3">
				   						<h3><a href="#">Paris, Italy</a></h3>
				   						<span class="listing">3 Listing</span>
		   							</div>
		   						</div>
		  					</div>
		 				</div>
		 			</div>
		 		</div>
		 	</div>
		</section>
		<section class="ftco-section bg-light">
			<div class="container">
				<div class="row justify-content-start mb-5 pb-3">
      				<div class="col-md-7 heading-section ftco-animate">
      					<span class="subheading">Special Offers</span>
        				<h2 class="mb-4"><strong>Top</strong> Tour Packages</h2>
      				</div>
    			</div>    		
		 	</div>
		 	<div class="container-fluid">
		 		<div class="row">
		 			<div class="col-sm col-md-6 col-lg ftco-animate">
		 				<div class="destination">
		 					<a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/destination-1.jpg);">
		 						<div class="icon d-flex justify-content-center align-items-center">
		 							<span class="icon-search2"></span>
		 						</div>
		 					</a>
		 					<div class="text p-3">
		 						<div class="d-flex">
		 							<div class="one">
			   							<h3><a href="#">Paris, Italy</a></h3>
				   						<p class="rate">
				   							<i class="icon-star"></i>
				   							<i class="icon-star"></i>
				   							<i class="icon-star"></i>
				   							<i class="icon-star"></i>
				   							<i class="icon-star-o"></i>
				   							<span>8 Rating</span>
				   						</p>
			  						</div>
		 						</div>
		 						<p>Far far away, behind the word mountains, far from the countries</p>
		 						<p class="days"><span>2 days 3 nights</span></p>
		 						<hr>
		 						<p class="bottom-area d-flex">
		 							<span><i class="icon-map-o"></i> San Franciso, CA</span> 
		 							<span class="ml-auto"><a href="#">Discover</a></span>
		 						</p>
		 					</div>
		 				</div>
		 			</div>
		 			<div class="col-sm col-md-6 col-lg ftco-animate">
		 				<div class="destination">
		 					<a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/destination-2.jpg);">
		 						<div class="icon d-flex justify-content-center align-items-center">
		 							<span class="icon-search2"></span>
		 						</div>
		 					</a>
		 					<div class="text p-3">
		 						<div class="d-flex">
		 							<div class="one">
				   						<h3><a href="#">Paris, Italy</a></h3>
				   						<p class="rate">
				   							<i class="icon-star"></i>
				   							<i class="icon-star"></i>
				   							<i class="icon-star"></i>
				   							<i class="icon-star"></i>
				   							<i class="icon-star-o"></i>
				   							<span>8 Rating</span>
				   						</p>
			  						</div>
		 						</div>
		 						<p>Far far away, behind the word mountains, far from the countries</p>
		 						<p class="days"><span>2 days 3 nights</span></p>
		 						<hr>
		 						<p class="bottom-area d-flex">
		 							<span><i class="icon-map-o"></i> San Franciso, CA</span> 
		 							<span class="ml-auto"><a href="#">Discover</a></span>
		 						</p>
		 					</div>
		 				</div>
		 			</div>
		 			<div class="col-sm col-md-6 col-lg ftco-animate">
		 				<div class="destination">
		 					<a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/destination-3.jpg);">
		 						<div class="icon d-flex justify-content-center align-items-center">
		 							<span class="icon-search2"></span>
		 						</div>
		 					</a>
		 					<div class="text p-3">
		 						<div class="d-flex">
		 							<div class="one">
				   						<h3><a href="#">Paris, Italy</a></h3>
				   						<p class="rate">
				   							<i class="icon-star"></i>
				   							<i class="icon-star"></i>
				   							<i class="icon-star"></i>
				   							<i class="icon-star"></i>
				   							<i class="icon-star-o"></i>
				   							<span>8 Rating</span>
				   						</p>
				  					</div>
		 						</div>
		 						<p>Far far away, behind the word mountains, far from the countries</p>
		 						<p class="days"><span>2 days 3 nights</span></p>
		 						<hr>
		 						<p class="bottom-area d-flex">
		 							<span><i class="icon-map-o"></i> San Franciso, CA</span> 
		 							<span class="ml-auto"><a href="#">Discover</a></span>
		 						</p>
		 					</div>
		 				</div>
		 			</div>
		 			<div class="col-sm col-md-6 col-lg ftco-animate">
		 				<div class="destination">
		 					<a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/destination-4.jpg);">
		 						<div class="icon d-flex justify-content-center align-items-center">
		 							<span class="icon-search2"></span>
		 						</div>
		 					</a>
		 					<div class="text p-3">
		 						<div class="d-flex">
		 							<div class="one">
		   								<h3><a href="#">Paris, Italy</a></h3>
				   						<p class="rate">
				   							<i class="icon-star"></i>
				   							<i class="icon-star"></i>
				   							<i class="icon-star"></i>
				   							<i class="icon-star"></i>
				   							<i class="icon-star-o"></i>
				   							<span>8 Rating</span>
				   						</p>
		  							</div>
		 						</div>
		 						<p>Far far away, behind the word mountains, far from the countries</p>
		 						<p class="days"><span>2 days 3 nights</span></p>
		 						<hr>
		 						<p class="bottom-area d-flex">
		 							<span><i class="icon-map-o"></i> San Franciso, CA</span> 
		 							<span class="ml-auto"><a href="#">Discover</a></span>
		 						</p>
							</div>
		 				</div>
		 			</div>
		 			<div class="col-sm col-md-6 col-lg ftco-animate">
						<div class="destination">
		 					<a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/destination-5.jpg);">
		 						<div class="icon d-flex justify-content-center align-items-center">
		 							<span class="icon-search2"></span>
		 						</div>
		 					</a>
		 					<div class="text p-3">
		 						<div class="d-flex">
		 							<div class="one">
		   								<h3><a href="#">Paris, Italy</a></h3>
		   								<p class="rate">
				   							<i class="icon-star"></i>
				   							<i class="icon-star"></i>
				   							<i class="icon-star"></i>
				   							<i class="icon-star"></i>
				   							<i class="icon-star-o"></i>
		   									<span>8 Rating</span>
		   								</p>
		  							</div>
		 						</div>
		 						<p>Far far away, behind the word mountains, far from the countries</p>
		 						<p class="days"><span>2 days 3 nights</span></p>
		 						<hr>
		 						<p class="bottom-area d-flex">
		 							<span><i class="icon-map-o"></i> San Franciso, CA</span> 
		 							<span class="ml-auto"><a href="#">Discover</a></span>
		 						</p>
							</div>
		 				</div>
					</div>
				</div>
			</div>
		</section>
		<section class="ftco-section ftco-counter img" id="section-counter" style="background-image: url(images/bg_1.jpg);">
			<div class="container">
				<div class="row justify-content-center mb-5 pb-3">
					<div class="col-md-7 text-center heading-section heading-section-white ftco-animate">
						<h2 class="mb-4">Some fun facts</h2>
						<span class="subheading">More than 100,000 websites hosted</span>
					</div>
				</div>
				<div class="row justify-content-center">
					<div class="col-md-10">
						<div class="row">
							<div class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
								<div class="block-18 text-center">
									<div class="text">
										<strong class="number" data-number="100000">0</strong>
										<span>Happy Customers</span>
									</div>
								</div>
							</div>
							<div class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
								<div class="block-18 text-center">
									<div class="text">
										<strong class="number" data-number="40000">0</strong>
										<span>Destination Places</span>
									</div>
								</div>
							</div>
				      		<div class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
						        <div class="block-18 text-center">
									<div class="text">
										<strong class="number" data-number="87000">0</strong>
										<span>Hotels</span>
									</div>
						        </div>
				      		</div>
				      		<div class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
				        		<div class="block-18 text-center">
				          			<div class="text">
							            <strong class="number" data-number="56400">0</strong>
										<span>Restaurant</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!--  <section class="ftco-section">
		 	<div class="container">
			<div class="row justify-content-start mb-5 pb-3">
		       <div class="col-md-7 heading-section ftco-animate">
		       	<span class="subheading">Special Offers</span>
		         <h2 class="mb-4"><strong>Popular</strong> Hotels &amp; Rooms</h2>
		       </div>
		     </div>    		
		 	</div>
		 	<div class="container-fluid">
		 		<div class="row">
		 			<div class="col-sm col-md-6 col-lg ftco-animate">
		 				<div class="destination">
		 					<a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/hotel-1.jpg);">
		 						<div class="icon d-flex justify-content-center align-items-center">
		 							<span class="icon-search2"></span>
		 						</div>
		 					</a>
		 					<div class="text p-3">
		 						<div class="d-flex">
		 							<div class="one">
		   						<h3><a href="#">Hotel, Italy</a></h3>
		   						<p class="rate">
		   							<i class="icon-star"></i>
		   							<i class="icon-star"></i>
		   							<i class="icon-star"></i>
		   							<i class="icon-star"></i>
		   							<i class="icon-star-o"></i>
		   							<span>8 Rating</span>
		   						</p>
		  						</div>
		  						<div class="two">
		  							<span class="price per-price">$40<br><small>/night</small></span>
		 							</div>
		 						</div>
		 						<p>Far far away, behind the word mountains, far from the countries</p>
		 						<hr>
		 						<p class="bottom-area d-flex">
		 							<span><i class="icon-map-o"></i> Miami, Fl</span> 
		 							<span class="ml-auto"><a href="#">Book Now</a></span>
		 						</p>
		 					</div>
		 				</div>
		 			</div>
		 			<div class="col-sm col-md-6 col-lg ftco-animate">
		 				<div class="destination">
		 					<a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/hotel-2.jpg);">
		 						<div class="icon d-flex justify-content-center align-items-center">
		 							<span class="icon-search2"></span>
		 						</div>
		 					</a>
		 					<div class="text p-3">
		 						<div class="d-flex">
		 							<div class="one">
		   						<h3><a href="#">Hotel, Italy</a></h3>
		   						<p class="rate">
		   							<i class="icon-star"></i>
		   							<i class="icon-star"></i>
		   							<i class="icon-star"></i>
		   							<i class="icon-star"></i>
		   							<i class="icon-star-o"></i>
		   							<span>8 Rating</span>
		   						</p>
		  						</div>
		  						<div class="two">
		  							<span class="price per-price">$40<br><small>/night</small></span>
		 							</div>
		 						</div>
		 						<p>Far far away, behind the word mountains, far from the countries</p>
		 						<hr>
		 						<p class="bottom-area d-flex">
		 							<span><i class="icon-map-o"></i> Miami, Fl</span> 
		 							<span class="ml-auto"><a href="#">Book Now</a></span>
		 						</p>
		 					</div>
		 				</div>
		 			</div>
		 			<div class="col-sm col-md-6 col-lg ftco-animate">
		 				<div class="destination">
		 					<a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/hotel-3.jpg);">
		 						<div class="icon d-flex justify-content-center align-items-center">
		 							<span class="icon-search2"></span>
		 						</div>
		 					</a>
		 					<div class="text p-3">
		 						<div class="d-flex">
		 							<div class="one">
		   						<h3><a href="#">Hotel, Italy</a></h3>
		   						<p class="rate">
		   							<i class="icon-star"></i>
		   							<i class="icon-star"></i>
		   							<i class="icon-star"></i>
		   							<i class="icon-star"></i>
		   							<i class="icon-star-o"></i>
		   							<span>8 Rating</span>
		   						</p>
		  						</div>
		  						<div class="two">
		  							<span class="price per-price">$40<br><small>/night</small></span>
		 							</div>
		 						</div>
		 						<p>Far far away, behind the word mountains, far from the countries</p>
		 						<hr>
		 						<p class="bottom-area d-flex">
		 							<span><i class="icon-map-o"></i> Miami, Fl</span> 
		 							<span class="ml-auto"><a href="#">Book Now</a></span>
		 						</p>
		 					</div>
		 				</div>
		 			</div>
		 			<div class="col-sm col-md-6 col-lg ftco-animate">
		 				<div class="destination">
		 					<a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/hotel-4.jpg);">
		 						<div class="icon d-flex justify-content-center align-items-center">
		 							<span class="icon-search2"></span>
		 						</div>
		 					</a>
		 					<div class="text p-3">
		 						<div class="d-flex">
		 							<div class="one">
		   						<h3><a href="#">Hotel, Italy</a></h3>
		   						<p class="rate">
		   							<i class="icon-star"></i>
		   							<i class="icon-star"></i>
		   							<i class="icon-star"></i>
		   							<i class="icon-star"></i>
		   							<i class="icon-star-o"></i>
		   							<span>8 Rating</span>
		   						</p>
		  						</div>
		  						<div class="two">
		  							<span class="price per-price">$40<br><small>/night</small></span>
		 							</div>
		 						</div>
		 						<p>Far far away, behind the word mountains, far from the countries</p>
		 						<hr>
		 						<p class="bottom-area d-flex">
		 							<span><i class="icon-map-o"></i> Miami, Fl</span> 
		 							<span class="ml-auto"><a href="#">Book Now</a></span>
		 						</p>
		 					</div>
		 				</div>
		 			</div>
		 			<div class="col-sm col-md-6 col-lg ftco-animate">
		 				<div class="destination">
		 					<a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/hotel-5.jpg);">
		 						<div class="icon d-flex justify-content-center align-items-center">
		 							<span class="icon-search2"></span>
		 						</div>
		 					</a>
		 					<div class="text p-3">
		 						<div class="d-flex">
		 							<div class="one">
		   						<h3><a href="#">Hotel, Italy</a></h3>
		   						<p class="rate">
		   							<i class="icon-star"></i>
		   							<i class="icon-star"></i>
		   							<i class="icon-star"></i>
		   							<i class="icon-star"></i>
		   							<i class="icon-star-o"></i>
		   							<span>8 Rating</span>
		   						</p>
		  						</div>
		  						<div class="two">
		  							<span class="price per-price">$40<br><small>/night</small></span>
		 							</div>
		 						</div>
		 						<p>Far far away, behind the word mountains, far from the countries</p>
		 						<hr>
		 						<p class="bottom-area d-flex">
		 							<span><i class="icon-map-o"></i> Miami, Fl</span> 
		 							<span class="ml-auto"><a href="#">Book Now</a></span>
		 						</p>
		 					</div>
		 				</div>
		 			</div>
		 		</div>
		 	</div>
		 </section> -->
		<section class="ftco-section testimony-section bg-light">
			<div class="container">
				<div class="row justify-content-start">
     				<div class="col-md-5 heading-section ftco-animate">
     					<span class="subheading">Best Directory Website</span>
       					<h2 class="mb-4 pb-3"><strong>Why</strong> Choose Us?</h2>
       					<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
       					<p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life.</p>
       					<p><a href="#" class="btn btn-primary btn-outline-primary mt-4 px-4 py-3">Read more</a></p>
     				</div>
					<div class="col-md-1"></div>
     					<div class="col-md-6 heading-section ftco-animate">
     						<span class="subheading">Testimony</span>
       						<h2 class="mb-4 pb-3"><strong>Our</strong> Guests Says</h2>
     					<div class="row ftco-animate">
       						<div class="col-md-12">
         						<div class="carousel-testimony owl-carousel">
									<div class="item">
             							<div class="testimony-wrap d-flex">
               								<div class="user-img mb-5" style="background-image: url(images/person_1.jpg)">
             									<span class="quote d-flex align-items-center justify-content-center">
               										<i class="icon-quote-left"></i>
             									</span>
           									</div>
           									<div class="text ml-md-4">
												<p class="mb-5">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
												<p class="name">Dennis Green</p>
												<span class="position">Guest from italy</span>
           									</div>
         								</div>
       								</div>
       								<div class="item">
         								<div class="testimony-wrap d-flex">
           									<div class="user-img mb-5" style="background-image: url(images/person_2.jpg)">
             									<span class="quote d-flex align-items-center justify-content-center">
               										<i class="icon-quote-left"></i>
             									</span>
           									</div>
           									<div class="text ml-md-4">
												<p class="mb-5">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
												<p class="name">Dennis Green</p>
												<span class="position">Guest from London</span>
           									</div>
         								</div>
       								</div>
       								<div class="item">
         								<div class="testimony-wrap d-flex">
           									<div class="user-img mb-5" style="background-image: url(images/person_3.jpg)">
												<span class="quote d-flex align-items-center justify-content-center">
													<i class="icon-quote-left"></i>
												</span>
            								</div>
			           						<div class="text ml-md-4">
												<p class="mb-5">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
												<p class="name">Dennis Green</p>
												<span class="position">Guest from Philippines</span>
			           						</div>
          								</div>
        							</div>
      							</div>
    						</div>
  						</div>
  					</div>
				</div>
			</div>
		</section>
		 <!-- <section class="ftco-section">
		 	<div class="container">
			<div class="row justify-content-start mb-5 pb-3">
		       <div class="col-md-7 heading-section ftco-animate">
		       	<span class="subheading">Special Offers</span>
		         <h2 class="mb-4"><strong>Popular</strong> Restaurants</h2>
		       </div>
		     </div>    		
		 		<div class="row">
		 			<div class="col-md-6 col-lg-3 ftco-animate">
		 				<div class="destination">
		 					<a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/restaurant-1.jpg);">
		 						<div class="icon d-flex justify-content-center align-items-center">
		 							<span class="icon-search2"></span>
		 						</div>
		 					</a>
		 					<div class="text p-3">
		 						<h3><a href="#">Luxury Restaurant</a></h3>
		 						<p class="rate">
		 							<i class="icon-star"></i>
		 							<i class="icon-star"></i>
		 							<i class="icon-star"></i>
		 							<i class="icon-star"></i>
		 							<i class="icon-star-o"></i>
		 							<span>8 Rating</span>
		 						</p>
		 						<p>Far far away, behind the word mountains, far from the countries</p>
		 						<hr>
		 						<p class="bottom-area d-flex">
		 							<span><i class="icon-map-o"></i> San Franciso, CA</span> 
		 							<span class="ml-auto"><a href="#">Discover</a></span>
		 						</p>
		 					</div>
		 				</div>
		 			</div>
		 			<div class="col-md-6 col-lg-3 ftco-animate">
		 				<div class="destination">
		 					<a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/restaurant-2.jpg);">
		 						<div class="icon d-flex justify-content-center align-items-center">
		 							<span class="icon-search2"></span>
		 						</div>
		 					</a>
		 					<div class="text p-3">
		 						<h3><a href="#">Luxury Restaurant</a></h3>
		 						<p class="rate">
		 							<i class="icon-star"></i>
		 							<i class="icon-star"></i>
		 							<i class="icon-star"></i>
		 							<i class="icon-star"></i>
		 							<i class="icon-star-o"></i>
		 							<span>8 Rating</span>
		 						</p>
		 						<p>Far far away, behind the word mountains, far from the countries</p>
		 						<hr>
		 						<p class="bottom-area d-flex">
		 							<span><i class="icon-map-o"></i> San Franciso, CA</span> 
		 							<span class="ml-auto"><a href="#">Book Now</a></span>
		 						</p>
		 					</div>
		 				</div>
		 			</div>
		 			<div class="col-md-6 col-lg-3 ftco-animate">
		 				<div class="destination">
		 					<a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/restaurant-3.jpg);">
		 						<div class="icon d-flex justify-content-center align-items-center">
		 							<span class="icon-search2"></span>
		 						</div>
		 					</a>
		 					<div class="text p-3">
		 						<h3><a href="#">Luxury Restaurant</a></h3>
		 						<p class="rate">
		 							<i class="icon-star"></i>
		 							<i class="icon-star"></i>
		 							<i class="icon-star"></i>
		 							<i class="icon-star"></i>
		 							<i class="icon-star-o"></i>
		 							<span>8 Rating</span>
		 						</p>
		 						<p>Far far away, behind the word mountains, far from the countries</p>
		 						<hr>
		 						<p class="bottom-area d-flex">
		 							<span><i class="icon-map-o"></i> San Franciso, CA</span> 
		 							<span class="ml-auto"><a href="#">Book Now</a></span>
		 						</p>
		 					</div>
		 				</div>
		 			</div>
		 			<div class="col-md-6 col-lg-3 ftco-animate">
		 				<div class="destination">
		 					<a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/restaurant-4.jpg);">
		 						<div class="icon d-flex justify-content-center align-items-center">
		 							<span class="icon-search2"></span>
		 						</div>
		 					</a>
		 					<div class="text p-3">
		 						<h3><a href="#">Luxury Restaurant</a></h3>
		 						<p class="rate">
		 							<i class="icon-star"></i>
		 							<i class="icon-star"></i>
		 							<i class="icon-star"></i>
		 							<i class="icon-star"></i>
		 							<i class="icon-star-o"></i>
		 							<span>8 Rating</span>
		 						</p>
		 						<p>Far far away, behind the word mountains, far from the countries</p>
		 						<hr>
		 						<p class="bottom-area d-flex">
		 							<span><i class="icon-map-o"></i> San Franciso, CA</span> 
		 							<span class="ml-auto"><a href="#">Book Now</a></span>
		 						</p>
		 					</div>
		 				</div>
		 			</div>
		 		</div>
		 	</div>
		 </section> -->
		 <!-- <section class="ftco-section bg-light">
		   <div class="container">
		     <div class="row justify-content-start mb-5 pb-3">
		       <div class="col-md-7 heading-section ftco-animate">
		         <span class="subheading">Recent Blog</span>
		         <h2><strong>Tips</strong> &amp; Articles</h2>
		       </div>
		     </div>
		     <div class="row d-flex">
		       <div class="col-md-3 d-flex ftco-animate">
		         <div class="blog-entry align-self-stretch">
		           <a href="blog-single.html" class="block-20" style="background-image: url('images/image_1.jpg');">
		           </a>
		           <div class="text p-4 d-block">
		           	<span class="tag">Tips, Travel</span>
		             <h3 class="heading mt-3"><a href="#">8 Best homestay in Philippines that you don't miss out</a></h3>
		             <div class="meta mb-3">
		               <div><a href="#">August 12, 2018</a></div>
		               <div><a href="#">Admin</a></div>
		               <div><a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a></div>
		             </div>
		           </div>
		         </div>
		       </div>
		       <div class="col-md-3 d-flex ftco-animate">
		         <div class="blog-entry align-self-stretch">
		           <a href="blog-single.html" class="block-20" style="background-image: url('images/image_2.jpg');">
		           </a>
		           <div class="text p-4">
		           	<span class="tag">Culture</span>
		             <h3 class="heading mt-3"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a></h3>
		             <div class="meta mb-3">
		               <div><a href="#">August 12, 2018</a></div>
		               <div><a href="#">Admin</a></div>
		               <div><a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a></div>
		             </div>
		           </div>
		         </div>
		       </div>
		       <div class="col-md-3 d-flex ftco-animate">
		         <div class="blog-entry align-self-stretch">
		           <a href="blog-single.html" class="block-20" style="background-image: url('images/image_3.jpg');">
		           </a>
		           <div class="text p-4">
		           	<span class="tag">Tips, Travel</span>
		             <h3 class="heading mt-3"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a></h3>
		             <div class="meta mb-3">
		               <div><a href="#">August 12, 2018</a></div>
		               <div><a href="#">Admin</a></div>
		               <div><a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a></div>
		             </div>
		           </div>
		         </div>
		       </div>
		       <div class="col-md-3 d-flex ftco-animate">
		         <div class="blog-entry align-self-stretch">
		           <a href="blog-single.html" class="block-20" style="background-image: url('images/image_4.jpg');">
		           </a>
		           <div class="text p-4">
		           	<span class="tag">Tips, Travel</span>
		             <h3 class="heading mt-3"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a></h3>
		             <div class="meta mb-3">
		               <div><a href="#">August 12, 2018</a></div>
		               <div><a href="#">Admin</a></div>
		               <div><a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a></div>
		             </div>
		           </div>
		         </div>
		       </div>
		     </div>
		   </div>
		 </section> -->
		<section class="ftco-section-parallax">
			<div class="parallax-img d-flex align-items-center">
				<div class="container">
					<div class="row d-flex justify-content-center">
						<div class="col-md-7 text-center heading-section heading-section-white ftco-animate">
							<h2>Subcribe to our Newsletter</h2>
							<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in</p>
							<div class="row d-flex justify-content-center mt-5">
								<div class="col-md-8">
									<form action="#" class="subscribe-form">
										<div class="form-group d-flex">
											<input type="text" class="form-control" placeholder="Enter email address">
											<input type="submit" value="Subscribe" class="submit px-3">
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<footer class="ftco-footer ftco-bg-dark ftco-section">
			<div class="container">
	      		<div class="row mb-5">
	        		<div class="col-md">
		          		<div class="ftco-footer-widget mb-4">
		            		<h2 class="ftco-heading-2">tour place</h2>
		            		<p> 시군구별 관광지 기후 지수<br/> 기상지수예보<br/> (식중독지수, 체감온도,자외선지수)<br/>동네예보 (기온,습도)<br/>여행 플래너 </p>
				            <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
								<li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
								<li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
								<li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
				            </ul>
		          		</div>
		        	</div>
					<div class="col-md">
						<div class="ftco-footer-widget mb-4 ml-md-5">
							<h2 class="ftco-heading-2">Information</h2>
							<ul class="list-unstyled">
								<li><a href="#" class="py-2 d-block">About</a></li>
								<li><a href="#" class="py-2 d-block">Tour</a></li>
								<li><a href="#" class="py-2 d-block">Review</a></li>
								<li><a href="#" class="py-2 d-block">Contact</a></li>
								<li><a href="#" class="py-2 d-block">Planner</a></li>
							</ul>
						</div>
					</div>
		        	<div class="col-md">
		           		<div class="ftco-footer-widget mb-4">
		            		<h2 class="ftco-heading-2">Customer Support</h2>
				            <ul class="list-unstyled">
								<li><a href="#" class="py-2 d-block">FAQ</a></li>
								<li><a href="#" class="py-2 d-block">How it works</a></li>
								<li><a href="#" class="py-2 d-block">Contact Us</a></li>
				            </ul>
		          		</div>
		        	</div>
	        		<div class="col-md">
	          			<div class="ftco-footer-widget mb-4">
		          			<h2 class="ftco-heading-2">Have a Questions?</h2>
		          			<div class="block-23 mb-3">
		             			<ul>
									<li><span class="icon icon-map-marker"></span><span class="text">서울특별시 강남주 언주로 508, 14층<br/> (역삼동, 서울상록회관)</span></li>
									<li><a href="#"><span class="icon icon-phone"></span><span class="text">1544-9001</span></a></li>
									<li><a href="#"><span class="icon icon-envelope"></span><span class="text">1조@websemiproject.com</span></a></li>
		             			</ul>
		           			</div>
		          		</div>
		        	</div>
		      	</div>
				<div class="row">
		        	<div class="col-md-12 text-center">
		          		<p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						Copyright &copy;<script>document.write(new Date().getFullYear());</script> 1조 화이팅 <i class="icon-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">준범</a>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
					</div>
				</div>
			</div>
		</footer>
		<!-- loader -->
		<div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>
		
		<!-- Main Script -->
	    <script src="https://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>
		<script src="https://code.jquery.com/jquery-migrate-3.0.1.min.js" integrity="sha256-F0O1TmEa4I8N24nY0bya59eP6svWcshqX1uzwaWC4F4=" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js" integrity="sha512-ahmSZKApTDNd3gVuqL5TQ3MBTj8tL5p2tYV05Xxzcfu6/ecvt1A0j6tfudSGBVuteSoTRMqMljbfdU0g2eDNUA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
		<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.0/jquery.waypoints.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/stellar.js/0.6.2/jquery.stellar.min.js" integrity="sha512-PNXCBnFH9wShbV+mYnrfo0Gf3iSREgBWmYAoMIfc+Z83vVq3Nu4yxBk6j+BZ40ZIhtW3WlTQdBvW3AYLAnlgpA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/jquery.magnific-popup.min.js" integrity="sha512-IsNh5E3eYy3tr/JiX2Yx4vsCujtkhwl7SLqgnwLNgf04Hrt9BT9SXlLlZlWx+OK4ndzAoALhsMNcCmkggjZB1w==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-animateNumber/0.0.14/jquery.animateNumber.min.js" integrity="sha512-WY7Piz2TwYjkLlgxw9DONwf5ixUOBnL3Go+FSdqRxhKlOqx9F+ee/JsablX84YBPLQzUPJsZvV88s8YOJ4S/UA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js" integrity="sha512-T/tUfKSV1bihCnd+MxKD0Hm1uBBroVYBOYSk1knyvQ9VyZJpc/ALb4P0r6ubwVPSGB2GvjeoMAJJImBG12TiaQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.1/owl.carousel.min.js" integrity="sha512-R5COAyFZ7B88RiuYmY3RPq1uXLFAmRQoGhNF5NU+HaaROvzZ773eLF1guAY8lHM0jNRwgFUVuHWbfPacHXbfDQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.js" integrity="sha512-A7AYk1fGKX6S2SsHywmPkrnzTZHrgiVT7GcQkLGDe2ev0aWb8zejytzS8wjo7PGEXKqJOrjQ4oORtnimIRZBtw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
		<script src="https://cdn.jsdelivr.net/npm/scrollax@1.0.0/scrollax.min.js"></script>
		<script src="/common//js/main.js"></script>
	</body>
</html>