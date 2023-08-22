<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex06-view.jsp</title>
</head>
<body>

<%

	String i = request.getParameter("i");
	 
	int index = Integer.parseInt("i");
	
	ArrayList<String> list = (ArrayList<String>)application.getAttribute("list");
	
	String data = list.get(index);
	
	request.setAttribute("data", data);
	
	request.getRequestDispatcher("ex06-result.jsp").forward(request, response);
%>

</body>
</html>