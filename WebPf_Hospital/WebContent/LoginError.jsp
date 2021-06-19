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
	    display: inline-block;
	    border: lightgray 1px solid;
	    border-radius: 5px;
	    box-shadow: lightgray 1px 1px 2px;
	    margin: 10px;
	}
	
	#area1{
	    width: 700px; height: 600px;
	}
	
	input{
	    font-size: 12pt;
	    width: 200px; height: 30px;
	    margin: 3px;
	}
	
	#area1 a{
	    color: dimgray;
	    font-size: 8pt;
	    text-decoration: none;
	}
</style>
</head>
<body>
	<jsp:include page="Header.jsp"/>
	<div id="main">
		<div id="area1">
			<h2>ID 혹은 비밀번호를 다시 한 번 확인해 주세요</h2>
            <a href="Main.jsp">메인으로</a>
            <a href="FindPassword.jsp">비밀번호 찾기</a>
		</div>
	</div>
	<jsp:include page="Footer.jsp"/>
</body>
</html>