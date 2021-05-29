]<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<title>모두?</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link
	href="https://fonts.googleapis.com/css?family=Montserrat:300,400,600&amp;subset=latin-ext"
	rel="stylesheet">

<!-- CSS -->
<link href="assets/css/main.css" rel="stylesheet">

<!-- JS -->
<script src="assets/js/vendor/modernizr-2.8.3.min.js"></script>
<script src="assets/js/vendor/jquery-1.12.0.min.js"></script>
</head>
<body>
	<div class="site" id="page">
		<a class="skip-link sr-only" href="#main">Skip to content</a>

		<section class="hero-section hero-section--slider clearfix">
			<div class="hero-section__wrap">

				<!-- Options slick plugin: data-arrows="true/false" | data-dots="true/false" | data-fade="true/false" | data-autoplay="true/false/number" | data-speed="number" -->
				<div class="hero-section__option" data-init="slick"
					data-arrows="false" data-dots="true" data-fade="false"
					data-autoplay="5000" data-speed="3000">
					<img src="assets/images/index.jpg" alt="Hero section image">
					<img src="assets/images/index-slider1.jpg" alt="Hero section image">
					<img src="assets/images/index-slider2.jpg" alt="Hero section image">
				</div>
				<!-- .hero-section__option -->

				<div class="container">
					<div class="row">
						<div class="offset-lg-2 col-lg-8">
							<div class="title-01 title-01--11 text-center">
								<h2 class="title__heading">We are AweSome!</h2>
								<div class="title__description">네이버 모두!를 벤치마킹한 웹사이트입니다</div>

								<!-- Options btn color: .btn-success | .btn-info | .btn-warning | .btn-danger | .btn-primary -->
								<div class="title__action">
									<a href="Main.me" class="btn btn-success">모두? 시작하기</a>
								</div>
							</div>
							<!-- .title-01 -->
						</div>
					</div>
				</div>
			</div>

			<div class="button-group" style="bottom: 50px;">
				<a href="index-color.jsp" class="btn btn-outline-success button-sm">Color</a>
				<a href="index-video.jsp" class="btn btn-outline-success button-sm">Video
					Background</a>
			</div>
			<!-- .hero-section__wrap -->
		</section>
		<!-- .hero-section -->
	</div>

	<!-- JS -->
	<script src="assets/js/plugins/slick.min.js"></script>
	<script src="assets/js/plugins/animate-headline.js"></script>
	<script src="assets/js/main.js"></script>
</body>
</html>
