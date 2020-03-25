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
				String pw = request.getParameter("pw1");
				String ph = request.getParameter("ph");
				String userid = (String)request.getSession().getAttribute("sid");
				stmt = conn.createStatement();
				System.out.println(pw+" "+ph);
				String query = "UPDATE member SET pw='"+pw+"' , phone='"+ph+"' WHERE id='"+userid+"'";
				System.out.println(query);
				rs = stmt.executeQuery(query);
				rs.next();
				%>
				<script>
					alert("회원 정보 변경이 완료되었습니다.");
					location.href="mypage.jsp";
				</script>
			<%
	   		} catch(SQLException se) {
	   			se.printStackTrace();
	   		}
   		%>
	</body>
</html>