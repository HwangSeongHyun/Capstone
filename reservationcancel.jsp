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
	   			String message[] = request.getParameterValues("checked");
	   			for (int i=0 ; i<message.length ; i++) {
	   				String year = message[i].split("/")[0];
	   				String month = message[i].split("/")[1];
	   				String day = message[i].split("/")[2];
	   				String menu_num = message[i].split("/")[3];
	   				String table_num = message[i].split("/")[4];
	   				String query = "DELETE FROM reservation WHERE res_year='"+year+"' AND "+
	   						"res_month='"+month+"' AND "+
	   						"res_day='"+day+"' AND "+
	   						"menu_num='"+menu_num+"' AND "+
	   						"table_num='"+table_num+"'";
	   				stmt = conn.createStatement();
	   				rs =stmt.executeQuery(query);
	   			}
	   			%>
				<script>
					alert("예약이 취소되었습니다.");
					location.href="mypage.jsp";
				</script>
				<%
	   		} catch(SQLException se) {
	   			se.printStackTrace();
	   		}
   		%>
	</body>
</html>