<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<jsp:useBean id="user" class="member.MemberDTO" />
<jsp:setProperty property="*" name="user"/>
<c:set var="login" value="${dao.login(user) }" scope="session"/>
${dao }

<script>
	const login = '${login}'
	console.log(login);
	
	if(login == ''){
		alert('로그인이 실패 했습니다.')
	}else{
		alert('로그인에 성공 했습니다.')
	}
		location.href ='index.jsp'
</script>

</body>
