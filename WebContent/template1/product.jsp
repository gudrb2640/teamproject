<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>템플릿 1 상세페이지 입니다.</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="apple-touch-icon" href="template1/assets/img/apple-icon.png">
<link rel="shortcut icon" type="image/x-icon"
	href="template1/assets/img/favicon.ico">
<link rel="stylesheet" href="template1/assets/css/bootstrap.min.css">
<link rel="stylesheet" href="template1/assets/css/templatemo.css">
<link rel="stylesheet" href="template1/assets/css/custom.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
<link rel="stylesheet" href="template1/assets/css/fontawesome.min.css">
<link rel="stylesheet" type="text/css"
	href="template1/assets/css/slick.min.css">
<link rel="stylesheet" type="text/css"
	href="template1/assets/css/slick-theme.css">

<script>var contextPath = "${pageContext.request.contextPath}";</script>
<script src="${pageContext.request.contextPath}/js/reply.js"></script>
<style>

.star-rating {
  border:none;
  display:flex;
  flex-direction: row-reverse;
  font-size:0.8em;
  justify-content:space-around;
  padding:0 .2em;
  text-align:center;
  width:5em;
  
}

.star-rating input {
  display:none;
}

.star-rating label {
  color:#ccc;
  cursor:pointer;
}

.star-rating :checked ~ label {
  color:#f90;
}
.reply {
  border: 2px solid #FF4848;
  min-width: 100px;
  height: 30px;
  background-color:#ffffff;
  border-radius: 25px;
 text-align:center;
 font-family: Arial;
  font-size: 14px;
  color:#FF4848 !important;
   align-items: center;
}

.reply:hover {
  background-color: #FF4848;
}
.replybtn {
  border: 2px solid #15161D;
  min-width: 50px;
  height: 30px;
  background-color:#ffffff;
  border-radius: 25px;
 text-align:center;
 font-family: Arial;
  font-size: 14px;
  color:#15161D !important;
   align-items: center;
}

.replybtn:hover {
  background-color: #15161D;
}

</style>
</head>

<body>
	<nav class="navbar navbar-expand-lg navbar-light shadow">
	<div
		class="container d-flex justify-content-between align-items-center">
		<a class="navbar-brand text-success logo h1 align-self-center"
			href="StoreProductListAction.st?store_num=${pdto.store_num}">${pdto.store_name}</a>

		<button class="navbar-toggler border-0" type="button"
			data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div
			class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between"
			id="templatemo_main_nav">
			<div class="flex-fill">
				<ul class="nav navbar-nav d-flex justify-content-between mx-lg-auto">
					<li class="nav-item"></li>
				</ul>
			</div>
			<div class="navbar align-self-center d-flex">
				<div class="d-lg-none flex-sm-fill mt-3 mb-4 col-7 col-sm-auto pr-3">
					<div class="input-group">
						<input type="text" class="form-control" id="inputMobileSearch"
							placeholder="Search ...">
						<div class="input-group-text">
							<i class="fa fa-fw fa-search"></i>
						</div>
					</div>
				</div>
				<a href="StoreProductListAction.st?store_num=${pdto.store_num}" type="button" class="btn btn-success btn-sm"
				style="color: #fff">
					상품목록 </a>
			</div>
		</div>

	</div>
	</nav>
	<!-- Close Header -->



	<!-- Open Content -->
	<section class="bg-light">
	<form name="newProduct" action="StoreProductDetail.st"
		class="form-horizontal" method="post" enctype="multipart/form-data">
		<div class="container pb-5">
			<div class="row">
				<div class="col-lg-5 mt-5">
					<div class="row" align="center">
						<img class="card-img img-fluid"
							src="product_img_upload/${pdto.product_img}" alt="">
					</div>
				</div>

				<div class="col-lg-7 mt-5">
					<div class="card">
						<div class="card-body" align="center" style="margin-top: 30px;">
							<h1 class="h2">${pdto.product_name}</h1>
							<p class="h3 py-2">${pdto.product_price}원</p>
							<p style="color: #59ab6e; font-size: 30px;">${pdto.product_brand}</p>
						</div>
	
	
						<c:if test="${pdto.product_count eq 0 }">
								<h4 align="center">품절된 상품입니다.</h4>
						</c:if>
						<c:if test="${pdto.product_count ne 0 }">
							<div class="row">
								<div align="center">
									<li class="list-inline-item text-right" align="center">수량</li> <input
										type="number" id="quantity" step="1" min="1" max="${pdto.product_count}"
										name="quantity" value="1" 
										style="text-align: right; margin-right: 20px;"> <input
										value="${pdto.product_num}" type="hidden" name="product_num"
										id="product_num" />
									<button type="button" class="btn btn-success btn-lg"
										id="addbasket">장바구니 담기</button>
								</div>
							</div>
						</c:if>
						<p style="margin : 30px;">${pdto.product_description}</p>
					</div>
				</div>
			</div>
		</div>
	</form>
	
	</section>
	<!-- 상품 리뷰  -->

				<div class="row" style="width: 70%; margin-left: 280px;">
					<div class="col-md-12">
						<hr>
						<c:if test="${rvlist.size() eq 0 || rvlist.size() eq null}">
							<h3>상품 리뷰</h3>
							<div class="row"
								style="margin-top: 30px; background-color: #f7fafc; height: 300px;"
								align="center">
								<div class="col-md-4" style="margin-top: 30px;">
									<div class="row" align="center">
										<div class="col-md-12">
											<h4>상품 총 평점</h4>
										</div>
									</div>
									<div class="star-rating"
										style="margin-top: 40px; font-size: 2.5em;">
										<c:forEach var="s" begin="1" step="1" end="5">
											<c:if test="${0 != 6-s }">
												<input type="radio" id="${6-s }-stars" name="rating"
													value="${6-s }" disabled />
												<label for="${6-s }-stars" class="star">&#9733;</label>
											</c:if>
											<c:if test="${0 == 6-s }">
												<input type="radio" id="${6-s }-stars" name="rating"
													value="${6-s }" checked disabled />
												<label for="${6-s }-stars" class="star">&#9733;</label>
											</c:if>
										</c:forEach>
									</div>
									<h2>
										0/<span style="color: #E1E1E1;">5</span>
									</h2>
								</div>
								<div class="col-md-4" style="margin-top: 30px;">
									<div class="row">
										<div class="col-md-12">
											<h4>전체 리뷰수</h4>
										</div>
									</div>
									<div class="row">
										<div class="col-md-12" style="margin-top: 45px;">
											<img
												src="${pageContext.request.contextPath}/images/review.png"
												width="20%">
										</div>
									</div>
									<div class="row">
										<div class="col-md-12" align="center">
											<h2>0</h2>
										</div>
									</div>
								</div>
								<div class="col-md-4" style="margin-top: 30px;">
									<div class="row">
										<div class="col-md-12">
											<h4>평점 비율</h4>
										</div>
									</div>
									<div class="row" style="margin-top: 40px;" align="right">
										<div class="col-md-6">상품 만족도</div>
										<div class="col-md-5" align="left">
											<div class="star-rating" style="font-size: 0.8em;">
												<c:forEach var="s" begin="1" step="1" end="5">
													<c:if test="${0 != 6-s }">
														<input type="radio" id="${6-s }-stars" name="ratinga"
															value="${6-s }" disabled />
														<label for="${6-s }-stars" class="star">&#9733;</label>
													</c:if>
													<c:if test="${0 == 6-s }">
														<input type="radio" id="${6-s }-stars" name="ratinga"
															value="${6-s }" checked disabled />
														<label for="${6-s }-stars" class="star">&#9733;</label>
													</c:if>
												</c:forEach>
											</div>
										</div>
									</div>
									<div class="row" style="margin-top: 20px;" align="right">
										<div class="col-md-6">배송 만족도</div>
										<div class="col-md-5" align="left">
											<div class="star-rating" style="font-size: 0.8em;">
												<c:forEach var="s" begin="1" step="1" end="5">
													<c:if test="${0 != 6-s }">
														<input type="radio" id="${6-s }-stars" name="ratingb"
															value="${6-s }" disabled />
														<label for="${6-s }-stars" class="star">&#9733;</label>
													</c:if>
													<c:if test="${0 == 6-s }">
														<input type="radio" id="${6-s }-stars" name="ratingb"
															value="${6-s }" checked disabled />
														<label for="${6-s }-stars" class="star">&#9733;</label>
													</c:if>
												</c:forEach>
											</div>
										</div>
									</div>
									<div class="row" style="margin-top: 20px;" align="right">
										<div class="col-md-6">재구매 의사</div>
										<div class="col-md-5" align="left">
											<div class="star-rating" style="font-size: 0.8em;">
												<c:forEach var="s" begin="1" step="1" end="5">
													<c:if test="${0 != 6-s }">
														<input type="radio" id="${6-s }-stars" name="ratingc"
															value="${6-s }" disabled />
														<label for="${6-s }-stars" class="star">&#9733;</label>
													</c:if>
													<c:if test="${0 == 6-s }">
														<input type="radio" id="${6-s }-stars" name="ratingc"
															value="${6-s }" checked disabled />
														<label for="${6-s }-stars" class="star">&#9733;</label>
													</c:if>
												</c:forEach>
											</div>
										</div>
									</div>

								</div>
							</div>
						</c:if>
						<!-- ---------------------------- -->
						<c:if test="${rvlist.size() > 0 }">
							<h3>상품 리뷰</h3>
							<div class="row"
								style="margin-top: 30px; background-color: #f7fafc; height: 300px;"
								align="center">
								<div class="col-md-4" style="margin-top: 30px;">
									<div class="row" align="center">
										<div class="col-md-12">상품 총 평점</div>
									</div>
									<c:forEach var="rv" items="${rvlist }">
										<c:set var="total" value="${total+(rv.rating1+rv.rating2+rv.rating3)/3}" />
										<c:set var="rating1" value="${rating1+rv.rating1 }"/>
										<c:set var="rating2" value="${rating2+rv.rating2 }"/>
										<c:set var="rating3" value="${rating3+rv.rating3 }"/>
									</c:forEach>
									<div class="star-rating"
										style="margin-top: 40px; font-size: 2.5em;">
										<fmt:formatNumber var="total_rating" value="${total/rvlist.size()}" pattern="0" />
										<c:forEach var="s" begin="1" step="1" end="5">
											<c:if test="${total_rating != 6-s }">
												<input type="radio" id="${6-s }-stars" name="rating${i }"
													value="${6-s }" disabled />
												<label for="${6-s }-stars" class="star">&#9733;</label>
											</c:if>
											<c:if test="${total_rating == 6-s }">
												<input type="radio" id="${6-s }-stars" name="rating${i }"
													value="${6-s }" checked disabled />
												<label for="${6-s }-stars" class="star">&#9733;</label>
											</c:if>
										</c:forEach>
									</div>
									<h2>
										<fmt:formatNumber value="${total/rvlist.size()}" pattern="0.0" />
										/<span style="color: #E1E1E1;">5</span>
									</h2>
								</div>
								<div class="col-md-4" style="margin-top: 30px;">
									<div class="row">
										<div class="col-md-12">전체 리뷰수</div>
									</div>
									<div class="row">
										<div class="col-md-12" style="margin-top: 45px;">
											<img
												src="${pageContext.request.contextPath}/images/review.png"
												width="20%">
										</div>
									</div>
									<div class="row">
										<div class="col-md-12" align="center">
											<h2>${rvlist.size() }</h2>
										</div>
									</div>
								</div>
								<div class="col-md-4" style="margin-top: 30px;">
									<div class="row">
										<div class="col-md-12">
											<h4>평점 비율</h4>
										</div>
									</div>
									<div class="row" style="margin-top: 40px;" align="right">
									<fmt:formatNumber var="rating1" value="${rating1/rvlist.size()}" pattern="0.0" />
										<div class="col-md-6">상품 만족도 </div>
										<div class="col-md-5" align="left">
											<div class="star-rating" style="font-size: 0.8em;">
											&nbsp;&nbsp;&nbsp;${rating1 }
											<fmt:formatNumber var="rating1" value="${rating1}" pattern="0" />
												<c:forEach var="s" begin="1" step="1" end="5">
													<c:if test="${rating1 != 6-s }">
														<input type="radio" id="${6-s }-stars" name="ratinga"
															value="${6-s }" disabled />
														<label for="${6-s }-stars" class="star">&#9733;</label>
													</c:if>
													<c:if test="${rating1 == 6-s }">
														<input type="radio" id="${6-s }-stars" name="ratinga"
															value="${6-s }" checked disabled />
														<label for="${6-s }-stars" class="star">&#9733;</label>
													</c:if>
												</c:forEach>
											</div>
										</div>
									</div>
									<div class="row" style="margin-top: 20px;" align="right">
									<fmt:formatNumber var="rating2" value="${rating2/rvlist.size()}" pattern="0.0" />
										<div class="col-md-6">배송 만족도</div>
										<div class="col-md-5" align="left">
											<div class="star-rating" style="font-size: 0.8em;">
											&nbsp;&nbsp;&nbsp;${rating2 }
											<fmt:formatNumber var="rating2" value="${rating2}" pattern="0" />
												<c:forEach var="s" begin="1" step="1" end="5">
													<c:if test="${rating2 != 6-s }">
														<input type="radio" id="${6-s }-stars" name="ratingb"
															value="${6-s }" disabled />
														<label for="${6-s }-stars" class="star">&#9733;</label>
													</c:if>
													<c:if test="${rating2 == 6-s }">
														<input type="radio" id="${6-s }-stars" name="ratingb"
															value="${6-s }" checked disabled />
														<label for="${6-s }-stars" class="star">&#9733;</label>
													</c:if>
												</c:forEach>
											</div>
										</div>
									</div>
									<div class="row" style="margin-top: 20px;" align="right">
									<fmt:formatNumber var="rating3" value="${rating3/rvlist.size()}" pattern="0.0" />
										<div class="col-md-6">재구매 의사</div>
										<div class="col-md-5" align="left">
											<div class="star-rating" style="font-size: 0.8em;">
											&nbsp;&nbsp;&nbsp;${rating3 }
											<fmt:formatNumber var="rating3" value="${rating3}" pattern="0" />
												<c:forEach var="s" begin="1" step="1" end="5">
													<c:if test="${rating3 != 6-s }">
														<input type="radio" id="${6-s }-stars" name="ratingc"
															value="${6-s }" disabled />
														<label for="${6-s }-stars" class="star">&#9733;</label>
													</c:if>
													<c:if test="${rating3 == 6-s }">
														<input type="radio" id="${6-s }-stars" name="ratingc"
															value="${6-s }" checked disabled />
														<label for="${6-s }-stars" class="star">&#9733;</label>
													</c:if>
												</c:forEach>
											</div>
										</div>
									</div>
								</div>
							</div>
						</c:if>
						<hr>
							<h4>리뷰</h4>
						<c:if test="${rvlist.size() eq 0 || rvlist.size() eq null}">
							<div class="row">
								<div class="col-md-12">작성된 리뷰가 없습니다.</div>
							</div>
						</c:if>
						<c:set var="loop" value="true" />
						<c:if test="${rvlist.size() > 0 }">
							<c:forEach var="i" begin="${p.beginPerPage }" step="1"
								end="${p.endPerPage}">
								<c:if test="${p.total == i }">
									<c:set var="loop" value="false" />
								</c:if>
								<c:if test="${loop}">
									<div class="row" style="margin-top: 40px;">
										<fmt:formatNumber var="rating"
											value="${(rvlist[i].rating1+rvlist[i].rating2+rvlist[i].rating3)/3}"
											pattern="0.0" />
										<div class="col-md-10">
											<div class="star-rating">
												/${rating }
												<fmt:formatNumber var="rating"
													value="${(rvlist[i].rating1+rvlist[i].rating2+rvlist[i].rating3)/3}"
													pattern="0" />
												<c:forEach var="s" begin="1" step="1" end="5">
													<c:if test="${rating != 6-s }">
														<input type="radio" id="${6-s }-stars" name="rating${i }"
															value="${6-s }" disabled />
														<label for="${6-s }-stars" class="star">&#9733;</label>
													</c:if>
													<c:if test="${rating == 6-s }">
														<input type="radio" id="${6-s }-stars" name="rating${i }"
															value="${6-s }" checked disabled />
														<label for="${6-s }-stars" class="star">&#9733;</label>
													</c:if>
												</c:forEach>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-12">
											(${fn:substring(rvlist[i].id,0,4) }****)/
											<fmt:formatDate value="${rvlist[i].regdate }" />
										</div>
									</div>
									<div class="row" style="margin-top: 10px;">
										<div class="col-md-8">${rvlist[i].review_content }</div>
										<div class="col-md-2 offset-2">
											<img alt="" src="${pageContext.request.contextPath}/upload_review/${rvlist[i].review_img }" width="100%" height="150px;">
										</div>
									</div>
									<c:set var="loop2" value="true"/>
									<c:if test="${relist.size()>0 }">
										<c:forEach var="y" begin="0" step="1" end="${relist.size()-1 }">
											<c:if test="${loop2 }">
												<c:if test="${relist[y].review_num == rvlist[i].review_num }">
													<c:set var="k" value="${y }" />
													<c:set var="loop2" value="false" />
												</c:if>
											</c:if>
										</c:forEach>
									</c:if>
									<c:if test="${relist[k].review_num == rvlist[i].review_num }">
										<div class="row">
											<div class="col-md-8" style="background-color: #f1f3f5;">
												<div class="row">
													<div class="col-md-12">
														<span style="font-weight: bold;">판매자/<fmt:formatDate value="${relist[k].regdate }" pattern="yyyy.MM.dd" /></span>
													</div>
												</div>
												<div class="row">
													<div class="col-md-12">
														<span style=" color: black;">${relist[k].reply_contents }</span>
													</div>
												</div>	
											</div>
										</div>
									</c:if>
									<c:if test="${relist[k].review_num != rvlist[i].review_num }">
										<c:if test="${pdto.member_num == member_num }">
											<div class="row">
												<div class="col-md-12">
													<button type="button" class="reply">답변달기</button>	
												</div>
											</div>
										</c:if>
									<div class="row reply_div" hidden>
										<div class="col-md-12">
											<div class="row">
												<div class="col-md-12">
													<textarea rows="4" cols="40" style="resize:none; outline:none; border: solid 1px #f1f3f5;  border-radius: 10px;"></textarea>
													<button type="button" class="replybtn">등록</button>
													<input type="text" id="review_num" value="${rvlist[i].review_num }" hidden/>
												</div>
											</div>	
										</div>
									</div>
									<div class="row reply_div2" hidden>
										<div class="col-md-12">
											<div class="row">
												<div class="col-md-12">
													<span class="a" style="font-weight: bold;"></span>
												</div>
											</div>
											<div class="row">
												<div class="col-md-12">
													<span class="b" style="background-color: gray; color: black;"></span>
												</div>
											</div>	
										</div>
									</div>
									</c:if>
									<hr>
								</c:if>
							</c:forEach>
						</c:if>
					</div>
				</div>
							<div class="row">
						<div class="col-md-6 offset-4 paging" style="height: 120px;">
							<ul class="pagination">
								<c:if test="${p.prev }">
									<li class="page-item previous"><a class="page-link"
										onclick="paging(${p.startPage-1 });">Previous</a></li>
								</c:if>
								<c:forEach var="num" begin="${p.startPage }" step="1"
									end="${p.endPage }">
									<li class="page-item"><a class="page-link"
										${p.cri.nowPage == num ? 'style="color:red;border-color:black"':''}
										href="StoreProductDetail.st?page=true&nowPage=${num }&product_num=${pdto.product_num}">${num }</a>
									</li>
								</c:forEach>

								<c:if test="${p.next }">
									<li class="page-item next"><a class="page-link"
										onclick="paging(${p.endPage + 1 });">Next</a></li>
								</c:if>
							</ul>
						</div>
					</div>
				</div>
				
	

	<script src="template1/assets/js/jquery-1.11.0.min.js"></script>
	<script src="template1/assets/js/jquery-migrate-1.2.1.min.js"></script>
	<script src="template1/assets/js/bootstrap.bundle.min.js"></script>
	<script src="template1/assets/js/templatemo.js"></script>
	<script src="template1/assets/js/custom.js"></script>
	<script src="js/addbasket.js"></script>

	<!-- 슬라이드 start 넣을꺼면 하고 남겨둠!  -->
	<script src="template1/assets/js/slick.min.js"></script>
	<script>
		$('#carousel-related-product').slick({
			infinite : true,
			arrows : false,
			slidesToShow : 4,
			slidesToScroll : 3,
			dots : true,
			responsive : [ {
				breakpoint : 1024,
				settings : {
					slidesToShow : 3,
					slidesToScroll : 3
				}
			}, {
				breakpoint : 600,
				settings : {
					slidesToShow : 2,
					slidesToScroll : 3
				}
			}, {
				breakpoint : 480,
				settings : {
					slidesToShow : 2,
					slidesToScroll : 3
				}
			} ]
		});
	</script>
</body>

</html>