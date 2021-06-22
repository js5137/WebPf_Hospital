<%@page import="java.sql.*"%>
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
        height: 700px;
		border: lightgray 1px solid;
		border-radius: 5px;
		box-shadow: lightgray 1px 1px 2px;
		margin: 10px;
		float: left;
	}

    #area2{
        width: 80%;
        text-align: center;
        position: relative;
    }

	#area2 button{
		width: 100px; height: 40px;
		background: lightgray;
		border: 1px solid lightgray;
		border-radius: 20px;
	}
	
	#table{
		border-collapse: collapse;
		width: 70%;
	    overflow: auto;
	    margin: auto;
	    position: absolute;
	    top: 150px;
	    right: 0;
	    bottom: 0;
	    left: 0;
	    border-bottom: 1px black solid;
	}
	
	#table th{
		background: lightblue;
	}
	
	#table td{
		border-bottom: 1px lightgray dashed;
	}
	
	#button{
		padding: 0 20px 0 20px;
	}
</style>
</head>
<body>
	<jsp:include page="Header.jsp"/>
	<div id="main">
		<jsp:include page="menuBar.jsp"/>
		<div id="area2">
			<h2>예약내역 확인</h2>
			<a id="button" href="CheckPage.jsp"><img src="image/b1.png"></a>
			<a id="button" href="DoctorPage.jsp"><img src="image/b2.png"></a><p>
			<table border="1" id="table">		
		<tr><th>번호</th><th>예약시간</th><th>방문목적</th><th>남길말</th></tr>
		<%
			request.setCharacterEncoding("utf-8");
			String id = (String)session.getAttribute("ID");
			
			Connection conn = null;
			Statement stmt = null;
			
		try{
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/siteDB","root","mysql");
			
			stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("select * from 예약 where 회원id='"+id+"';");
			
			int i=1;
			
			while(rs.next()){
				
				String time = rs.getString("예약시간");
				out.print("<tr><td>"+i+"</td>");
				out.print("<td>"+time.substring(0, time.length()-5)+"</td>");
				out.print("<td>"+rs.getString("방문목적")+"</td>");
				out.print("<td>"+rs.getString("남길말")+"</td></tr>");
				i++;
			}
		}catch(Exception e){
			e.getMessage();
		}finally{
			conn.close();
		}
		%>
		</table>
		</div>
	</div>
	<jsp:include page="Footer.jsp"/>
</body>
</html>