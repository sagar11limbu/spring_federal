<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Welcome</title>

    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
<!-- Static navbar -->
      <div class="navbar  navbar-default">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="offcanvas" data-target=".navbar-offcanvas" data-canvas="body">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="${contextPath}/">Federal Nepal</a>
        </div>
        <div class="navbar-offcanvas offcanvas">
          
          <ul class="nav navbar-nav">
            <li><a href="">Articles</a></li>
            <li><a href="">History</a></li>
            <li><a href="">Members</a></li>
            <li><a href="${contextPath}/login">Sign In</a></li>
            <li><a href="${contextPath}/registration">Sign Up</a></li>
            <li class="dropdown pull-right" href="${contextPath}/profile">
              <a href="#" class="dropdown-toggle pull-right" data-toggle="dropdown">Profile <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="#">Edit Profile</a></li>
                <li><a href="#">Change Password</a></li>
                <li><a href="#" onclick="document.forms['logoutForm'].submit()">Logout</a></li>
                
              </ul>
            </li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>

<div class="container">

    <c:if test="${pageContext.request.userPrincipal.name != null}">
        <form id="logoutForm" method="POST" action="${contextPath}/logout">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </form>

        <h2>Welcome ${pageContext.request.userPrincipal.name} | <a onclick="document.forms['logoutForm'].submit()">Logout</a></h2>

    </c:if>

</div>
<!-- /container -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>
