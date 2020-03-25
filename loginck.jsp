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
	   			String id = request.getParameter("id");
				String pw = request.getParameter("pw");
				stmt = conn.createStatement();
				String query = "SELECT COUNT(id) FROM member WHERE id='"+id+"' AND pw='"+pw+"'";
				rs = stmt.executeQuery(query);
				rs.next();
				if (rs.getInt(1)>0) {
					session.setAttribute("sid", id);
					%>
					<script>location.replace("index.jsp"); </script>
					<%
				} else {
					%>
						<script>
							alert("아이디나 비밀번호가 일치하지 않습니다.");
							history.go(-1);
						</script>
					<%
				}
	   		} catch(SQLException se) {
	   			se.printStackTrace();
	   		}
   		%>
	</body>
</html>