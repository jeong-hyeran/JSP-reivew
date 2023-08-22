<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<h3>My Page</h3>

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
    <td>${login.email }</td>
  </tr>
  <tr>
    <td>생년월일</td>
    <td>${login.birth }</td>
  </tr>
</table>

<p>
	<a href="${cpath}/modify.jsp"><button>수정</button></a>
<!-- 	<a href="delete.jsp"><button>회원탈퇴</button></a> -->
<!-- 위에 2개의 차이는 뭐지 -->
	<button id="withdraw">회원탈퇴</button>
</p>
<div>
<script>
	const withdraw = document.getElementById('withdraw')
	withdraw.onclick = function(){
		const flag = confirm('정말 탈퇴하시겠습니까')
		if(flag){
			location.href = 'delete.jsp'
		}
	}
</script>
</div>
</body>
</html>