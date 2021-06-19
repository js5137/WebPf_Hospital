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
		String name = (String)session.getAttribute("NAME");
		String sql = "delete from 회원 where id=?";
		
		int rowNum = 0;
	
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/siteDB","root","mysql");
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			
			rowNum = pstmt.executeUpdate();
			
			if(rowNum<1){
				throw new Exception("데이터가 DB에 입력되지 않았습니다");
			}
		}catch(Exception e){
			e.getMessage();
		}finally{
			try{
				pstmt.close();
			}catch(Exception e){
				out.print("DB를 닫지 못했습니다");
			}
			try{
				conn.close();
			}catch(Exception e){
				out.print("DBMS를 닫을 수 없습니다");				
			}
		}
		
		response.sendRedirect("LeaveResult.jsp?name="+name);
	%>
</body>
</html>