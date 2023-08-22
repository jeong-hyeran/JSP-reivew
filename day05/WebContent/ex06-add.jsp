<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex06-add.jsp</title>
</head>
<body>

<h1>ex06-add.jsp</h1>
<hr>

<% 
	request.setCharacterEncoding("UTF-8");
	
	String param = request.getParameter("param");
	
	if(param == null){
		response.sendRedirect("ex06-list.jsp");
		return;
	}
	
	ArrayList<String> list = (ArrayList<String>)application.getAttribute("list");
	list.add(param);
	
	response.sendRedirect("ex06-list.jsp");
%>

</body>
</html>