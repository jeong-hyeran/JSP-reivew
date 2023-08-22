<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex06-list.jsp</title>
</head>
<body>
<h1>ex06-list.jsp</h1>
<hr>

<%
	ArrayList<String> list = (ArrayList<String>)application.getAttribute("list");
	request.setCharacterEncoding("UTF-8");
	if(list == null){
		list = new ArrayList<>();
		application.setAttribute("list",list);
	}
	
	out.print("<h3>목록</h3>");
	
	for(int i = 0; i < list.size(); i ++){
		String s = list.get(i);
		 %>
		 <div><a href="ex06-view.jsp?i=<%=i %>"><%=i %>) <%=s %></a></div>
		 <%
	}

%>

<form method="POST" action="ex06-add.jsp"> 
	<p><input type="text" namr="param" placeholder="추가할 목록을 입력하세요" autofocus ></p>
	<p><input type="submit" value="제출"></p>
</form>

</body>
</html>