<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>chkUser.jsp<br>
<%
String id = request.getParameter("id");
String pwd = request.getParameter("pwd");
String user = request.getParameter("user");
if(user.equals("user")){%>
	<!-- jsp태그도 <%%>안에 쓸수는 없음 -->
	<jsp:forward page="userPage.jsp">
		<jsp:param value="user..." name="name"/>
	</jsp:forward>
		<!-- 다음 페이지로 넘겨주기 위한 value가 name으로 넘어감 -->
<%}else{%>
	<jsp:forward page="adminPage.jsp">
		<jsp:param value="admin..." name="name"/>
	</jsp:forward>
<%}%>
</body>
</html>