<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>
<title></title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600,700"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Rokkitt:100,300,400,700"
	rel="stylesheet">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>

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

<!-- <script src="http://code.jquery.com/jquery-latest.min.js"></script> -->
<script>
	var contextPath = "${pageContext.request.contextPath}";
</script>
<!-- <script src="js/receiver.js"></script> -->
<script type="text/javascript">

if(document.getElementById("basic_num").checked) {
    document.getElementById("basic_num_hidden").disabled = true;
}

 function close_btn(){
       window.close();
};

function addr_update(){
	document.form_addr.action = contextPath + "/ReceiverUpdate";
	document.form_addr.submit();

};


</script>



<style type="text/css">
.myButton {
	box-shadow: inset 0px 1px 0px 0px #ffffff;
	background: linear-gradient(to bottom, #ffffff 5%, #f6f6f6 100%);
	background-color: #ffffff;
	border-radius: 6px;
	border: 1px solid #dcdcdc;
	display: inline-block;
	cursor: pointer;
	color: #666666;
	font-family: Arial;
	font-size: 15px;
	font-weight: bold;
	padding: 6px 24px;
	text-decoration: none;
	text-shadow: 0px 1px 0px #ffffff;
}

.myButton:hover {
	background: linear-gradient(to bottom, #f6f6f6 5%, #ffffff 100%);
	background-color: #f6f6f6;
}

.myButton:active {
	position: relative;
	top: 1px;
}

.check {
	color: red;
	font-size: 13px;
}

.check2 {
	color: green;
	font-size: 13px;
}
input[type="text"] {
  width: 40%;
  border: 1px solid DarkGray;
  border-radius: 4px;
  margin: 8px 0;
  outline: none;
  padding: 8px;
  box-sizing: border-box;
  transition: 0.3s;
}


</style>
</head>
<body>
	
	<div class="row">
			<div class="col-md-3" align="right">
				 <img
					src="images/modooLogo.png"
					alt="Logo" style="height: 30px">
			
			</div>
	</div>
	<h4 align="center">배송지 등록/수정</h4>
	<h6 align="center">배송지 정보 상세</h6>
	<form action="ReceiverInsert" name="form_addr">
	<table align="center" style="margin-left: 50px">
		<tr>
			<th>
				<div>배송지명</div>
			</th>
			<td>
				<div>
					
						<div class="col-md-4">
							<input type="text" id="addr_name" name="addr_name" style="width:150px" value="${rdto.address_name}">
					</div>
					
				</div>
			</td>
		</tr>
		<tr>
			<th>
				<div>수령인</div>
			</th>
			<td>
				<div>
					
						<div class="col-md-7">
							<input type="text" id="receiver_name" name="receiver_name" value="${rdto.receiver_name}">
					</div>
					
				</div>
			</td>
		</tr>
		<tr>
			<th>
				<div>주소</div>
			</th>
			<td>
				<div style="margin-left: 15px">
					
					<div class="row">
						<div style="margin-right: 10px;margin-left: 15px">
							<input type="text" id="sample6_postcode" name="addr1" style="width: 100px" value="${rdto.receiver_addr1}">
						</div>
						<div>
							<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" id="post_btn" class="myButton"> <br>
						</div>
					</div>
				
					<div>
						<input type="text" id="sample6_address" name="addr2" value="${rdto.receiver_addr2}" style="width: 300px;">&nbsp;
					</div>
					<div>
						<input type="text" id="sample6_detailAddress" name="addr3" value="${rdto.receiver_addr3}" style="width: 300px;">
					</div>
					
				</div>
			</td>
		</tr>
		<tr>
			<th>
				<div>연락처</div>
			</th>
			<td>
				<div>
					
						<div class="col-md-7">
							<input type="text" id="receiver_phone" name="receiver_phone" value="${rdto.receiver_phone}">
					</div>
					
				</div>
			</td>
		</tr>
		<tr>
			<th>
				<div>기본 <br>배송지</div>
			</th>
			<td>
				<div>
					<div class="col-md-7">
							<input type="checkbox" name="basic_num" id="basic_num" value='1' onclick="check_click();"/> 기본배송지로 설정
								<input type="hidden" name="basic_num" id="basic_num_hidden" value="0" /> 
					</div>
					
				</div>
			</td>
		</tr>
	
	</table>
		
			<div class="row" style="margin-left: 100px">
				<div style="margin-right: 20px">
					<input type="button" class="myButton" value="닫기" onclick="close_btn();" >
				</div>
				
				<div>
					<input type="button" class="myButton" value="저장" name="addr_add_btn" id="addr_add_btn" onclick="addr_update();">
				</div>
			</div>
		</div>
	</form>
	<!-- 	</div> -->
	<!-- popper -->
	<script src="js/popper.min.js"></script>
	<!-- bootstrap 4.1 -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Flexslider -->
	<script src="js/jquery.flexslider-min.js"></script>
	<!-- Owl carousel -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- Magnific Popup -->
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/magnific-popup-options.js"></script>
	<!-- Date Picker -->
	<script src="js/bootstrap-datepicker.js"></script>
	<!-- Stellar Parallax -->
	<script src="js/jquery.stellar.min.js"></script>
	<!-- Main -->
	<script src="js/main.js"></script>
<!-- 카카오 우편번호 api -->
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
function sample6_execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) { 
            var address = ''; // 주소 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                address = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                address = data.jibunAddress;
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('sample6_postcode').value = data.zonecode;
            document.getElementById("sample6_address").value = address;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("sample6_detailAddress").focus();
        }
    }).open();
}
</script>
</body>
</html>