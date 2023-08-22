<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<c:set var="dao" value="${StudentDAO.getInstance()}" />
<c:set var="list" value="${dao.selectList()}" />


<main>
<h1>list</h1>
	<table>
	<thead>
		<tr>
			<th>이름</th>
			<th>국어</th>
			<th>영어</th>
			<th>수학</th>
			<th>합계</th>
			<th>평균</th>
		</tr>
	</thead>
	<tbody>
	<c:forEach var="item" items="${list }">
		<tr>
			<td>${item.name }</td>
			<td>${item.kor}</td>
			<td>${item.eng }</td>
			<td>${item.math }</td>
			<td>${item.total }</td>
			<td>${item.avg }</td>
		</tr>
	</c:forEach>
	</tbody>	
	</table>
</main>
</body>
</html>