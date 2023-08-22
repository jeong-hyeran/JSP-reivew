<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz2.jsp</title>
</head>
<body>


<h1>quiz2.jsp</h1>
<hr>

<form >
	<p><input type="date" name="birth"></p>
	<p><input type="submit"></p>	
</form>
<%
	String birth = request.getParameter("birth");
	if(birth != null){
		String output = birth.replaceFirst("-","년 ");
		output= output.replace("-","월 ");
		output += "일";
		out.print(output);
	}
%>
</body>
</html>