<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>별빛 동물병원</title>
<style type="text/css">
	html, body{
	    margin: 0px; padding: 0px;
	    overflow: auto;
	}
	
	#header{
	    width: 100%; height: 80px;
	}
	
	#header span{
	    position: absolute;
	    right: 20px; top: 25px;
	    vertical-align: middle;
	    font-size: 14pt; font-weight: bolder;
	}
	
	#header span a{
	    color: dimgray;
	    text-decoration: none;
	    font-size: 14px;
	}
	
	#header a:link {text-decoration: none; color: dimgray;}
	#header a:visited {text-decoration: none; color: dimgray;}
	#header a:active {text-decoration: none; color: dimgray;}
	#header a:hover {text-decoration: none; color: dimgray;}
	
	#middle{
	    width: 100%; height: 500px;
	}
	
	#mainImage{
	    width: 100%; height: 500px;
	}
	
/* 	#middle #content{
		position: absolute;
		top:50%;
		left:50%;
		transform: translate(-50%, -60%);
		font-size: 2rem;
		color: white;
		z-index: 2;
		text-align: center;
		padding: 30px;
		border: 5px solid white;             
}

	#middle #content h3:after{
      display: block;
      content:'';
      width: 40%;
      margin: 10px auto;
      border: 2px solid white;                                                                            
} */
	
	
</style>
</head>
<body>
	<div id="header">
		<a href="Main.jsp"><img id="logo" src = "image/logoImage.png"></a> <span><a href="Main.jsp">메인화면</a> <a href="ReservationCheck.jsp">예약하기</a> 
		<a href="MypageCheck.jsp">마이페이지</a> <%
			if(session.getAttribute("login") != null){
				out.print("<a href='Logout.jsp'>로그아웃</a>");
			}else{
				out.print("<a href='Login.jsp'>로그인</a>");
			}
		%> </span>
	</div>
	<div id="middle">
		<img id="mainImage" src = "image/mainImage.jpg">
		<!-- <div id=content>
			<h2>별빛</h2>
			<h3>동물병원</h3>
		</div> -->
	</div>
</body>
</html>