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
	    margin: 10px;
	}
	
	#area1{
	    width: 700px; height: 600px;
		border: lightgray 1px solid;
		border-radius: 5px;
		box-shadow: lightgray 1px 1px 2px;
	}

	button{
	    width: 120px; height: 40px;
	    border: 1px lightgray solid;
	    background: lightgray;
	    font-size: 12pt; font-weight: bolder;
	    border-radius: 5px;
	}
</style>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		String name = (String)session.getAttribute("NAME");
	%>
	<jsp:include page="Header.jsp"/>
	<div id="main">
		<div id="area1">
			<h2><%=name %>님의 예약이 완료되었습니다</h2>
			<button type="button" onclick="location.href='Main.jsp'">메인으로</button> 
			<button type="button" onclick="location.href='CheckPage.jsp'">예약확인</button>
		</div>
	</div>
	<jsp:include page="Footer.jsp"/>
</body>
</html>