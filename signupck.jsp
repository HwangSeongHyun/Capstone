<%@page import="java.sql.*" %>
<%@page import="java.lang.*" %>
<%@page import="MariaDB.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		<%
			String id = request.getParameter("id");
			String pw = request.getParameter("pw1");
			String name = request.getParameter("nm");
			String ph = request.getParameter("ph");
			
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
	   	  		String query = "SELECT COUNT(*) FROM member WHERE ID='"+id+"'";
	   	      	stmt = conn.createStatement();
	   	      	rs = stmt.executeQuery(query);
	   	      	rs.next();
	   	      	if (rs.getInt(1)>0) {
	   	      	%>
		   	    <script>
					alert("아이디가 중복되었습니다.");
					location.href="signup.jsp";
				</script>
				<%
	   	      	
	   	      	} else {
	   	      		query = "INSERT INTO member(id, pw, NAME, phone ,mileage) VALUES(?, ?, ?, ?, 0)";
	   	      		pstmt = conn.prepareStatement(query);
		   	      	pstmt.setString(1, id);					//sql문 안에 내용들 업데이트
					pstmt.setString(2, pw);
					pstmt.setString(3, name);
					pstmt.setString(4, ph);
					pstmt.executeUpdate();
					%>
					<script>
						alert("회원가입이 완료되었습니다.");
						location.href="index.jsp";
					</script>
					<%
	   	      	}
	   	 	} catch(SQLException se) {
	   	 		se.printStackTrace();
	   	 	}
		%>
		
	</body>
</html>