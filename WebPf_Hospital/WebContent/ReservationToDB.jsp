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
		String date = request.getParameter("date");
		String time = request.getParameter("time");
		String purpose = request.getParameter("purpose");
		String content = request.getParameter("content") != null? request.getParameter("content") : "없음" ;
		String rTimeStamp = date.concat(" ").concat(time);
		String id = (String)session.getAttribute("ID");
		
		Connection conn = null;
		Statement stmt = null;
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/siteDB","root","mysql");
			
			stmt = conn.createStatement();
			String command = String.format
					("insert into 예약(예약시간, 방문목적, 남길말, 회원id) values('%s','%s','%s','%s')", rTimeStamp, purpose, content, id);
			
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
		
		response.sendRedirect("ReservationResult.jsp");
	%>
</body>
</html>