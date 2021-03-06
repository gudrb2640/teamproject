<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<title>아이디 찾기</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/bootstrap.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>var contextPath = "${pageContext.request.contextPath}";</script>
<script src="js/findId.js"></script>
<link rel="stylesheet" href="css/login.css">
<link rel="stylesheet" type="text/css" href="css/util.css">
<link rel="icon" type="image/png" href="images/icons/favicon.ico" />
<style type="text/css">
.myButton {
	box-shadow: inset 0px 1px 0px 0px #ffffff;
	background: linear-gradient(to bottom, #ffffff 5%, #f6f6f6 100%);
	background-color: #ffffff;
	border-radius: 6px;
	border: 1px solid #dcdcdc;
	display: inline-block;
	color: #666666;
	font-family: Arial;
	font-size: 15px;
	font-weight: bold;
	position: absolute;
	text-align: right;
	text-decoration: none;
	text-shadow: 0px 1px 0px #ffffff;
}
.check {
	color: red;
	font-size: 13px;
}

.check2 {
	color: green;
	font-size: 13px;
}
</style>

</head>

<body>

<body>
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-form-title" style="background-image: url(images/bg-01.jpg);">
					<span class="login100-form-title-1">아이디 찾기</span>
				</div>

				<form class="login100-form validate-form" action="" >
					<div class="wrap-input100 validate-input m-b-26" data-validate="your Name is required">
						<span class="label-input100">이름</span> 
						<input class="input100" type="text" id="name" name="name" placeholder="이름을 입력해주세요.">
					</div>
					<div class="wrap-input100 validate-input m-b-26" data-validate="your Email is required">
						<span class="label-input100">이메일</span> 
						<input class="input100" type="text" id="email" name="email" placeholder="이메일을 입력해주세요.">
						<span class="focus-input100"></span>
					</div>
						<p>이메일 주소를 입력한 후 인증번호 받기 버튼을 클릭해주세요.</p>
						<br>	<br>
					<div class="container-login100-form-btn">
						<button class="login100-form-btn" id="find_btn" type="button" style="text-align: right;">인증번호 받기</button></div>
					
					<div class="col-md-12"></div>
					<br> <br>
					
					<div class="wrap-input100 validate-input m-b-18" data-validate="AuthNumber is required">
						<span class="label-input100">인증번호</span> 
						<input class="input100" type="text" disabled="disabled" id="authNum" name="authNum" placeholder="인증번호를 입력해주세요.">
						<span class="focus-input100"></span>
					</div>
						<span id="authNum_check2" class="check2" hidden>인증 완료</span>
						<span id="authNum_check" class="check" hidden>번호가 일치하지 않습니다.</span>
					
					
					<div class="col-md-12"></div>

					<br> <br>

					<div class="container-login100-form-btn">
						<button class="login100-form-btn" type="button" onclick="location.href='./login.jsp'">처음으로</button>
						<div class="col-md-4" >
							<input type="button" id="continue" class="login100-form-btn" value="Continue" hidden/>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>



</body>
</html>