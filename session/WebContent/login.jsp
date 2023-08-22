<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<h2>로그인</h2>
${dao }
<form action="login-action.jsp" method="POST">
	<p><input type="text" name="userid" placeholder="ID"></p>
	<p><input type="text" name="userpw" placeholder="Password"></p>
	<p><input type="submit" value="로그인"></p>
</form>

</body>
</html>