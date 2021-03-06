<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>header</title>

<style>
.h_nav {
	font-size: 12px;
	font-weight: bold;
	color: #797474;
	text-decoration: none;
}
</style>
</head>

<c:if test="${member_code == null }">
	<c:set var="member_code" value="0" />
</c:if>

<body>


	<!-- 로그인 안되었을때 -->
	<c:if test="${member_code == 0}">
		<div class="row"
			style="margin-bottom: 30px; background-color: #F0F0F0;">
			<div class="col-md-6 offset-3" align="right">
				<a class="h_nav" href="Main.main">메인페이지</a> <a class="h_nav"
					href="MemberLogin.me">로그인</a>
			</div>
		</div>
	</c:if>

	<!-- 			로그인 되었을 경우 -->
	<c:if test="${member_code > 0 and member_code < 4}">
		<div class="row"
			style="margin-bottom: 30px; background-color: #F0F0F0;">
			<div class="col-md-3" style="margin-left: 400px;">
				<span>${id}님</span>
				<c:if test="${member_code eq 1}"><img src="images/패밀리.png" alt="일반회원" style="width: 30px; height: 30px;"></c:if> <!-- 일반회원 -->
				<c:if test="${member_code eq 2}"><img src="images/플래티넘.png" alt="일반회원" style="width: 30px; height: 30px;"></c:if><!--플래티넘  회원-->
				<c:if test="${member_code eq 3}"><img src="images/다이아몬드.png" alt="일반회원" style="width: 30px; height: 30px;"></c:if><!-- 다이아  회원 -->
			</div>
			<div class="col-md-3" style="margin-left: 120px;" align="right">

				<a class="h_nav" href="Main.main">메인페이지</a> <a class="h_nav"
					href="OrderContent.or">마이페이지</a> <a class="h_nav" href="basket.bo">장바구니</a>
				<a class="h_nav" href="Seller.me">판매자 등록</a> <a class="h_nav"
					href="MemberLogout.me">로그아웃</a>
			</div>
		</div>
	</c:if>

	<!-- 판매자 로그인 -->


	<c:if test="${member_code > 3 and member_code < 7 }">
		<div class="row"
			style="margin-bottom: 30px; background-color: #F0F0F0;">
			<div class="col-md-3" style="margin-left: 400px;">
				<span>${id}님</span>
				<c:if test="${member_code eq 4}"><img src="images/셀러.png" alt="일반회원" style="width: 30px; height: 30px;"></c:if><!-- 판매자 -->
				<c:if test="${member_code eq 5}"><img src="images/실버.png" alt="일반회원" style="width: 30px; height: 30px;"></c:if><!-- 실버판매자 -->
				<c:if test="${member_code eq 6}"><img src="images/골드.png" alt="일반회원" style="width: 30px; height: 30px;"></c:if><!-- 골드판매자 -->
			</div>

			<div class="col-md-3" style="margin-left: 120px;" align="right">
				<a class="h_nav" href="Main.main">메인페이지</a> <a class="h_nav"
					href="OrderContent.or">마이페이지</a> <a class="h_nav" href="basket.bo">장바구니</a>
				<a class="h_nav" href="MemberLogout.me">로그아웃</a>
			</div>
		</div>
	</c:if>
	<!-- 관리자 -->
	<c:if test="${member_code >=7 }">
		<div class="row"
			style="margin-bottom: 30px; background-color: #F0F0F0;">
			<div class="col-md-6 offset-3" align="right">
				<a class="h_nav" href="Main.main">메인페이지</a> <a class="h_nav"
					href="AdminMain.ad">관리자페이지</a> <a class="h_nav"
					href="MemberLogout.me">로그아웃</a>
			</div>
		</div>
	</c:if>
</body>
</html>
