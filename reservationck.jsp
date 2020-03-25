<%@page import="java.sql.*" %>
<%@page import="java.lang.*" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
	<title>Insert title here</title>
	</head>
	<body>
			<%
			PreparedStatement pstmt = null;
			Statement stmt = null;
	   		Connection conn = null;
	   		ResultSet rs = null;
	   		try {	   			
	   			String driver = "org.mariadb.jdbc.Driver";
            	Class.forName(driver);
            	String url = "jdbc:mariadb://booksys.ctvysxuvt8lv.ap-northeast-2.rds.amazonaws.com/";
            	String userName = "admin";
            	String userPw = "admin1234";
            	String dbName = "seproject";
   	  			conn = DriverManager.getConnection(
                    url+dbName, userName, userPw);
	   			String menu = request.getParameter("menu");
	   			String time = request.getParameter("time");
	   			String table = request.getParameter("table");
	   			String date = request.getParameter("date");
	   			String year = date.substring(0, 4);
   				String month = date.substring(5, 7);
   				String day = date.substring(8).replace("0", "");
	   			String userid = (String)request.getSession().getAttribute("sid");
	   			String query = "SELECT num FROM member WHERE id='"+userid+"'";
	   			stmt = conn.createStatement();
	   			rs = stmt.executeQuery(query);
	   			rs.next();
	   			String mem_num = Integer.toString(rs.getInt("num"));
	   			System.out.println(year+", "+month+", "+day+", "+time+", "+mem_num+", "+menu+", "+table);
	   			stmt = conn.createStatement();
	   			query = "INSERT INTO reservation(res_year, res_month, res_day, res_time, mem_num, table_num, menu_num) VALUES("+year+", "+month+", "+day+", "+time+", "+mem_num+", "+menu+", "+table+")";
	   			rs = stmt.executeQuery(query);
	   			%>
	   			<script>
				alert("예약이 완료되었습니다.");
				location.href="index.jsp";
				</script>
				<%
	   		} catch(SQLException se) {
	   			se.printStackTrace();
	   		}
   			%>
</body>
</html>