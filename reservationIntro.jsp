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
	String userid = (String)request.getSession().getAttribute("sid");
	if (userid == "" || userid == null) {
		%>
		<script>
			alert("로그인 후 이용 가능합니다", "경고");
			location.replace("login.jsp");
		</script>
		<%
	}
	else {
		%>
		<script>location.replace("reservation.jsp"); </script>
		<%
	}
	%>
</body>
</html>