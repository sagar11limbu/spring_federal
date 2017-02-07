<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!-- this jsp tag is required for implementing security tag-libs -->
<%@ taglib prefix="security"
  uri="http://www.springframework.org/security/tags" %>

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

    <title>Create an account</title>

    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/css/common.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
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
            <security:authorize access="hasRole('ROLE_USER')">
            <li class="dropdown pull-right">
              <a href="#" class="dropdown-toggle pull-right" data-toggle="dropdown">Profile <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="#">Edit Profile</a></li>
                <li><a href="#">Change Password</a></li>
                <li><a href="#">Logout</a></li>
                
              </ul>
            </li>
             </security:authorize>
          </ul>
        </div><!--/.nav-collapse -->
      </div>

<div class="container">

    <form:form method="POST" modelAttribute="userForm" class="form-signin">
        <h2 class="form-signin-heading">Create your account</h2>
        <spring:bind path="username">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="username" class="form-control" placeholder="Username"
                            autofocus="true"></form:input>
                <form:errors path="username"></form:errors>
            </div>
        </spring:bind>

        <spring:bind path="password">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="password" path="password" class="form-control" placeholder="Password"></form:input>
                <form:errors path="password"></form:errors>
            </div>
        </spring:bind>

        <spring:bind path="passwordConfirm">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="password" path="passwordConfirm" class="form-control"
                            placeholder="Confirm your password"></form:input>
                <form:errors path="passwordConfirm"></form:errors>
            </div>
        </spring:bind>
        
         <spring:bind path="email">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="email" path="email" class="form-control"
                            placeholder="Email"></form:input>
                <form:errors path="email"></form:errors>
            </div>
        </spring:bind>
        
         <spring:bind path="address">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="address" path="address" class="form-control"
                            placeholder="Address"></form:input>
                <form:errors path="address"></form:errors>
            </div>
        </spring:bind>
        
         <spring:bind path="phone">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="number" path="phone" class="form-control"
                            placeholder="Phone Number"></form:input>
                <form:errors path="phone"></form:errors>
            </div>
        </spring:bind>

        <button class="btn btn-lg btn-primary btn-block" type="submit">Submit</button>
    </form:form>

</div>
<!-- /container -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>
