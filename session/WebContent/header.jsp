<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.MemberDAO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>
<c:set var="dao" value="${MemberDAO.getInstance()}" />
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>header.jsp</title>
</head>
<body>
<header>
	<ul>
		<li><a href="index.jsp">index.jsp</a></li>
		<li><a href="login.jsp">로그인</a></li>
		<li><a href="join.jsp">회원가입</a></li>
	</ul>	
</header>
