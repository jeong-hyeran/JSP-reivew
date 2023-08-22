<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="dao" value="${MemberDAO.getInstance() }"/>
<c:set var="cpath" value="${pageContext.request.contextPath }"/>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>header.jsp</title>
<style>
	header ul{
		display: flex;
		justify-content: space-around;
	}
	header li{
		list-style: none;
	}
	a{
		text-decoration: none;
		color: inherit;
	}
	body{
		width: 80%;
/* 		border: 1px dashed red; */
		margin: 10px 10%;
	}
	table{
		border-spacing: 0;
		border: 2px solid black;
	}
	th,td{
		border: 1px solid black;
		padding: 10px;
		margin: 0;
	}
</style>
</head>
<body>
<header>
	  <div style="float:right;">
	  	<c:if test="${empty login}">
	  		<h6><a href="${cpath }/login.jsp">로그인 필요</a></h6>
	  	</c:if>
	  	<c:if test="${not empty login}">
	  		<h6>${login.username }님 [${login.userid }]</h6>
	  	</c:if>
	  </div>
	  <h1><a href="${cpath }">회원관리</a></h1>
	<ul>
	  <li><a href="${cpath }/login.jsp">login</a></li>
	  <li><a href="${cpath }/join.jsp">join us</a></li>
	  <li><a href="${cpath }/mypage.jsp">My page</a></li>
	  <li><a href="${cpath }/logout.jsp">logout</a></li>
	</ul>
</header>
<hr>