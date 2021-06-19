<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>별빛 동물병원</title>
<style type="text/css">
	#area1{
        width: 15%;
        text-align: center;
        position: relative;
    }

	#menuBar{
		border-collapse: collapse;
		width: 70%;
	    height: 30%;
	    overflow: auto;
	    margin: auto;
	    position: absolute;
	    top: -270px;
	    right: 0;
	    bottom: 0;
	    left: 0;
	}
	
	#menuBar td{
		border-bottom: 1px lightgray dashed;
	}
	#menuBar a {text-decoration: none; font-size: 14px;}
	#menuBar a:link {text-decoration: none; color: dimgray;}
	#menuBar a:visited {text-decoration: none; color: dimgray;}
	#menuBar a:active {text-decoration: none; color: dimgray;}
	#menuBar a:hover {text-decoration: none; color: dimgray;}
</style>
</head>
<body>
	<div id="area1">
		<h2>${NAME}님</h2>
		<table id="menuBar">
			<tr><td><b>내역확인</b></td></tr>
			<tr><td><a href="CheckPage.jsp">예약내역</a></td></tr>
			<tr><td><a href="DoctorPage.jsp">진료내역</a></td></tr>
			<tr><td><b>환경설정</b></td></tr>
			<tr><td><a href="Setting.jsp">회원정보 수정</a></td></tr>
			<tr><td><a href="Leave.jsp">회원탈퇴</a></td></tr>
		</table>
	</div>
</body>
</html>