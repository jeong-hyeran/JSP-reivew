<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02-logout.jsp</title>
</head>
<body>
<h1>ex02-logout.jsp</h1>
<hr>

<%
	session.invalidate();
	response.sendRedirect(request.getContextPath() + "/ex02-index.jsp");
%>



</body>
</html>