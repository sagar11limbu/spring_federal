<%@ taglib prefix="security"
  uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<html>
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
<title>Welcome to Federal Nepal</title>

 <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
 <link href="${contextPath}/resources/css/common.css" rel="stylesheet"> 
</head>
<body>
	<header>
		<div class="container" id="top">
		<div class="row">
			<div class="col-md-4">
				<div class="logo_area">
					<img alt="flag" src="${contextPath}/resources/images/flag.gif">
					<img alt="flag" src="${contextPath}/resources/images/federal_flag.png">
				</div>
			</div>
		</div>
	</div>

      <!-- Static navbar -->
      <div class="navbar  navbar-default" id="menu" style="color:#fff;">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="offcanvas" data-target=".navbar-offcanvas" data-canvas="body">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="${contextPath}/"></a>
        </div>
        <div class="navbar-offcanvas offcanvas ">
          
          <ul class="nav navbar-nav">
          	 <li><a href="${contextPath}/">Home</a></li>
            <li><a href="">Articles</a></li>
            <li><a href="">History</a></li>
            <li><a href="">Members</a></li>
            <li><a href="${contextPath}/login">Sign In</a></li>
            <li><a href="${contextPath}/registration">Sign Up</a></li>
             <security:authorize access="hasRole('ROLE_USER')">
				   <li class="dropdown pull-right" href="${contextPath}/profile">
              <a href="#" class="dropdown-toggle pull-right" data-toggle="dropdown">Profile <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="#">Edit Profile</a></li>
                <li><a href="#">Change Password</a></li>
                <li><a href="#" document.forms['logoutForm'].submit()">Logout</a></li>
                
              </ul>
            </li>
			</security:authorize>
           <div class="container">

    <c:if test="${pageContext.request.userPrincipal.name != null}">
        <form id="logoutForm" method="POST" action="${contextPath}/logout">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </form>

        <h2>Welcome ${pageContext.request.userPrincipal.name} | <a onclick="document.forms['logoutForm'].submit()">Logout</a></h2>

    </c:if>

</div>
            
          </ul>
        </div><!--/.nav-collapse -->
      </div>
	</header>
	

<h1>welcome to federal nepal</h1>
           

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>