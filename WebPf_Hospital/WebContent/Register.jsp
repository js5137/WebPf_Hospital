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
	
	#form p{
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
	
	#check:hover{
		cursor: pointer;
	}

</style>
<script type="text/javascript">
	function chk() {	
		if(frm.id.length<4){
			alert("ID는 4자 이상 입력해 주세요.");
			return false;
		}
		
		if(frm.pw.value != frm.pwc.value){
			alert("비밀번호가 서로 다릅니다.");
			return false;
		}
	}
	
	function idChk() {
		url = "IdCheck.jsp?id="+frm.id.value;
		window.open(url, "ID 중복체크", "width=300, height=200, resizable=no");	
	}
</script>
</head>
<body>
	<jsp:include page="Header.jsp"/>
	<div id="main">
		<div id="area1">
			<h2>정보를 입력해 주세요</h2>
			<div id="form">
				<form action="RegisterToDB.jsp" name="frm" method="post" onsubmit="return chk()">
					<p>아이디</p>
					<input type="text" name="id" maxlength="10" required><br>
					<p style="font-weight: normal; color: dimgray; text-decoration: underline; margin-top: -2px">
					<a id="check" style=" font-size: 12px;" onclick="idChk()">ID 중복확인</a></p>
					<p>비밀번호</p>
					<input type="password" name="pw" required>
					<p>비밀번호 확인</p>
					<input type="password" name="pwc" required>
					<p>이름</p>
					<input type="text" name="name" required>
					<p>핸드폰 번호</p>
					<input type="text" name="phone" required>
					<p>이메일 주소(선택)</p>
					<input type="text" name="mail">
		            <p><button type="submit">회원가입</button></p>
		            <a style="font-size: 13px">ID 중복결과를 꼭 확인해주세요.</a>
				</form>
			</div>
		</div>
	</div>
	<jsp:include page="Footer.jsp"/>
</body>
</html>