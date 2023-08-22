<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <c:set  var="cpath" value="${pageContext.request.contextPath}"/>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mini Shop</title>
 <style>
        .top-hader{
            width: 100%;
            height: 50px;
            text-align: end;
            border-bottom: 1px solid rgba(0, 0, 0, 0.2)
        }
        .header-func{
            padding: 0;
            margin: 0;
            line-height: 50px;
            padding: 20px;
            text-decoration: none;
            color: #888;
        }
        .header-func:hover{
            color: black;
        }
        #header-cart{
            padding-right: 30px;
        }
        #logo{
            width: 100%;
            border: 1px solid black;
            text-align: center;
            background-image: url('https://mblogthumb-phinf.pstatic.net/MjAyMDA3MjRfMjUg/MDAxNTk1NTc2MDExODUz.p27IFfbIBeIHKz7Ol7lx9aqs10gO8K4y0ylqa0yErnAg.VbAsKmH7fjcMVcQ9u74H4cgVOY5-xj2Wt9bFJJoBTVUg.PNG.miri_canvas/%EC%A0%9C%EB%AA%A9%EC%9D%84_%EC%9E%85%EB%A0%A5%ED%95%B4%EC%A3%BC%EC%84%B8%EC%9A%94._10.png?type=w800');
            background-position: -150px 260px;
            border-radius: 20px 20px 0 0;
        }
        #logoTitle{
            margin: 0;
            height: 200px;
            font-size: 3.6em;
            line-height: 200px;
            text-align: start;
            color: rgb(1, 1, 182);
            padding-left: 30px;
        }
        #logo-tag{
            opacity: 0;
        }
        #logo-tag-list{
            display: flex;
            list-style: none;
            text-align: center;
            margin: auto;
            
        }
        #logo-tag-list > li{
            font-size: 1.2em;
            color: black;
        }
        #logo:hover #logo-tag{
           opacity: 100;
           transition-duration: 2s;
           font-weight: bold;
           color: black;
        }
        #navbar{
            width: 100%;
            border: 1px solid black;
            height: 60px;
            box-sizing: border-box;
            border-radius: 0 0 20px 20px;
        }
        #nav-list{
            display: flex;
            justify-content: space-between;
            list-style: none;
            margin: auto 20px;
            line-height: 60px;
        }
        .nav-func{
            padding: 0;
            margin: 0;
            padding: 10px 20px;
            text-decoration: none;
            color: inherit;
            color: white;
            border: 1px solid #16c1f3;
            border-radius: 20px;
            background-color: #16c1f3;
        }
        .nav-func:hover{
            color: black;
            transition-duration: 1s;
        }
    </style>
</head>
<body>
 <header class="top-hader">
        <a href="" id="header-login" class="header-func">LOGIN</a>
        <a href="" id="header-createAccount"  class="header-func">JOIN US</a>
        <a href="" id="header-cart"  class="header-func">Cart</a>
    </header>
    <div id="logo">
        <h1 id="logoTitle">Mini Shop</h1>
        <div id="logo-tag">
            <ul id="logo-tag-list">
                <li style="padding: 0 10px;">만든이 : </li>
                <li style="padding-right: 13px;">이병길</li>
                <li style="padding-right: 13px;">이선로</li>
                <li style="padding-right: 250px;">임지훈</li>
                <li style="padding-right: 10px;">박소은</li>
                <li style="padding-right: 10px;">정혜란</li>
                <li style="padding-right: 10px;">정수용</li>
            </ul>
        </div>
    </div>
    <nav id="navbar">
        <ul id="nav-list">
            <li><a href="" class="nav-func">BEST</a></li>
            <li><a href="" class="nav-func">MAN</a></li>
            <li><a href="" class="nav-func">WOMEN</a></li>
            <li><a href="" class="nav-func">ACCESSARY</a></li>
        </ul>
    </nav>

