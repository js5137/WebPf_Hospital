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
		String id = (String)session.getAttribute("ID");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String mail = request.getParameter("mail");
		
		Connection conn = null;
		Statement stmt = null;
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/siteDB","root","mysql");
			
			stmt = conn.createStatement();
			String command = String.format("update 회원 set 비밀번호='%s', 이름='%s', 연락처='%s', email='%s' where id='%s';", pw, name, phone, mail, id);
			
			int rowNum = stmt.executeUpdate(command);
			
			if(rowNum<1){
				throw new Exception("데이터가 DB에 입력되지 않았습니다");
			}
		}catch(Exception e){
			e.getMessage();
		}finally{
			try{
				stmt.close();
			}catch(Exception e){
				out.print("DB를 닫지 못했습니다");
			}
			try{
				conn.close();
			}catch(Exception e){
				out.print("DBMS를 닫을 수 없습니다");				
			}
		}
		
		session.setAttribute("PW", pw);
		session.setAttribute("NAME", name);
		session.setAttribute("PHONE", phone);
		session.setAttribute("MAIL", mail);
		response.sendRedirect("SettingResult.jsp");
	%>
</body>
</html>