<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>별빛 동물병원</title>
</head>
<body>
	<%
		boolean isLogin = false;
		if(session.getAttribute("login") != null){
			isLogin = true;
		}
		
		if(isLogin){
			String id = (String)session.getAttribute("ID");
			String pw = (String)session.getAttribute("PW");
		%>
		<jsp:forward page="Reservation.jsp"/>
	<%}else{
	%>	<jsp:forward page="Login.jsp"/> <%} %>
</body>
</html>