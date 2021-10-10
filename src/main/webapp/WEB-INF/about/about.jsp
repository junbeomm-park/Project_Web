<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
</head>
<body>
	<form action="/tour2/about/about.do">
		<div class="hero-wrap js-fullheight"
			style="background-image: url('images/background-01.jpg');">
			<div class="overlay"></div>
			<div class="container">
				<div
					class="row no-gutters slider-text js-fullheight align-items-center justify-content-center"
					data-scrollax-parent="true">
					<div class="col-md-9 text-center ftco-animate"
						data-scrollax=" properties: { translateY: '70%' }">
						<p class="breadcrumbs"
							data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">
							<span class="mr-2"><a href="index.do">Home</a></span> <span>About</span>
						</p>
						<h1 class="mb-3 bread"
							data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">About
							Us</h1>
					</div>
				</div>
			</div>
		</div>

		<section class="ftco-section">
			<div class="container">
				<div class="row d-md-flex">
					<div class="col-md-6 ftco-animate img about-image"
						style="background-image: url(images/about.jpg);"></div>
					<div class="col-md-6 ftco-animate p-md-5">
						<div class="row">
							<div class="col-md-12 nav-link-wrap mb-5">
								<div class="nav ftco-animate nav-pills" id="v-pills-tab"
									role="tablist" aria-orientation="vertical">
									<a class="nav-link active" id="v-pills-whatwedo-tab"
										data-toggle="pill" href="#v-pills-whatwedo" role="tab"
										aria-controls="v-pills-whatwedo" aria-selected="true">tour
										place?</a> <a class="nav-link" id="v-pills-mission-tab"
										data-toggle="pill" href="#v-pills-mission" role="tab"
										aria-controls="v-pills-mission" aria-selected="false">Our
										mission</a> <a class="nav-link" id="v-pills-goal-tab"
										data-toggle="pill" href="#v-pills-goal" role="tab"
										aria-controls="v-pills-goal" aria-selected="false">Our
										goal</a>
								</div>
							</div>
							<div class="col-md-12 d-flex align-items-center">

								<div class="tab-content ftco-animate" id="v-pills-tabContent">

									<div class="tab-pane fade show active" id="v-pills-whatwedo"
										role="tabpanel" aria-labelledby="v-pills-whatwedo-tab">
										<div>
											<h2 class="mb-4">저희 tour place는</h2>
											<p>시도별 추천 관광코스를 제공하며, 관광코스별 관광지 상세 날씨 조회, 상세정보 등을 제공하는
												서비스 입니다.</p>
											<p></p>
										</div>
									</div>

									<div class="tab-pane fade" id="v-pills-mission" role="tabpanel"
										aria-labelledby="v-pills-mission-tab">
										<div>
											<h2 class="mb-4">Exceptional Web Solutions</h2>
											<p>시도별 관광지 조회</p>
											<p>관광코스 추천</p>
											<p>관광지별 상세 날씨 조회</p>
											<p>여행 플래너 제공</p>
											<p>Review 작성</p>

										</div>
									</div>

									<div class="tab-pane fade" id="v-pills-goal" role="tabpanel"
										aria-labelledby="v-pills-goal-tab">
										<div>
											<h2 class="mb-4">Help Our Customer</h2>
											<p>고객님이 소중한 추억을 만들 수 있도록 저희 tour place가 함께 하겠습니다.</p>
											<p></p>
										</div>
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
						<span class="subheading">FAQS</span>
						<h2 class="mb-4">
							<strong>Frequently</strong> Ask Question
						</h2>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 ftco-animate">
						<div id="accordion">
							<div class="row">
								<div class="col-md-6">
									<div class="card">
										<div class="card-header">
											<a class="card-link" data-toggle="collapse" href="#menuone"
												aria-expanded="true" aria-controls="menuone">When she
												reached the first hills? <span class="collapsed"><i
													class="icon-plus-circle"></i></span><span class="expanded"><i
													class="icon-minus-circle"></i></span>
											</a>
										</div>
										<div id="menuone" class="collapse show">
											<div class="card-body">
												<p>When she reached the first hills of the Italic
													Mountains, she had a last view back on the skyline of her
													hometown Bookmarksgrove, the headline of Alphabet Village
													and the subline of her own road, the Line Lane. Pityful a
													rethoric question ran over her cheek, then she continued
													her way.</p>
											</div>
										</div>
									</div>
									<div class="card">
										<div class="card-header">
											<a class="card-link" data-toggle="collapse" href="#menutwo"
												aria-expanded="false" aria-controls="menutwo">Italic
												Mountains, she had a last <span class="collapsed"><i
													class="icon-plus-circle"></i></span><span class="expanded"><i
													class="icon-minus-circle"></i></span>
											</a>
										</div>
										<div id="menutwo" class="collapse">
											<div class="card-body">
												<p>When she reached the first hills of the Italic
													Mountains, she had a last view back on the skyline of her
													hometown Bookmarksgrove, the headline of Alphabet Village
													and the subline of her own road, the Line Lane. Pityful a
													rethoric question ran over her cheek, then she continued
													her way.</p>
											</div>
										</div>
									</div>
									<div class="card">
										<div class="card-header">
											<a class="card-link" data-toggle="collapse" href="#menu3"
												aria-expanded="false" aria-controls="menu3">
												Bookmarksgrove, the headline? <span class="collapsed"><i
													class="icon-plus-circle"></i></span><span class="expanded"><i
													class="icon-minus-circle"></i></span>
											</a>
										</div>
										<div id="menu3" class="collapse">
											<div class="card-body">
												<p>When she reached the first hills of the Italic
													Mountains, she had a last view back on the skyline of her
													hometown Bookmarksgrove, the headline of Alphabet Village
													and the subline of her own road, the Line Lane. Pityful a
													rethoric question ran over her cheek, then she continued
													her way.</p>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-6">
									<div class="card">
										<div class="card-header">
											<a class="card-link" data-toggle="collapse" href="#menu4"
												aria-expanded="false" aria-controls="menu4">Alphabet
												Village and the subline of her own? <span class="collapsed"><i
													class="icon-plus-circle"></i></span><span class="expanded"><i
													class="icon-minus-circle"></i></span>
											</a>
										</div>
										<div id="menu4" class="collapse">
											<div class="card-body">
												<p>When she reached the first hills of the Italic
													Mountains, she had a last view back on the skyline of her
													hometown Bookmarksgrove, the headline of Alphabet Village
													and the subline of her own road, the Line Lane. Pityful a
													rethoric question ran over her cheek, then she continued
													her way.</p>
											</div>
										</div>
									</div>
									<div class="card">
										<div class="card-header">
											<a class="card-link" data-toggle="collapse" href="#menu5"
												aria-expanded="false" aria-controls="menu5">Then she
												continued her way? <span class="collapsed"><i
													class="icon-plus-circle"></i></span><span class="expanded"><i
													class="icon-minus-circle"></i></span>
											</a>
										</div>
										<div id="menu5" class="collapse">
											<div class="card-body">
												<p>When she reached the first hills of the Italic
													Mountains, she had a last view back on the skyline of her
													hometown Bookmarksgrove, the headline of Alphabet Village
													and the subline of her own road, the Line Lane. Pityful a
													rethoric question ran over her cheek, then she continued
													her way.</p>
											</div>
										</div>
									</div>
									<div class="card">
										<div class="card-header">
											<a class="card-link" data-toggle="collapse" href="#menu6"
												aria-expanded="false" aria-controls="menu6">Skyline of
												her hometown Bookmarksgrove? <span class="collapsed"><i
													class="icon-plus-circle"></i></span><span class="expanded"><i
													class="icon-minus-circle"></i></span>
											</a>
										</div>
										<div id="menu6" class="collapse">
											<div class="card-body">
												<p>When she reached the first hills of the Italic
													Mountains, she had a last view back on the skyline of her
													hometown Bookmarksgrove, the headline of Alphabet Village
													and the subline of her own road, the Line Lane. Pityful a
													rethoric question ran over her cheek, then she continued
													her way.</p>
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
	</form>
</body>
</html>