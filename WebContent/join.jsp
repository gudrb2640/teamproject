<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<script>var contextPath = "${pageContext.request.contextPath}";</script>

<head>
<title>JOIN</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">


<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/bootstrap.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="js/login.js"></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" href="css/style.css">
<!-- <link rel="stylesheet" href="css/login.css"> -->

	<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet">

<style>
.check {
	color: red;
	font-size: 13px;
}

.check2 {
	color: green;
	font-size: 13px;
}
input[type="text"], .form-control {
  width: 100%;
  border: none !important;
  border-radius: 4px;
  margin: 8px 0;
  outline: none;
  padding: 8px;
  box-sizing: border-box;
  transition: 0.3s;
  background-color: #F6F6F6 !important;
}

input[type="text"]:focus {
  border-color: dodgerBlue;
  box-shadow: 0 0 8px 0 dodgerBlue;
}

.inputWithIcon input[type="text"] {
  padding-left: 40px;
}

.inputWithIcon {
  position: relative;
}
.myButton {
  border: 2px solid #FF4848;
  min-width: 70px !important;
  height: 30px !important;
  background-color:#ffffff;
  border-radius: 25px;
 text-align:center;
 font-family: Arial;
  font-size: 14px;
  color:#FF4848 !important;
   align-items: center;
}

.myButton:hover {
  background-color: #FF4848;
}

</style>

</head>
<body >
	
	<section class="ftco-section" >
		<div class="container" >
			<div class="row " >
				<div class="col-md-7 offset-2"  >
					<div class="product-name d-flex " style="background-color: : #22CC88; !important; margin-top: 50px; text-align: center;"  >
							<div class="col-md-12">?????? ??????</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-12" style="background-color: white;">
			<div class="row justify-content-center">
				<div class="col-md-6 offset-2">
					<div class="login-wrap">
						<form action="./MemberJoinAction.me" class="signup-form">
							<div class="row">
								<div class="col-md-8">
									<div class="form-group mb-4">
										<input id="name" name="name" type="text" required="required" class="form-control" placeholder="??????" style="width: 250px;">
										<span id="name_check" class="check"></span>
                                    	<span id="name_check2" class="check2"></span>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-8">
									<div class="form-group mb-4">
										<input id="r_id" name="id" type="text" class="form-control" required="required" placeholder="?????????" maxlength="20" style="width: 250px;">
										<span id="id_check" class="check"></span>
                                    	<span id="id_check2" class="check2"></span>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-3">
										<input id="r_pw" name="pw" required="required" type="password" class="form-control"
											placeholder="????????????" style="width: 250px;">
								</div>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<div class="col-md-4">
										<input id="pw_confirm" name="pw_confirm" required="required" type="password" class="form-control"
											placeholder="???????????? ?????????" style="width: 250px;">
								</div>
							</div>
							
							
							<div class="row">
								<div class="col-md-12">
									<span id="pw_check" class="check" style="width: 250px;"></span>
		                            <span id="pw_check2" class="check2"></span>
	                            	<span id="pw_confirm_check" class="check" style="width: 250px;"></span>
	                                <span id="pw_confirm_check2" class="check2"></span>
                                </div>
							</div>
							<div class="row">
								<div class="col-md-5">
										<input id="email" name="email" type="text" required="required" class="form-control" placeholder="?????????" style="width: 250px;">
	                                    <span id="email_check" class="check"></span>
	                                    <span id="email_check2" class="check2"></span>
								</div>
								<div class="col-md-4">
                                    <input type="button" id="email_cf_btn" value="?????? " class="myButton" >
                                 </div>
                                 		</div>
                              <div class="row">
								<div class="col-md-4">
									<div class="form-group mb-4">
										<input name="cf_num" id="cf_num" type="text" required="required" class="form-control" placeholder="??????????????????" style="width: 250px;">
										<span id="cf_num_check2" class="check" hidden>????????? ???????????? ????????????.</span>
									</div>
								</div>
								<div class="col-md-1">
										 <span id="cf_num_check" class="check2" hidden><svg xmlns='http://www.w3.org/2000/svg' width='16' height='16' fill='currentColor' class='bi bi-check' viewBox='0 0 16 16'><path d='M10.97 4.97a.75.75 0 0 1 1.07 1.05l-3.99 4.99a.75.75 0 0 1-1.08.02L4.324 8.384a.75.75 0 1 1 1.06-1.06l2.094 2.093 3.473-4.425a.267.267 0 0 1 .02-.022z'/></svg></span>
								</div>
								<div class="col-md-3">
									<input style="width: 25px;" type="button" id="cf_num_btn" value="??????" class="myButton">
								</div>
							</div>
							<div class="row">
								<div class="col-md-12">
									<div class="form-group mb-4">
										<input id="phone" name="phone" required="required" type="tel"
											placeholder="???????????????" maxlength="11" class="form-control" style="width: 250px;"/> <span
											id="phone_check" class="check"></span> <span
											id="phone_check2" class="check2"></span>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-1">
									<input type="radio" value="???" name="radio_btn" id="radio_btn1" checked="checked"> ???
								</div>
							
								<div class="col-md-1">
										<input type="radio" value="???" name="radio_btn" id="radio_btn2"> ???
								</div>
								<input type="hidden" name="gender" class="gender" value="???">
							</div>
							<div class="row">
								<div class="col-md-5">
									<input class="form-control"  type="text" id="addr1" name="addr1" placeholder="????????????" required style="width: 250px;"><br>
								</div>
								<div class="col-md-7">
									<input type="button" onclick="sample6_execDaumPostcode()" value="???????????? ??????" id="post_btn" class="myButton"> <br>
								</div>
							</div>
							<div class="row">
								<div class="col-md-8">
									<input class="form-control"  type="text" id="addr2" name="addr2" placeholder="??????" required style="width: 250px;">&nbsp;
									<input class="form-control"  type="text" id="addr3" name="addr3" placeholder="????????????" required style="width: 500px;"> <br>
								</div>
							</div>
							<div class="row">
								<div class="col-md-2" style="margin-left: 200px;">
									<div class="form-group d-flex">
										<button type="button" id="join"
											class="myButton" style="width: 200px; height: 60px !important;">??????????????????</button>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		</div>
	</section>

	
	 <!-- ????????? ???????????? api -->
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
function sample6_execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // ???????????? ???????????? ????????? ??????????????? ????????? ????????? ???????????? ??????.

            // ??? ????????? ?????? ????????? ?????? ????????? ????????????.
            // ???????????? ????????? ?????? ?????? ????????? ??????('')?????? ????????????, ?????? ???????????? ?????? ??????.
            var address = ''; // ?????? ??????

            //???????????? ????????? ?????? ????????? ?????? ?????? ?????? ?????? ????????????.
            if (data.userSelectedType === 'R') { // ???????????? ????????? ????????? ???????????? ??????
                address = data.roadAddress;
            } else { // ???????????? ?????? ????????? ???????????? ??????(J)
                address = data.jibunAddress;
            }

    
            // ??????????????? ?????? ????????? ?????? ????????? ?????????.
            document.getElementById('addr1').value = data.zonecode;
            document.getElementById("addr2").value = address;
            // ????????? ???????????? ????????? ????????????.
            document.getElementById("addr3").focus();
        }
    }).open();
}
</script>

</body>
</html>

							