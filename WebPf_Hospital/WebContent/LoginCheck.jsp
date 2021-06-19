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
		String pw = request.getParameter("pw");
		
		Connection conn = null;
		Statement stmt = null;
		
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/siteDB","root","mysql");
		
		if(conn == null){
			throw new Exception("데이터베이스에 연결할 수 없습니다");
		}
		
		stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery("select * from 회원 where id='"+id+"' and 비밀번호='"+pw+"';");
		
		if(!rs.next()){%>
			<jsp:forward page="LoginError.jsp"/>
		<%}else{
			session.setAttribute("login", "login");
			
			String name = rs.getString("이름");
			String phone = rs.getString("연락처");
			String mail = rs.getString("email");
			
			request.setAttribute("ID", id);
			request.setAttribute("PW", pw);
			request.setAttribute("NAME", name);
			request.setAttribute("PHONE", phone);
			request.setAttribute("MAIL", mail);
			
			session.setAttribute("ID", id);
			session.setAttribute("PW", pw);
			session.setAttribute("NAME", name);
			session.setAttribute("PHONE", phone);
			session.setAttribute("MAIL", mail);
			
			stmt.close();
			conn.close();
			
			response.sendRedirect(request.getHeader("referer"));
		}	
	%>
</body>
</html>