<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz1.jsp</title>
</head>
<body>

<h1>quiz1.jsp</h1>
<hr>
<form>
	<%=n1 %> + <%=n2 %> = 
	<input type="text" name="answer" placeholder="정답">
	<input type="submit" value="제출">
</form>

<%!
	private Random ran = new Random();
	private int n1 = ran.nextInt(100)+1;
	private int n2 = ran.nextInt(100)+1;
%>
<%
	String answer = request.getParameter("answer");
	if(answer != null){
		int a = Integer.parseInt(answer);
		out.print(a == (n1 + n2) ? "정답입니다." : "오답입니다.");
	}
%>
</body>
</html>