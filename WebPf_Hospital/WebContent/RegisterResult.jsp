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
</style>
<script type="text/javascript">
	setTimeout(function() {
		location.replace('Main.jsp');
		}, 3000);
</script>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("name");
	%>
	<jsp:include page="Header.jsp"/>
	<div id="main">
		<div id="area1">
			<h2>회원가입이 완료되었습니다</h2>
			이제부터 별빛 동물병원 온라인 시스템을 이용하실 수 있습니다.<br>
			3초 후 메인페이지로 돌아갑니다.
		</div>
	</div>
	<jsp:include page="Footer.jsp"/>
</body>
</html>