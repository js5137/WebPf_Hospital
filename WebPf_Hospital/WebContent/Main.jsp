<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>별빛 동물병원</title>
<style type="text/css">
	#main{
	    width: 80%; height: 1000px;
	    margin: 0 auto;
	    text-align: center;
	    position: relative;
	}
	
	#main div{
	    border: lightgray 1px solid;
	    border-radius: 5px;
	    box-shadow: lightgray 1px 1px 2px;
	    margin: 10px;
	    float: left;
	}
	
	#area1{
	    width: 25%; height: 600px;
	}
	
	#area2{
	    width: 43%; height: 600px;
	}
	
	#area3{
	    width: 25%; height: 600px;
	}
	span{
		font-weight: bolder;
	}
	
	button{
	    width: 100px; height: 100px;
	    background: lightgray;
	    border: lightgray 1px solid;
	    font-size: 13pt; font-weight: bolder;
	    border-radius: 50px;
	}
	
	button:hover {
		cursor: pointer;
	}
	
	#introduce{
		
	}
	
</style>
</head>
<body>
	<jsp:include page="Header.jsp"/>
	<div id="main">
		<div id="area1">
			<h2>영업시간</h2>
			<span>월요일</span>: 10 A.M ~ 08 P.M<br>
			<span>화요일</span>: 10 A.M ~ 08 P.M<br>
			<span>수요일</span>: 10 A.M ~ 08 P.M<br>
			<span>목요일</span>: 10 A.M ~ 08 P.M<br>
			<span>금요일</span>: 10 A.M ~ 08 P.M<br>
			<span style="color: blue">토요일</span>: 10 A.M ~ 08 P.M<br>
			<span style="color: red">일요일</span>: 10 A.M ~ 08 P.M<br>
		</div>
		<div id="area2">
			<h2>병원 소개</h2>
			<div id="introduce" style="border: none; box-shadow: 0 0 0 white; padding: 20px; text-align: left; word-break: keep-all;">
			별빛 동물병원 홈페이지에 방문하신 것을 환영합니다.<br><br>
			별빛 동물병원은 보호자가 반려동물을 믿고 맡길 수 있는 병원이 되기 위해 최선을 다하고 있습니다.<br>
			깨끗하고 청결한 시설, 최선을 다하는 진료, 반려동물을 사랑하는 마음으로 보호자에게 다가가겠습니다.<br><br>
			회원가입 후 온라인으로 예약하시면 원하시는 시간에 편하게 진료를 받으실 수 있으며, 예약/진료내역을 확인할 수 있습니다.</div>
			<p>
			<a href="ReservationCheck.jsp"><img src="image/pen.png"></a>
		</div>
		<div id="area3">
			<h2>연락창구</h2>
			전화번호: 000-0000-0000<br>
			메일: medical&#64;petmail.com
		</div>
	</div>
	<jsp:include page="Footer.jsp"/>
</body>
</html>