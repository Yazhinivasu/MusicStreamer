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
    <title>Music Streamer</title>
    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/css/home_style.css" rel="stylesheet">
    <meta charset="UTF-8">
	<!--script src="https://kit.fontawesome.com/b99e675b6e.js"></script-->
</head>
<body>
  <div class="container">
    <c:if test="${pageContext.request.userPrincipal.name != null}" >
        <form id="logoutForm" method="POST" action="${contextPath}/logout">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </form>

        <h1 style="color:white">Welcome ${pageContext.request.userPrincipal.name}</h1>
    </c:if>
  	<div class="wrapper">
    <div class="sidebar">
        <h2>Music Streamer</h2>
        <ul>
            <li><a href="#"><i class="fas fa-home"></i>Home</a></li>
            <li><a href="#"><i class="fas fa-user"></i>My Playlist</a></li>
            <li><a href="#"><i class="fas fa-project-diagram"></i>Language</a></li>
            <li><a href="#"><i class="fas fa-blog"></i>Downloads</a></li>
            <li><a href="#"><i class="fas fa-address-book"></i>Recents</a></li>
            <li><a href="#"><i class="fas fa-map-pin"></i>History</a></li>
            <li><a href="#"><i class="fas fa-address-card"></i>About</a></li>
            <li><a onclick="document.forms['logoutForm'].submit()"><a href="${contextPath}/home">Logout</a></a></li>
        </ul> 
    </div>
    </div>
     </div>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
  <script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>