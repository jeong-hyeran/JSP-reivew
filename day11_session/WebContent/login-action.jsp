<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<jsp:useBean id="user" class="member.MemberDTO" />
<jsp:setProperty property="*" name="user"/>
<c:set var="login" value="${dao.login(user) }" scope="session"/>
<%
	session.setMaxInactiveInterval(600);
%>
<script>
	const login = '${login}'
	if(login == ''){
		alert('로그인 실패')
	}else{
		alert('로그인 성공')
	}
	location.href = 'index.jsp'
</script>
</body>
</html>