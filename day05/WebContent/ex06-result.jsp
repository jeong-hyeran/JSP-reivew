<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex06-result.jsp</title>
</head>
<body>

<marquee direction="down" behavior="slide">
	<marquee direction="up" behavior="slide">
		<p style="font-size: 100px; margin:0 auto;" >
		<%=request.getAttribute("data") %>
		</p>
	</marquee>	
</marquee>

</body>
</html>