<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<title>Electro - HTML Ecommerce Template</title>

<!-- Google font -->
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700"
	rel="stylesheet">

<!-- Bootstrap -->
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />

<!-- Slick -->
<link type="text/css" rel="stylesheet" href="css/slick.css" />
<link type="text/css" rel="stylesheet" href="css/slick-theme.css" />

<!-- nouislider -->
<link type="text/css" rel="stylesheet" href="css/nouislider.min.css" />

<!-- Font Awesome Icon -->
<link rel="stylesheet" href="css/font-awesome.min.css">

<!-- Custom stlylesheet -->
<link type="text/css" rel="stylesheet" href="css/style.css" />

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->

</head>
<body>
	<!-- 헤드시작 -->
	<jsp:include page="../header.jsp"></jsp:include>
	<!-- 헤드끝 -->
	
	<!-- 상단베너 시작 -->
<header>
			<!-- TOP HEADER -->
			
			<!-- /TOP HEADER -->

			<!-- MAIN HEADER -->
			<div id="header">
				<!-- container -->
				<div class="container">
					<!-- row -->
					<div class="row">
						<!-- LOGO -->
						<div class="col-md-3">
							<div class="header-logo">
								<a href="#" class="logo">
									<img src="./img/logo.png" alt="">
								</a>
							</div>
						</div>
						<!-- /LOGO -->

						<!-- SEARCH BAR -->
						<div class="col-md-6">
							<div class="header-search">
								<form>
									<select class="input-select">
										<option value="0">카테고리 선택</option>
										<option value="1">카테고리1</option>
										<option value="1">카테고리2</option>
									</select>
									<input class="input" placeholder="검색어를 입력하세요">
									<button class="search-btn">검색</button>
								</form>
							</div>
						</div>				
							</div>
						</div>
					</div>
		</header>

	<!-- SECTION -->
	<div class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<!-- ASIDE -->
				<div id="aside" class="col-md-3">
				
					<!-- 카테고리1 -->
					<div class="aside">
						<h3 class="aside-title">카테고리1</h3>
						<div class="checkbox-filter">

							<div class="input-checkbox">
								<input type="checkbox" id="category-1"> <label
									for="category-1"> <span></span> Laptops <small>(120)</small>
								</label>
							</div>
						</div>
					</div>
					<!-- 카테고리1끝 -->


					<!-- 카테고리2 -->
					<div class="aside">
						<h3 class="aside-title">카테고리2</h3>
						<div class="checkbox-filter">
							<div class="input-checkbox">
								<input type="checkbox" id="brand-1"> <label
									for="brand-1"> <span></span> SAMSUNG <small>(578)</small>
								</label>
							</div>
						</div>
					</div>

				</div>
				<!-- /ASIDE -->

				<!-- STORE -->
				<div id="store" class="col-md-9">
					<!-- store top filter -->
					<div class="store-filter clearfix">
						<div class="store-sort">
							<label> Sort By: <select class="input-select">
									<option value="0">높은가격</option>
									<option value="1">낮은가격</option>
									<option value="2">인기순</option>
											</select>
							</label> 
						</div>
					</div>
					<!-- 카테고리2끝 -->

					<!-- 상품리스트 -->
					<div class="row">
						<!-- product -->
						<div class="col-md-4 col-xs-6">
							<div class="product">
								<div class="product-img">
									<img src="./img/product01.png" alt="">
									<div class="product-label">
<!-- 	할인, 신상품여부	
			<span class="sale">-30%</span> <span class="new">NEW</span> -->
									</div>
								</div>
								<div class="product-body">
									<p class="product-category">Category</p>
									<h3 class="product-name">
										<a href="#">상품명</a>
									</h3>
									<h4 class="product-price">
										상품가격
									</h4>
									<!-- 별점 위시리스트 퀵뷰 -->
<!-- 									<div class="product-rating"> -->
<!-- 										<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i -->
<!-- 											class="fa fa-star"></i> <i class="fa fa-star"></i> <i -->
<!-- 											class="fa fa-star"></i> -->
<!-- 									</div> -->
<!-- 									<div class="product-btns"> -->
<!-- 										<button class="add-to-wishlist"> -->
<!-- 											<i class="fa fa-heart-o"></i><span class="tooltipp">add -->
<!-- 												to wishlist</span> -->
<!-- 										</button> -->
<!-- 										<button class="add-to-compare"> -->
<!-- 											<i class="fa fa-exchange"></i><span class="tooltipp">add -->
<!-- 												to compare</span> -->
<!-- 										</button> -->
<!-- 										<button class="quick-view"> -->
<!-- 											<i class="fa fa-eye"></i><span class="tooltipp">quick -->
<!-- 												view</span> -->
<!-- 										</button> -->
<!-- 									</div> -->
								</div>
								<div class="add-to-cart">
									<button class="add-to-cart-btn">
										<i class="fa fa-shopping-cart"></i> <a href="product.jsp">상품 상세보기</a>
									</button>
								</div>
							</div>
						</div>
						<!-- /product -->
						
						
					<!-- 상품 등록하기-->
					<div class="row">
						<!-- product -->
						<div class="col-md-4 col-xs-6">
							<div class="product">
								<div class="product-img">
									<img src="./img/product01.png" alt="">
									<div class="product-label">

									</div>
								</div>
								<div class="product-body">
									<p class="product-category"></p>
									<h3 class="product-name">
										<a href="#"></a>
									</h3>
									<h4 class="product-price">
										새 상품 등록하기
									</h4>
								</div>
								
								
								<div class="add-to-cart">
									<button class="add-to-cart-btn">
										<i class="fa fa-shopping-cart"></i> <a href="product-seller.jsp">상품 등록하기</a>
									</button>
								</div>
							</div>
						</div>
						<!-- /product -->
					</div>
					<!-- /store products -->

					<!-- store bottom filter -->
					<div class="store-filter clearfix">
						<span class="store-qty"></span>
						<ul class="store-pagination">
							<li class="active">1</li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#"><i class="fa fa-angle-right"></i></a></li>
						</ul>
					</div>
					<!-- /store bottom filter -->
				</div>
				<!-- /STORE -->
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /SECTION -->


	<!-- jQuery Plugins -->
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/slick.min.js"></script>
	<script src="js/nouislider.min.js"></script>
	<script src="js/jquery.zoom.min.js"></script>
	<script src="js/main.js"></script>

	<jsp:include page="../footer.jsp" />
</body>
</html>
