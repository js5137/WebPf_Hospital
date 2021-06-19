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
		session.invalidate();
	%>
	<jsp:forward page="Main.jsp"/>
</body>
</html>