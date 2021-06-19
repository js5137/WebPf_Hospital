<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ID 중복체크</title>
<style type="text/css">
	div{
		text-align: center;
	}
</style>
</head>
<body>
	<div>
		<h3>ID 검사 결과</h3>
	
	<%
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		
		Connection conn = null;
		Statement stmt = null;
		String sql = "select id from 회원";
		boolean idc = true;
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/siteDB","root","mysql");
			
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()){
				if(id.length() == 0){
					out.print("ID를 입력해 주세요.");
					idc = false;
					break;
				}
				
				if(rs.getString("id").equals(id)){
					out.print("사용할 수 없는 ID입니다.");
					idc = false;
					break;
				}
			}
			
			if(idc == true){
				out.print("사용할 수 있는 ID입니다.");
			}
		}catch(Exception e){
			e.printStackTrace();
		}
	%>
	</div>
</body>
</html>