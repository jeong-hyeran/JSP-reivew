<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<h3>추가페이지</h3>

<form action="add_action.jsp" method="POST">
	<p><input type="text" name="name" placeholder="이름"></p>
	<p><input type="text" name="pnum" placeholder="폰번호"></p>
	<p><input type="submit" value="추가">
</form>

</body>
</html>