<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<h3>login</h3>

<script >
	const login = '${login}'
	if(login != ''){
		alert('로그인 되어있습니다.')
		location.href = 'index.jsp'
	}
</script>

<form action="login-action.jsp" method="POST" >
	<p><input type="text" name="userid" placeholder="ID" autofocus required></p>
	<p><input type="password" name="userpw" placeholder="password" required></p>
	<p><input type="submit" value="로그인"></p>
	<p><a href="${cpath }/join.jsp"><input type="button" value="회원가입"></a></p>
<%-- 	<p><a href="${cpath }/join.jsp"><button>회원가입</button></a></p> --%>
<!-- button 태그가 form안에 들어가 있으면 기본의로 submit가 된다. -->
</form>

</body>
</html>