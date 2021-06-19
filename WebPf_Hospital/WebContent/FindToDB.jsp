<%@page import="java.sql.*"%>
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
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String name = request.getParameter("name");
	
		Connection conn = null;
		Statement stmt = null;
		
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/siteDB","root","mysql");
		
		if(conn == null){
			throw new Exception("데이터베이스에 연결할 수 없습니다");
		}
		
		stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery("select * from 회원 where id='"+id+"' and 이름='"+name+"';");
		
		if(!rs.next()){%>
			<jsp:forward page="LoginError.jsp"/>
		<%}else{
			String pw = rs.getString("비밀번호");
			session.setAttribute("name", name);
			session.setAttribute("pw", pw);
			response.sendRedirect("FindResult.jsp");
		}	
	%>
</body>
</html>