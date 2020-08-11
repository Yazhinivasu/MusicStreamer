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
    <link href="${contextPath}/resources/css/home_style.css" rel="stylesheet">
</head>
<body>
  <div class="container">    
        <!--  form id="logoutForm" method="POST" action="${contextPath}/logout">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </form-->

        <div class="wrapper">
    <div class="sidebar">
        <h2>Music Streamer</h2>
        <ul>
            <li><a href="#"><i class="fas "></i>Home</a></li>
          	<li><a href="${contextPath}/login">Sign in</a></li>
          	<li><a href="${contextPath}/registration">Sign up</a></li>
            <li><a href="#"><i class="fas "></i>Language</a></li>
            <li><a href="#"><i class="fas "></i>About</a></li>
        </ul> 
    </div>
    </div>
    </div>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
  <script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>