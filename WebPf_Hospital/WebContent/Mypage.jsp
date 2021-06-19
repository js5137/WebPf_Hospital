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
	    width: 43%; height: 600px;
	    display: inline-block;
	    border: lightgray 1px solid;
	    border-radius: 5px;
	    box-shadow: lightgray 1px 1px 2px;
	    margin: 10px;
	}
	
	button{
	    width: 100px; height: 100px;
	    background: lightgray;
	    border: lightgray 1px solid;
	    font-size: 13pt; font-weight: bolder;
	    border-radius: 50px;
	}
</style>
</head>
<body>
	<jsp:include page="Header.jsp"/>
	<div id="main">
		<div id="area1">
			<h2>내역 확인</h2>
			<br><br>
			<img src="image/board.png" height="200"><br><br><br>
            <button type="button" onclick="location.href='CheckPage.jsp'">이동하기</button>
		</div>
		<div id="area2">
            <h2>환경설정</h2>
            <br><br>
            <img src="image/tool.png" height="200"><br><br><br>
            <button type="button" onclick="location.href='Setting.jsp'">이동하기</button>
		</div>
	</div>
	<jsp:include page="Footer.jsp"/>
</body>
</html>