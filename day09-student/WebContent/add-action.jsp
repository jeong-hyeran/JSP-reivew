<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>


<jsp:useBean id="dto" class="student.StudentDTO" />
<jsp:setProperty property="*" name="dto"/>
<c:set var="dao" value="${StudentDAO.getInstance() }" />
<%-- <jsp:useBean id="dao" class="student.StudentDAO" /> --%>
${dao.insert(dto) }



<c:redirect url="/list.jsp" />
</body>
</html>