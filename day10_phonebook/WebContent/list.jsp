<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<c:set var="dto" value="${dao.selectList() }" />
<h2>목록</h2>
${dao }
<table border="1" cellpadding="10" cellspacing="0">
<c:forEach var="list" items="${dto}">
<tr>
  <td> ${list.idx }</td>
  <td> ${list.name }</td>
  <td> ${list.pnum }</td>
  <td><a href="${cpath }/delete.jsp?idx=${list.idx}"><button>삭제</button></a></td>
</tr>
</c:forEach>
</table>


</body>
</html>