<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
${dao.delete(param.idx) }

<c:redirect url="list.jsp" />
</body>
</html>