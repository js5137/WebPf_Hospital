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
</style>
<script type="text/javascript">
	setTimeout(function() {
		location.replace('Main.jsp');
		}, 3000);
</script>
</head>
<body>
	<jsp:include page="Header.jsp"/>
	<div id="main">
		<jsp:include page="menuBar.jsp"/>
		<div id="area2">
			<h2>${NAME}님의 회원탈퇴가 완료되었습니다</h2>
			그동안 별빛 동물병원을 이용해주셔서 감사합니다.<br>
			3초 후 메인화면으로 돌아갑니다.
			<% session.invalidate(); %>
		</div>
	</div>
	<jsp:include page="Footer.jsp"/>
</body>
</html>