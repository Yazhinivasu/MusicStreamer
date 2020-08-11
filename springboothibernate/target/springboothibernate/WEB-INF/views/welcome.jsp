<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<c:import url="${contextPath}/resources/images/" />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Create an account</title>
    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/css/style.css" rel="stylesheet">
</head>
<body>
  <div class="container">
    <c:if test="${pageContext.request.userPrincipal.name != null}">
        <form id="logoutForm" method="POST" action="${contextPath}/logout">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </form>

        <h1 style="color:white">Welcome ${pageContext.request.userPrincipal.name}</h1>
    </c:if>
  	<ul class="area">
            <li><a href="${contextPath}/login">Sign in</a></li>
            <li><a href="${contextPath}/registration">Sign up</a></li>
            <li><a href="#">About us</li>
            <li><a href="#">Contact</li>
            <li><a onclick="document.forms['logoutForm'].submit()">Logout</a></li>
        </ul>
        <div class="slide">
            <span id="image-1"></span>
            <span id="image-2"></span>
            <span id="image-3"></span>
            <div class="imageSlides">
                <img src="/resources/images/slide1.jpg" class="slider-image">
                <img src="/resources/images/slide2.jpg" class="slider-image">
                <img src="/resources/images/slide3.jpg" class="slider-image">
            </div>
            <div class="button-container">
                <a href="#image-1" class="slider-button"></a>
                <a href="#image-2" class="slider-button"></a>
                <a href="#image-3" class="slider-button"></a>
            </div>
        </div>
        </div>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
  <script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>