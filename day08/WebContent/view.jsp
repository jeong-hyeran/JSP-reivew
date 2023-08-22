<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<jsp:useBean id="dao" class="youtube.DAO" />
<c:set  var="dto" value="${dao.selectOne(param.idx) }" />
	<div>${dto.movieTag }</div>
	<div>${dto.title }</div>
</body>
</html>