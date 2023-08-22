<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<h3>삭제</h3>
<c:set var="row" value="${dao.delete(login.userid) }" />
<% session.invalidate(); %>

<script>
	const row = '${row}'
	alert(row != 0 ?'탈퇴 성공':'탈퇴 실패')
	location.href = 'index.jsp'
</script>

</body>
</html>