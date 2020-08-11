<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<c:import url="${contextPath}/resources/images/" />

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Log in with your account</title>
   
    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet" >
    <link href="${contextPath}/resources/css/common.css" rel="stylesheet" type="text/css">
   
</head>

<body>
<div class="container">

    <form method="POST" action="/login" class="form-signin">
        <h2 class="form-heading" style="color:white">Sign in</h2>

        <div class="form-group ${error != null ? 'has-error' : ''}">
            <span>${message}</span>
            <input name="username" type="text" class="form-control" placeholder="Username"
                   autofocus="true"/>
             <br>
            <input name="password" type="password" class="form-control" placeholder="Password"/>
            <span>${error}</span>
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
			<br>
            <button class="btn btn-lg btn-primary btn-block" type="submit" ><a href="${contextPath}/welcome" style="color:white">Log In</a></button>
            <br>
            <h4 class="text-center" style="color:white">Don't have an account?<br><a href="${contextPath}/registration" >Create an account</a></h4>
        </div>

    </form>

</div>
<!-- /container -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>
