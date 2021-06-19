<%@page import="java.sql.*"%>
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
        height: 700px;
		border: lightgray 1px solid;
		border-radius: 5px;
		box-shadow: lightgray 1px 1px 2px;
		margin: 10px;
		float: left;
	}

    #area2{
        width: 80%;
        text-align: center;
        position: relative;
    }
	
	#table{
		border-collapse: collapse;
		width: 90px;
	    overflow: auto;
	    margin: auto;
	    position: absolute;
	    top: 100px;
	    right: 0;
	    bottom: 0;
	    left: 0;
	}
	
	td p{
		text-align: left;
		margin: 3px;
	    font-weight: bold;
	}
	
	input{
	   font-size: 12pt;
	    width: 200px; height: 30px;
	    margin: 3px;
	}
	
	button{
	    width: 100px; height: 100px;
	    background: lightgray;
	    border: lightgray 1px solid;
	    font-size: 13pt; font-weight: bolder;
	    border-radius: 50px;
	}
	
	button:hover{
		cursor: pointer;
	}
</style>
</head>
<body>
	<jsp:include page="Header.jsp"/>
	<div id="main">
		<jsp:include page="menuBar.jsp"/>
		<div id="area2">
			<h2>회원탈퇴</h2>
			<br><br>
			탈퇴시에는 온라인 예약 서비스를 더 이상 이용하실 수 없으며, 예약/진료 내역을 더 이상 확인하실  수 없습니다.<p>
			탈퇴하시겠습니까?<p>
			<button type="button" onclick="location.href='LeaveToDB.jsp'">탈퇴하기</button>
		</div>
	</div>
	<jsp:include page="Footer.jsp"/>
</body>
</html>