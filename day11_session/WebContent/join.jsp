<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<h3>join</h3>


	<form action="join-action.jsp" method="POST">
		<p><input type="text" name="userid" placeholder="ID" autofocus required></p>
		<p><input type="password" name="userpw" placeholder="Password" required></p>
		<p><input type="text" name="username" placeholder="Name" required></p>
		<p><input type="email" name="email" placeholder="foo@bar.com"required></p>
		<p>생년월일 <input type="date" name="birth" required></p>
		<p><input type="submit" value="회원가입"></p>
	</form>

</body>
</html>