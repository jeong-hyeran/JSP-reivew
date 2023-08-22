<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<jsp:useBean id="dto" class="youtube.DTO" />
<jsp:setProperty property="*" name="dto"/>
<jsp:useBean id="dao" class="youtube.DAO" />
${dao.insert(dto) }

<c:redirect url="/list.jsp"></c:redirect>
</body>
</html>