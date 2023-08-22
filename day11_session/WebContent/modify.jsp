<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<h3>수정</h3>

<script>
	const login = '${login}'
	if(login == ''){
		alert('로그인이 필요합니다.')
		location.href = 'login.jsp'
	}
</script>

<table>
  <tr>
    <th>이름</th>
    <th>${login.username }</th>
  </tr>
  <tr>
    <td>아이디</td>
    <td>${login.userid }</td>
  </tr>
  <tr>
    <td>비밀번호</td>
    <td>${login.userpw }</td>
  </tr>
  <tr>
    <td>이메일</td>
    <td><input type="text" value="${login.email }"></td>
  </tr>
  <tr>
    <td>생년월일</td>
    <td><input type="text" value="${login.birth }"></td>
  </tr>
</table>
<p>
	<a href="mypage.jsp"><button>돌아가기</button></a>
</p>
</body>
</html>