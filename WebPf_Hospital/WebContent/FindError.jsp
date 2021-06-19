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
	
	button{
		width: 208px; height: 36px;
		margin-top: 3px;
	}
</style>
</head>
<body>
	<jsp:include page="Header.jsp"/>
	<div id="main">
		<div id="area1">
			<h2>회원정보를 찾을 수 없습니다</h2>
            <form action="FindToDB.jsp" method="post">
                <input type="text" placeholder="아이디" name="id"><br>
                <input type="text" placeholder="이름" name="name"><br>
                <button type="submit">조회</button>
            </form>
            <a href="Login.jsp">로그인</a>
            <a href="Register.jsp">회원가입</a>
		</div>
	</div>
	<jsp:include page="Footer.jsp"/>
</body>
</html>