<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<jsp:useBean id="dao" class="youtube.DAO" />
<c:set var="list" value="${dao.selectList() }" />
<c:forEach var="dto" items="${list }">
<div><a href="${cpath }/view.jsp?idx=${dto.idx}">제목 : ${dto.title }</a></div>

</c:forEach>
</body>
</html>