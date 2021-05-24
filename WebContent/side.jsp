
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600,700" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Rokkitt:100,300,400,700" rel="stylesheet">
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Ion Icon Fonts-->
	<link rel="stylesheet" href="css/ionicons.min.css">

	<!-- Magnific Popup -->
	<link rel="stylesheet" href="css/magnific-popup.css">

	<!-- Flexslider  -->
	<link rel="stylesheet" href="css/flexslider.css">

	<!-- Owl Carousel -->
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.theme.default.min.css">
	
	<!-- Date Picker -->
	<link rel="stylesheet" href="css/bootstrap-datepicker.css">
	<!-- Flaticons  -->
	<link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">

	<!-- Theme style  -->
	<link rel="stylesheet" href="css/style.css">

<style>
a:link {
  color : black;
  text-decoration: none;
}
a:visited {
  color : black;
  text-decoration: none;
}
a:hover {
  color : black;
  text-decoration: none;
}
a:active {
  color : black;
  text-decoration: none;
}
.side{
	
}
</style>
</head>
<c:if test="${member_code == null }">
	<c:set var="member_code" value="1"/>
</c:if>
<body>
	<form method="post" id="index">
		<div class="row">
			<div class="col-md-9 col-md-offset-1">
				<h3><a>회원 정보</a></h3>
			</div>
		</div>
		<div class="row">
			<div class="col-md-9 col-md-offset-2">
				<hr>
				<h4>나의 쇼핑</h4>
			</div>
		</div>
		<div class="row" style="margin-top: 10px">
			<div class="col-md-9 col-md-offset-2 side"align="center" >
				<a href="#">주문/배송내역</a>
			</div>
		</div>
		<div class="row">
			<div class="col-md-9 col-md-offset-2 side"align="center" >
				<a href="basket.bo">장바구니</a>
			</div>
		</div>
		<div class="row">
			<div class="col-md-9 col-md-offset-2 side"align="center" >
				<a href="#">위시리스트</a>
			</div>
		</div>
		<div class="row">
			<div class="col-md-9 col-md-offset-2 side"align="center" >
				<a href="#">배송지관리</a>
			</div>
		</div>
		<div class="row">
			<div class="col-md-9 col-md-offset-2 side"align="center" >
				<a href="#">반품/교환내역</a>
			</div>
		</div>
		<div class="row">
			<div class="col-md-9 col-md-offset-2 side"align="center" >
				<a href="#">환불내역</a>
			</div>
		</div>
		<c:if test="${member_code ==1 }">
		<div class="row">
			<div class="col-md-9 col-md-offset-2">
				<hr>
				<a href="Seller.me">
					<h5>판매자 등록</h5>
				</a>
			</div>
		</div>
		</c:if>
		<c:if test="${member_code ==2 }">
		<div class="row">
			<div class="col-md-9 col-md-offset-2">
				<hr>
				<h5>판매 관리</h5>
			</div>
		</div>
		
		<div class="row" style="margin-top: 10px">
			<div class="col-md-9 col-md-offset-2 side"align="center" >
				<a href="#">스토어 정보 변경</a>
			</div>
		</div>
		<div class="row">
			<div class="col-md-9 col-md-offset-2 side"align="center" >
				<a href="#">내 스토어</a>
			</div>
		</div>
		<div class="row">
			<div class="col-md-9 col-md-offset-2 side"align="center" >
				<a href="#">스토어 현황</a>
			</div>
		</div>
		<div class="row">
			<div class="col-md-9 col-md-offset-2 side"align="center" >
				<a href="#">물품등록/삭제</a>
			</div>
		</div>
		</c:if>
		<div class="row">
			<div class="col-md-9 col-md-offset-2">
				<hr>
				<h5>나의 정보</h5>
			</div>
		</div>
		<div class="row" style="margin-top: 10px">
			<div class="col-md-9 col-md-offset-2 side"align="center" >
				<a href="MemberUpdate.me">회원 정보 변경</a>
			</div>
		</div>
		<div class="row">
			<div class="col-md-9 col-md-offset-2 side"align="center" >
				<a href="#">회원 탈퇴</a>
			</div>
		</div>
	</form>
</body>
</html>