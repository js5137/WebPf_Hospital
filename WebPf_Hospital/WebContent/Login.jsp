<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>별빛 동물병원</title>
<style type="text/css">
#main {
	width: 80%;
	height: 1000px;
	margin: 0 auto;
	text-align: center;
	position: relative;
}

#main div {
	display: inline-block;
	border: lightgray 1px solid;
	border-radius: 5px;
	box-shadow: lightgray 1px 1px 2px;
	margin: 10px;
}

#area1 {
	width: 700px;
	height: 600px;
}

input {
	font-size: 12pt;
	width: 200px;
	height: 30px;
	margin: 3px;
}

#area1 a {
	color: dimgray;
	font-size: 8pt;
	text-decoration: none;
}

button {
	width: 208px;
	height: 36px;
	margin-top: 3px;
}
</style>
<script type="text/javascript">
	function chk() {
		if (frm.id.length == 0) {
			alert("ID를 입력하세요.");
			return false;
		}
		if (frm.pw.length == 0) {
			alert("비밀번호를 입력하세요.");
			return false;
		}
	}
</script>
</head>
<body>
	<%
	if (session.getAttribute("login") != null) {
	%>
	<jsp:forward page="Main.jsp" />
	<%
	}
	%>

	<jsp:include page="Header.jsp" />
	<div id="main">
		<div id="area1">
			<h2>서비스 이용을 위해 로그인해주세요</h2>
			<form action="LoginCheck.jsp" name="frm" method="post" onsubmit="return chk()">
				<input type="text" placeholder="아이디" name="id" maxlength="10"><br> <input
					type="password" placeholder="비밀번호" name="pw" maxlength="15"><br>
				<button type="submit">로그인</button>
			</form>
			<a href="FindPassword.jsp">비밀번호 찾기</a> <a href="Register.jsp">회원가입</a>
		</div>
	</div>
	<jsp:include page="Footer.jsp" />
</body>
</html>