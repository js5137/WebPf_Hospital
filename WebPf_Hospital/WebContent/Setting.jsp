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
		width: 208px; height: 36px;
		margin-top: 3px;
	}
</style>
</head>
<body>
	<jsp:include page="Header.jsp"/>
	<div id="main">
		<jsp:include page="menuBar.jsp"/>
		<div id="area2">
			<h2>회원정보 수정</h2>
			<form action="SettingToDB.jsp" method="post">
			<table id="table">
			<tr><td><p>아이디</p></td></tr>
			<tr><td><input type="text" name="id" value="${ID}" readonly></td></tr>
			<tr><td><p>비밀번호</p></td></tr>
			<tr><td><input type="password" name="pw" value="${PW}" required></td></tr>
			<tr><td><p>이름</p></td></tr>
			<tr><td><input type="text" name="name" value="${NAME}" required></td></tr>
			<tr><td><p>핸드폰 번호</p></td></tr>
			<tr><td><input type="text" name="phone" value="${PHONE}" required></td></tr>
			<tr><td><p>이메일 주소(선택)</p></td></tr>
			<tr><td><input type="text" name="mail" value="${MAIL}"></td></tr>
			<tr><td><p><button type="submit">수정</button></p></td></tr>
			</table>
			</form>
			
		</div>
	</div>
	<jsp:include page="Footer.jsp"/>
</body>
</html>