<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>


<h3>join-action.jsp</h3>

<jsp:useBean id="user"  class="member.MemberDTO"/>
<jsp:setProperty property="*" name="user"/>

<c:set var="row" value="${dao.insert(user) }" />


<script>

	const row = '${row}'
		alert(row != 0 ?'가입 성공':'가입 실패')
		location.href = "index.jsp"

</script>
</body>
</html>