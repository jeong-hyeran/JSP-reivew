<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>


<h3>logout</h3>

<%
	session.invalidate();
// 	response.sendRedirect(request.getContextPath()+ "/index.jsp");
%>

<script>
	const login = '${login}'
	if(login == ''){
		alert('로그아웃되었습니다.')
	}
	location.href = 'index.jsp'
</script>

</body>
</html>