<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>별빛 동물병원</title>
<style type="text/css">
	#main{
	    width: 80%; height: 1100px;
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
	    width: 700px; height: 750px;
	}
	
	form button{
	    width: 100px; height: 35px;
	    margin: 5px;
	}
	
	textarea{
	    width: 500px; height: 200px;
	    resize: none;
	}
	
	button{
	    width: 120px; height: 40px;
	    border: 1px lightgray solid;
	    background: lightgray;
	    font-size: 12pt; font-weight: bolder;
	    border-radius: 5px;
	}
	
	#check:hover{
		cursor: pointer;
	}
	
</style>
<script type="text/javascript">
	function tChk() {
		url = "TimeCheck.jsp?date="+frm.date.value+"&time="+frm.time.value;
		window.open(url, "예약시간 확인", "width=300, height=200, resizable=no");	
	}
</script>
</head>
<body>
	<jsp:include page="Header.jsp"/>
	<div id="main">
		<div id="area1">
			<h2>예약하기</h2>
			<h3>예약할 날짜와 시간을 선택해 주세요</h3>
			<form name="frm" action="ReservationToDB.jsp">
				<p><input type="date" name="date" required></p>
				<input type="radio" name="time" value="10:00" required>10:00
				<input type="radio" name="time" value="10:30">10:30
				<input type="radio" name="time" value="11:00">11:00
				<input type="radio" name="time" value="11:30">11:30
				<input type="radio" name="time" value="12:00">12:00
				<input type="radio" name="time" value="12:30">12:30<br>
				<input type="radio" name="time" value="14:00">14:00
				<input type="radio" name="time" value="14:30">14:30
				<input type="radio" name="time" value="15:00">15:00
				<input type="radio" name="time" value="15:30">15:30
				<input type="radio" name="time" value="16:00">16:00
				<input type="radio" name="time" value="16:30">16:30<br>
				<input type="radio" name="time" value="17:00">17:00
				<input type="radio" name="time" value="17:30">17:30
				<input type="radio" name="time" value="18:00">18:00
				<input type="radio" name="time" value="18:30">18:30
				<input type="radio" name="time" value="19:00">19:00
				<input type="radio" name="time" value="19:30">19:30<p>
				
			<h3>방문 목적을 선택해 주세요</h3>
			<p><input type="radio" name="purpose" value="건강검진" required>건강검진 <input type="radio" name="purpose" value="예방접종">예방접종</p>
			<p><input type="radio" name="purpose" value="진료문의">진료문의 <input type="radio" name="purpose" value="기타">기타</p>
            <h3>하실 말씀이 있다면 남겨주세요(선택사항)</h3>
			<textarea name="content"></textarea>
			<p><button type="submit">예약하기</button></p>
			</form>
		</div>
	</div>
	<jsp:include page="Footer.jsp"/>
</body>
</html>