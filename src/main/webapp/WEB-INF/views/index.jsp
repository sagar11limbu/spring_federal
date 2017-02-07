<%@ taglib prefix="security"
  uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Federal Nepal</title>

    <!-- favicon -->
    <link href="assets/img/favicon.png" rel=icon>

    <!-- web-fonts -->
    <link href='https://fonts.googleapis.com/css?family=Roboto:100,300,400,700,500' rel='stylesheet' type='text/css'>

    <!-- Bootstrap -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">

    <!-- font-awesome -->
    <link href="assets/fonts/font-awesome/font-awesome.min.css" rel="stylesheet">
    <!-- Mobile Menu Style -->
    <link href="assets/css/mobile-menu.css" rel="stylesheet">

    <!-- Owl carousel -->
    <link href="assets/css/owl.carousel.css" rel="stylesheet">
    <link href="assets/css/owl.theme.default.min.css" rel="stylesheet">
    <!-- Theme Style -->
    <link href="assets/css/style.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body id="page-top" data-spy="scroll" data-target=".navbar">
<div id="main-wrapper">
<!-- Page Preloader -->
<div id="preloader">
    <div id="status">
        <div class="status-mes"></div>
    </div>
</div>
<!-- preloader -->

<div class="uc-mobile-menu-pusher">
<div class="content-wrapper">
<section id="header_section_wrapper" class="header_section_wrapper">
    <div class="container-fluid">
        <div class="header-section">
            <div class="row">
                <div class="col-md-4">
                    <div class="left_section">
                                            <span class="date">
                                                Sunday .
                                            </span>
                        <!-- Date -->
                                            <span class="time">
                                                09 August . 2016
                                            </span>
                        <!-- Time -->
                        <div class="social">
                            <a class="icons-sm fb-ic"><i class="fa fa-facebook"></i></a>
                            <!--Twitter-->
                            <a class="icons-sm tw-ic"><i class="fa fa-twitter"></i></a>
                            <!--Google +-->
                            <a class="icons-sm inst-ic"><i class="fa fa-instagram"> </i></a>
                        </div>
                        <!-- Top Social Section -->
                    </div>
                    <!-- Left Header Section -->
                </div>
                <div class="col-md-4">
                    <div class="logo">
                        <a href="index.html"><img src="assets/img/logo.png" alt="Tech NewsLogo"></a>
                    </div>
                    <!-- Logo Section -->
                </div>
                <div class="col-md-4">
                    <div class="right_section">
                    <security:authorize access="hasRole('ROLE_USER')">
       					<div class="dropdown pull-right">
						  <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Profile
						  <span class="caret"></span></button>
						  <ul class="dropdown-menu">
						    <li><a href="#">Edit Profile</a></li>
						    <li><a href="${contextPath}/changepassword">Change Password</a></li>
						    <li><a href="#" onclick="document.forms['logoutForm'].submit()">Logout</a></li>
						  </ul>
						</div>
					</security:authorize>
                    </div>
                    <!-- Right Header Section -->
                </div>
            </div>
        </div>
        <!-- Header Section -->
        <!-- .navigation-section -->
    </div>
    <div class="container">

    <c:if test="${pageContext.request.userPrincipal.name != null}">
        <form id="logoutForm" method="POST" action="${contextPath}/logout">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </form>

        

    </c:if>

</div>
</section>

    <nav class="navbar navbar-default navbar-inverse" role="navigation"> 
  <div class="container">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span> 
        </button>
        <a class="navbar-brand" href="${contextPath}/"><i class="fa fa-home"></i></a>
      </div>
    

    <div class="navbar-collapse collapse" id="bs-example-navbar-collapse-1" style="height: 1px;">
      <ul class="nav navbar-nav">
        <li><a href="">News</a></li>
        <li><a href="${contextPath}/articles">Articles</a></li>
        <li><a href="#">Society</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li class="divider"></li>
            <li><a href="#">Separated link</a></li>
            <li class="divider"></li>
            <li><a href="#">One more separated link</a></li>
          </ul>
        </li>
      </ul>
      <form class="navbar-form navbar-left" role="search">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="Search">
        </div>
        <button type="submit" class="btn btn-default">Submit</button>
      </form>
      
      <security:authorize access="hasRole('ROLE_ANONYMOUS')">
      <ul class="nav navbar-nav navbar-right">
        <li><p class="navbar-text">Already have an account?</p></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown"><b>Login</b> <span class="caret"></span></a>
            <ul id="login-dp" class="dropdown-menu">
                <li>
                     <div class="row">
                            <div class="col-md-12">
                                Login via
                                <div class="social-buttons">
                                    <a href="#" class="btn btn-fb"><i class="fa fa-facebook"></i> Facebook</a>
                                    <a href="#" class="btn btn-tw"><i class="fa fa-twitter"></i> Twitter</a>
                                </div>
                                or
                                                                  <form method="POST" action="${contextPath}/login" class="form-signin">
        <h2 class="form-heading">Log in</h2>

        <div class="form-group ${error != null ? 'has-error' : ''}">
            <span>${message}</span>
            <input name="username" type="text" class="form-control" placeholder="Username"
                   autofocus="true"/>
            <input name="password" type="password" class="form-control" placeholder="Password"/>
            <span>${error}</span>
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

            <button class="btn btn-lg btn-primary btn-block" type="submit">Log In</button>
            <h4 class="text-center"><a href="${contextPath}/registration">Create an account</a></h4>
        </div>

    </form>
                            </div>
                            <div class="bottom text-center">
                                New here ? <a href="${contextPath}/registration"><b>Join Us</b></a>
                            </div>
                     </div>
                </li>
            </ul>
        </li>
      </ul>
      </security:authorize>
      
      <security:authorize access="hasRole('ROLE_USER')">
      <h2 class="pull-right">Welcome ${pageContext.request.userPrincipal.name} </h2>
      </security:authorize>
    </div>
    </div>
    </nav>


<section id="feature_news_section" class="feature_news_section">
    <div class="container">
        <div class="row">
            <div class="col-md-7">
                <div class="feature_article_wrapper">
                    <div class="feature_article_img">
                        <img class="img-responsive top_static_article_img" src="assets/img/feature-top.jpg"
                             alt="feature-top">
                    </div>
                    <!-- feature_article_img -->

                    <div class="feature_article_inner">
                        <div class="tag_lg red"><a href="category.html">Hot News</a></div>
                        <div class="feature_article_title">
                            <h1><a href="single.html" target="_self">Chevrolet car-saving technology delivers </a></h1>
                        </div>
                        <!-- feature_article_title -->

                        <div class="feature_article_date"><a href="#" target="_self">Stive Clark</a>,<a href="#"
                                                                                                         target="_self">Aug
                            4, 2015</a></div>
                        <!-- feature_article_date -->

                        <div class="feature_article_content">
                            In a move to address mounting concerns about security on Android, Google and Samsung are
                            now issuing.
                        </div>
                        <!-- feature_article_content -->

                        <div class="article_social">
                            <span><i class="fa fa-share-alt"></i><a href="#">424</a>Shares</span>
                            <span><i class="fa fa-comments-o"></i><a href="#">4</a>Comments</span>
                        </div>
                        <!-- article_social -->

                    </div>
                    <!-- feature_article_inner -->

                </div>
                <!-- feature_article_wrapper -->

            </div>
            <!-- col-md-7 -->

            <div class="col-md-5">
                <div class="feature_static_wrapper">
                    <div class="feature_article_img">
                        <img class="img-responsive" src="assets/img/feature-static1.jpg" alt="feature-top">
                    </div>
                    <!-- feature_article_img -->

                    <div class="feature_article_inner">
                        <div class="tag_lg purple"><a href="category.html">Top Viewed</a></div>
                        <div class="feature_article_title">
                            <h1><a href="single.html" target="_self">Alcatel's $180 Idol 3 4.7 is a </a></h1>
                        </div>
                        <!-- feature_article_title -->

                        <div class="feature_article_date"><a href="#" target="_self">Stive Clark</a>,<a href="#"
                                                                                                         target="_self">Aug
                            4, 2015</a></div>
                        <!-- feature_article_date -->

                        <div class="feature_article_content">
                            In a move to address mounting concerns about security on Android...
                        </div>
                        <!-- feature_article_content -->

                        <div class="article_social">
                            <span><i class="fa fa-share-alt"></i><a href="#">424</a>Shares</span>
                            <span><i class="fa fa-comments-o"></i><a href="#">4</a>Comments</span>
                        </div>
                        <!-- article_social -->

                    </div>
                    <!-- feature_article_inner -->

                </div>
                <!-- feature_static_wrapper -->

            </div>
            <!-- col-md-5 -->

            <div class="col-md-5">
                <div class="feature_static_last_wrapper">
                    <div class="feature_article_img">
                        <img class="img-responsive" src="assets/img/feature-static2.jpg" alt="feature-top">
                    </div>
                    <!-- feature_article_img -->

                    <div class="feature_article_inner">
                        <div class="tag_lg blue"><a href="category.html">Top Viewed</a></div>

                        <div class="feature_article_title">
                            <h1><a href="single.html" target="_self">Gadget user good news</a></h1>
                        </div>
                        <!-- feature_article_title -->

                        <div class="feature_article_date"><a href="#" target="_self">Stive Clark</a>,<a href="#"
                                                                                                         target="_self">Aug
                            4, 2015</a></div>
                        <!-- feature_article_date -->

                        <div class="feature_article_content">
                            In a move to address mounting concerns about security on Android...
                        </div>
                        <!-- feature_article_content -->

                        <div class="article_social">
                            <span><i class="fa fa-share-alt"></i><a href="#">424</a>Shares</span>
                            <span><i class="fa fa-comments-o"></i><a href="#">4</a>Comments</span>
                        </div>
                        <!-- article_social -->

                    </div>
                    <!-- feature_article_inner -->

                </div>
                <!-- feature_static_wrapper -->

            </div>
            <!-- col-md-5 -->

        </div>
        <!-- Row -->

    </div>
    <!-- container -->

</section>
<!-- Feature News Section -->

<section id="category_section" class="category_section">
<div class="container">
<div class="row">
<div class="col-md-8">
<div class="category_section mobile">
    <div class="article_title header_purple">
        <h2><a href="category.html" target="_self">Mobile</a></h2>
    </div>
    <!----article_title------>
    <div class="category_article_wrapper">
        <div class="row">
            <div class="col-md-6">
                <div class="top_article_img">
                    <a href="single.html" target="_self"><img class="img-responsive"
                                                               src="assets/img/cat-mobi-left-1.jpg" alt="feature-top">
                    </a>
                </div>
                <!----top_article_img------>
            </div>
            <div class="col-md-6">
                <span class="tag purple">Mobile</span>

                <div class="category_article_title">
                    <h2><a href="single.html" target="_self">Airbnb launches photo-centric app for iPads and Android
                        tablets. </a></h2>
                </div>
                <!----category_article_title------>
                <div class="category_article_date"><a href="#">10Aug- 2015</a>, by: <a href="#">Eric joan</a></div>
                <!----category_article_date------>
                <div class="category_article_content">
                    Collaboratively administrate empowered markets via plug-and-play networks. Dynamically procrastinate
                    B2C users after installed base benefits. Dramatically visualize customer directed convergence
                    without revolutionary ROI.
                </div>
                <!----category_article_content------>
                <div class="media_social">
                    <span><a href="#"><i class="fa fa-share-alt"></i>424 </a> Shares</span>
                    <span><i class="fa fa-comments-o"></i><a href="#">4</a> Comments</span>
                </div>
                <!----media_social------>
            </div>
        </div>
    </div>
    <div class="category_article_wrapper">
        <div class="row">
            <div class="col-md-6">
                <div class="media">
                    <div class="media-left">
                        <a href="#"><img class="media-object" src="assets/img/cat-mobi-sm1.jpg"
                                         alt="Generic placeholder image"></a>
                    </div>
                    <div class="media-body">
                        <span class="tag purple">Mobile</span>

                        <h3 class="media-heading"><a href="single.html" target="_self">Apple launches photo-centric
                            wrist watch for Android</a></h3>
                        <span class="media-date"><a href="#">10Aug- 2015</a>,  by: <a href="#">Eric joan</a></span>

                        <div class="media_social">
                            <span><a href="#"><i class="fa fa-share-alt"></i>424</a> Shares</span>
                            <span><a href="#"><i class="fa fa-comments-o"></i>4</a> Comments</span>
                        </div>
                    </div>
                </div>
                <div class="media">
                    <div class="media-left">
                        <a href="#"><img class="media-object" src="assets/img/cat-mobi-sm3.jpg"
                                         alt="Generic placeholder image"></a>
                    </div>
                    <div class="media-body">
                        <span class="tag purple">Mobile</span>

                        <h3 class="media-heading"><a href="single.html" target="_self">The Portable Charger or data
                            cable</a></h3>
                        <span class="media-date"><a href="#">10Aug- 2015</a>,  by: <a href="#">Eric joan</a></span>

                        <div class="media_social">
                            <span><a href="#"><i class="fa fa-share-alt"></i>424</a> Shares</span>
                            <span><a href="#"><i class="fa fa-comments-o"></i>4</a> Comments</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="media">
                    <div class="media-left">
                        <a href="#"><img class="media-object" src="assets/img/cat-mobi-sm2.jpg"
                                         alt="Generic placeholder image"></a>
                    </div>
                    <div class="media-body">
                        <span class="tag purple">Mobile</span>

                        <h3 class="media-heading"><a href="single.html" target="_self">Iphone 6 launches white & Grey
                            colors handset</a></h3>
                        <span class="media-date"><a href="#">10Aug- 2015</a>,  by: <a href="#">Eric joan</a></span>

                        <div class="media_social">
                            <span><a href="#"><i class="fa fa-share-alt"></i>424</a> Shares</span>
                            <span><a href="#"><i class="fa fa-comments-o"></i>4</a> Comments</span>
                        </div>
                    </div>
                </div>
                <div class="media">
                    <div class="media-left">
                        <a href="#"><img class="media-object" src="assets/img/cat-mobi-sm4.jpg"
                                         alt="Generic placeholder image"></a>
                    </div>
                    <div class="media-body">
                        <span class="tag purple">Mobile</span>

                        <h3 class="media-heading"><a href="single.html" target="_self">Fully new look slim handset
                            like</a></h3>
                        <span class="media-date"><a href="#">10Aug- 2015</a>,  by: <a href="#">Eric joan</a></span>

                        <div class="media_social">
                            <span><a href="#"><i class="fa fa-share-alt"></i>424</a> Shares</span>
                            <span><a href="#"><i class="fa fa-comments-o"></i>4</a> Comments</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <p class="divider"><a href="#">More News&nbsp;&raquo;</a></p>
</div>
<!-- Mobile News Section -->

<div class="category_section tablet">
    <div class="article_title header_pink">
        <h2><a href="category.html" target="_self">Tablet Pc</a></h2>
    </div>
    <!-- Mobile News Section -->

    <div class="category_article_wrapper">
        <div class="row">
            <div class="col-md-6">
                <div class="category_article_body">
                    <div class="top_article_img">
                        <a href="single.html" target="_self"><img class="img-responsive" src="assets/img/tab_top1.jpg"
                                                                   alt="feature-top">
                        </a>
                    </div>
                    <!-- top_article_img -->

                    <span class="tag pink"><a href="category.html" target="_self">Tablet</a></span>

                    <div class="category_article_title">
                        <h2><a href="single.html" target="_self">Sony launce a new Android tablets for new
                            generation </a></h2>
                    </div>
                    <!-- category_article_title -->

                    <div class="article_date"><a href="#">10Aug- 2015</a>, by: <a href="#">Eric joan</a></div>
                    <!----article_date------>
                    <!-- article_date -->

                    <div class="category_article_content">
                        Collaboratively administrate empowered markets via plug-and-play networks. Dynamically
                        procrastinate B2C users after.
                    </div>
                    <!-- category_article_content -->

                    <div class="media_social">
                        <span><a href="#"><i class="fa fa-share-alt"></i>424 </a> Shares</span>
                        <span><i class="fa fa-comments-o"></i><a href="#">4</a> Comments</span>
                    </div>
                    <!-- media_social -->

                </div>
                <!-- category_article_body -->

            </div>
            <!-- col-md-6 -->

            <div class="col-md-6">
                <div class="category_article_body">
                    <div class="top_article_img">
                        <a href="single.html" target="_self">
                            <img class="img-responsive" src="assets/img/tab_top2.jpg" alt="feature-top">
                        </a>
                    </div>
                    <!-- top_article_img -->

                    <span class="tag pink"><a href="category.html" target="_self">Tablet</a></span>

                    <div class="category_article_title">
                        <h2><a href="single.html" target="_self">Technology market see the new Android tablets </a>
                        </h2>
                    </div>
                    <!-- category_article_title -->

                    <div class="article_date"><a href="#">10Aug- 2015</a>, by: <a href="#">Eric joan</a></div>
                    <!----article_date------>
                    <!-- article_date -->

                    <div class="category_article_content">
                        Collaboratively administrate empowered markets via plug-and-play networks. Dynamically
                        procrastinate B2C users after.
                    </div>
                    <!-- category_article_content -->

                    <div class="media_social">
                        <span><a href="#"><i class="fa fa-share-alt"></i>424 </a> Shares</span>
                        <span><i class="fa fa-comments-o"></i><a href="#">4</a> Comments</span>
                    </div>
                    <!-- media_social -->

                </div>
                <!-- category_article_body -->

            </div>
            <!-- col-md-6 -->

        </div>
        <!-- row -->

    </div>
    <!-- category_article_wrapper -->

    <p class="divider"><a href="#">More News&nbsp;&raquo;</a></p>
</div>
<!-- Tablet News Section -->

<div class="category_section gadget">
    <div class="article_title header_black">
        <h2><a href="category.html" target="_self">Gadgets</a></h2>
    </div>
    <div class="category_article_wrapper">
        <div class="row">
            <div class="col-md-6">
                <div class="category_article_body">
                    <div class="top_article_img">
                        <a href="single.html" target="_self">
                            <img class="img-responsive" src="assets/img/gad_top1.jpg" alt="feature-top">
                        </a>
                    </div>
                    <!-- top_article_img -->

                    <span class="tag black"><a href="category.html" target="_self">Gadgets</a></span>

                    <div class="category_article_title">
                        <h2><a href="single.html" target="_self">A good news for gadget users Ds tech comming soon</a>
                        </h2>
                    </div>
                    <!-- category_article_title -->

                    <div class="article_date"><a href="#">10Aug- 2015</a>, by: <a href="#">Eric joan</a></div>
                    <!----article_date------>
                    <div class="category_article_content">
                        Collaboratively administrate empowered markets via plug-and-play networks. Dynamically
                        procrastinate B2C users after.
                    </div>
                    <!-- category_article_content -->

                    <div class="media_social">
                        <span><a href="#"><i class="fa fa-share-alt"></i>424 </a> Shares</span>
                        <span><i class="fa fa-comments-o"></i><a href="#">4</a> Comments</span>
                    </div>
                    <!-- media_social -->

                </div>
                <!-- category_article_body -->

                <div class="category_article_list">
                    <div class="media">
                        <div class="media-left">
                            <a href="#"><img class="media-object" src="assets/img/cat-mobi-sm1.jpg"
                                             alt="Generic placeholder image"></a>
                        </div>
                        <div class="media-body">
                            <h3 class="media-heading"><a href="single.html" target="_self">Apple launches photo-centric
                                wrist watch for Android</a></h3>
                            <span class="media-date"><a href="#">10Aug- 2015</a>,  by: <a href="#">Eric joan</a></span>

                            <div class="media_social">
                                <span><a href="#"><i class="fa fa-share-alt"></i>424</a> Shares</span>
                                <span><a href="#"><i class="fa fa-comments-o"></i>4</a> Comments</span>
                            </div>
                        </div>
                    </div>
                    <div class="media">
                        <div class="media-left">
                            <a href="#"><img class="media-object" src="assets/img/cat-mobi-sm3.jpg"
                                             alt="Generic placeholder image"></a>
                        </div>
                        <div class="media-body">
                            <h3 class="media-heading"><a href="single.html" target="_self">Apple launches photo-centric
                                wrist watch for Android</a></h3>
                            <span class="media-date"><a href="#">10Aug- 2015</a>,  by: <a href="#">Eric joan</a></span>

                            <div class="media_social">
                                <span><a href="#"><i class="fa fa-share-alt"></i>424</a> Shares</span>
                                <span><a href="#"><i class="fa fa-comments-o"></i>4</a> Comments</span>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- category_article_list -->

            </div>
            <!-- col-md-6 -->

            <div class="col-md-6">
                <div class="category_article_body">
                    <div class="top_article_img">
                        <img class="img-responsive" src="assets/img/gad_top2.jpg" alt="feature-top">
                    </div>
                    <!-- top_article_img -->

                    <span class="tag black">Gadgets</span>

                    <div class="category_article_title">
                        <h2><a href="single.html" target="_self">Apple launches photo-centric app for iPads and Android
                            tablets</a></h2>
                    </div>
                    <!-- category_article_title -->

                    <div class="article_date"><a href="#">10Aug- 2015</a>, by: <a href="#">Eric joan</a></div>
                    <!-- article_date -->

                    <div class="category_article_content">
                        Collaboratively administrate empowered markets via plug-and-play networks. Dynamically
                        procrastinate B2C users after installed base benefits. Dramatically visualize customer directed
                        convergence without revolutionary ROI.
                    </div>
                    <!-- category_article_content -->

                    <div class="article_social">
                        <span><i class="fa fa-share-alt"></i><a href="#">424</a>Shares</span>
                        <span><i class="fa fa-comments-o"></i><a href="#">4</a>Comments</span>
                    </div>
                    <!-- article_social -->

                </div>
                <!-- category_article_body -->
            </div>
        </div>
        <!-- row -->

    </div>
    <!-- category_article_wrapper -->

    <p class="divider"><a href="#">More News&nbsp;&raquo;</a></p>
</div>
<!-- Gadget News Section -->

<div class="category_section camera">
    <div class="article_title header_orange">
        <h2><a href="category.html" target="_self">Camera</a></h2>
    </div>
    <!-- article_title -->

    <div class="category_article_wrapper">
        <div class="row">
            <div class="col-md-5">
                <div class="top_article_img">
                    <a href="single.html" target="_self">
                        <img class="img-responsive" src="assets/img/cam_left1.jpg" alt="feature-top">
                    </a>
                </div>
                <!-- top_article_img -->

            </div>
            <div class="col-md-7">
                <span class="tag orange">Camera</span>

                <div class="category_article_title">
                    <h2><a href="single.html" target="_self">Yasaki camera launches new generic hi-speed </a></h2>
                </div>
                <!-- category_article_title -->

                <div class="article_date"><a href="#">10Aug- 2015</a>, by: <a href="#">Eric joan</a></div>
                <!----article_date------>
                <!-- category_article_wrapper -->

                <div class="category_article_content">
                    Collaboratively administrate empowered markets via plug-and-play networks. Dynamically
                    procrastinate.
                </div>
                <!-- category_article_content -->

                <div class="media_social">
                    <span><a href="#"><i class="fa fa-share-alt"></i>424 </a> Shares</span>
                    <span><i class="fa fa-comments-o"></i><a href="#">4</a> Comments</span>
                </div>
                <!-- media_social -->

            </div>
            <!-- col-md-7 -->

        </div>
        <!-- row -->

    </div>
    <!-- category_article_wrapper -->

    <div class="category_article_wrapper">
        <div class="row">
            <div class="col-md-5">
                <div class="top_article_img">
                    <a href="single.html" target="_self">
                        <img class="img-responsive" src="assets/img/cam_left2.jpg" alt="feature-top">
                    </a>
                </div>
                <!-- top_article_img -->

            </div>
            <div class="col-md-7">
                <span class="tag orange">Camera</span>

                <div class="category_article_title">
                    <h2><a href="single.html" target="_self">DSLR is the most old camera at this time </a></h2>
                </div>
                <!-- category_article_title -->

                <div class="article_date"><a href="#">10Aug- 2015</a>, by: <a href="#">Eric joan</a></div>
                <!----article_date------>
                <!-- article_date -->

                <div class="category_article_content">
                    Collaboratively administrate empowered markets via plug-and-play networks. Dynamically
                    procrastinate.
                </div>
                <!-- category_article_content -->

                <div class="media_social">
                    <span><a href="#"><i class="fa fa-share-alt"></i>424 </a> Shares</span>
                    <span><i class="fa fa-comments-o"></i><a href="#">4</a> Comments</span>
                </div>
                <!-- media_social -->

            </div>
        </div>
    </div>
    <!-- category_article_wrapper -->

    <div class="category_article_wrapper">
        <div class="row">
            <div class="col-md-5">
                <div class="top_article_img">
                    <a href="single.html" target="_self">
                        <img class="img-responsive" src="assets/img/cam_left3.jpg" alt="feature-top">
                    </a>
                </div>
                <!-- media_social -->

            </div>
            <div class="col-md-7">
                <span class="tag orange"><a href="single.html" target="_self">Camera</a></span>

                <div class="category_article_title">
                    <h2><a href="single.html" target="_self">Canon Camera launches photo centric Android</a></h2>
                </div>
                <!-- category_article_title -->

                <div class="article_date"><a href="#">10Aug- 2015</a>, by: <a href="#">Eric joan</a></div>
                <!----article_date------>
                <!-- article_date -->

                <div class="category_article_content">
                    Collaboratively administrate empowered markets via plug-and-play networks. Dynamically
                    procrastinate.
                </div>
                <!-- category_article_content -->

                <div class="media_social">
                                    <span>
                                        <a href="#">
                                            <i class="fa fa-share-alt"></i>424
                                        </a> Shares
                                    </span>
                                    <span>
                                        <a href="#">
                                            <i class="fa fa-comments-o"></i>4
                                        </a> Comments
                                    </span>
                </div>
                <!-- media_social -->

            </div>
            <!-- col-md-7 -->

        </div>
        <!-- row -->

    </div>
    <!-- category_article_wrapper -->

    <p class="divider"><a href="#">More News&nbsp;&raquo;</a></p>
</div>
<!-- Camera News Section -->

<div class="category_section design">
    <div class="article_title header_blue">
        <h2><a href="category.html" target="_self">Design</a></h2>
    </div>
    <!-- row -->

    <div class="category_article_wrapper">
        <div class="row">
            <div class="col-md-6">
                <div class="category_article_body">
                    <div class="top_article_img">
                        <a href="single.html" target="_self">
                            <img class="img-responsive" src="assets/img/design_top1.jpg" alt="feature-top">
                        </a>
                    </div>
                    <!-- top_article_img -->

                    <span class="tag blue"><a href="category.html" target="_self">Design</a></span>

                    <div class="category_article_title">
                        <h2><a href="single.html" target="_self">Marketing Tranportation Fast and </a></h2>
                    </div>
                    <!-- category_article_title -->

                    <div class="category_article_date"><a href="#">10Aug- 2015</a>, by: <a href="#">Eric joan</a></div>
                    <!----category_article_date------>
                    <!-- category_article_date -->

                    <div class="category_article_content">
                        Collaboratively administrate empowered markets via plug-and-play networks.
                    </div>
                    <!-- category_article_content -->

                    <div class="media_social">
                        <span><a href="#"><i class="fa fa-share-alt"></i>424 </a> Shares</span>
                        <span><i class="fa fa-comments-o"></i><a href="#">4</a> Comments</span>
                    </div>
                    <!-- media_social -->

                </div>
                <!-- category_article_body -->

            </div>
            <!-- col-md-6 -->

            <div class="col-md-6">
                <div class="category_article_body">
                    <div class="top_article_img">
                        <a href="single.html" target="_self">
                            <img class="img-responsive" src="assets/img/design_top2.jpg" alt="feature-top">
                        </a>
                    </div>
                    <!-- top_article_img -->

                    <span class="tag blue"><a href="category.html" target="_self">Design</a></span>

                    <div class="category_article_title">
                        <h2><a href="single.html" target="_self">Theme Hippo launches Unship </a></h2>
                    </div>
                    <!-- category_article_title -->

                    <div class="category_article_date"><a href="#">10Aug- 2015</a>, by: <a href="#">Eric joan</a></div>
                    <!----category_article_date------>
                    <!-- category_article_date -->

                    <div class="category_article_content">
                        Collaboratively administrate empowered markets via plug-and-play networks.
                    </div>
                    <!-- category_article_content -->

                    <div class="media_social">
                        <span><a href="#"><i class="fa fa-share-alt"></i>424 </a> Shares</span>
                        <span><i class="fa fa-comments-o"></i><a href="#">4</a> Comments</span>
                    </div>
                    <!-- media_social -->

                </div>
                <!-- category_article_body -->

            </div>
            <!-- col-md-6 -->

        </div>
        <!-- row -->

    </div>
    <!-- category_article_wrapper -->

    <div class="category_article_wrapper">
        <div class="row">
            <div class="col-md-6">
                <div class="category_article_body">
                    <div class="top_article_img">
                        <a href="single.html" target="_self">
                            <img class="img-responsive" src="assets/img/design_top3.jpg" alt="feature-top">
                        </a>
                    </div>
                    <!-- top_article_img -->

                    <span class="tag blue"><a href="category.html" target="_self">Design</a></span>

                    <div class="category_article_title">
                        <h2><a href="single.html" target="_self">Huge Ultimate website builder </a></h2>
                    </div>
                    <!-- category_article_title -->

                    <div class="category_article_date"><a href="#">10Aug- 2015</a>, by: <a href="#">Eric joan</a></div>
                    <!----category_article_date------>
                    <!-- category_article_date -->

                    <div class="category_article_content">
                        Collaboratively administrate empowered markets via plug-and-play networks.
                    </div>
                    <!-- category_article_content -->

                    <div class="media_social">
                        <span><a href="#"><i class="fa fa-share-alt"></i>424 </a> Shares</span>
                        <span><i class="fa fa-comments-o"></i><a href="#">4</a> Comments</span>
                    </div>
                    <!-- media_social -->

                </div>
                <!-- category_article_body -->

            </div>
            <!-- col-md-6 -->

            <div class="col-md-6">
                <div class="category_article_body">
                    <div class="top_article_img">
                        <img class="img-responsive" src="assets/img/design_top4.jpg" alt="feature-top">
                    </div>
                    <!-- top_article_img -->

                    <span class="tag blue"><a href="category.html" target="_self">Design</a></span>

                    <div class="category_article_title">
                        <h2><a href="single.html" target="_self">Just another theme xdesign</a></h2>
                    </div>
                    <!-- category_article_title -->

                    <div class="category_article_date"><a href="#">10Aug- 2015</a>, by: <a href="#">Eric joan</a></div>
                    <!-- category_article_date -->

                    <div class="category_article_content">
                        Collaboratively administrate empowered markets via plug-and-play networks.
                    </div>
                    <!-- category_article_content -->

                    <div class="media_social">
                        <span><a href="#"><i class="fa fa-share-alt"></i>424 </a> Shares</span>
                        <span><i class="fa fa-comments-o"></i><a href="#">4</a> Comments</span>
                    </div>
                    <!-- media_social -->

                </div>
                <!-- category_article_body -->

            </div>
            <!-- top_article_img -->

        </div>
        <!-- top_article_img -->

    </div>
    <!-- top_article_img -->

    <p class="divider"><a href="#">More News&nbsp;&raquo;</a></p>
</div>
<!-- Design News Section -->
</div>
<!-- Left Section -->

<div class="col-md-4">
<div class="widget">
    <div class="widget_title widget_black">
        <h2><a href="#">Popular News</a></h2>
    </div>
    <div class="media">
        <div class="media-left">
            <a href="#"><img class="media-object" src="assets/img/pop_right1.jpg" alt="Generic placeholder image"></a>
        </div>
        <div class="media-body">
            <h3 class="media-heading">
                <a href="single.html" target="_self">Canon launches photo centric 00214 Model supper shutter camera</a>
            </h3> <span class="media-date"><a href="#">10Aug- 2015</a>,  by: <a href="#">Eric joan</a></span>

            <div class="widget_article_social">
                <span>
                    <a href="single.html" target="_self"> <i class="fa fa-share-alt"></i>424</a> Shares
                </span> 
                <span>
                    <a href="single.html" target="_self"><i class="fa fa-comments-o"></i>4</a> Comments
                </span>
            </div>
        </div>
    </div>
    <div class="media">
        <div class="media-left">
            <a href="#"><img class="media-object" src="assets/img/pop_right2.jpg" alt="Generic placeholder image"></a>
        </div>
        <div class="media-body">
            <h3 class="media-heading">
                <a href="single.html" target="_self">Samsung galaxy note are the supper mobile of all products.</a>
            </h3>
            <span class="media-date"><a href="#">10Aug- 2015</a>,  by: <a href="#">Eric joan</a></span>

            <div class="widget_article_social">
                <span>
                    <a href="single.html" target="_self"> <i class="fa fa-share-alt"></i>424</a> Shares
                </span> 
                <span>
                    <a href="single.html" target="_self"><i class="fa fa-comments-o"></i>4</a> Comments
                </span>
            </div>
        </div>
    </div>
    <div class="media">
        <div class="media-left">
            <a href="#"><img class="media-object" src="assets/img/pop_right3.jpg" alt="Generic placeholder image"></a>
        </div>
        <div class="media-body">
            <h3 class="media-heading">
                <a href="single.html" target="_self">Apple launches photo-centric wrist watch for Android</a>
            </h3>
            <span class="media-date"><a href="#">10Aug- 2015</a>,  by: <a href="#">Eric joan</a></span>

            <div class="widget_article_social">
                <span>
                    <a href="single.html" target="_self"> <i class="fa fa-share-alt"></i>424</a> Shares
                </span> 
                <span>
                    <a href="single.html" target="_self"><i class="fa fa-comments-o"></i>4</a> Comments
                </span>
            </div>
        </div>
    </div>
    <div class="media">
        <div class="media-left">
            <a href="#"><img class="media-object" src="assets/img/pop_right4.jpg" alt="Generic placeholder image"></a>
        </div>
        <div class="media-body">
            <h3 class="media-heading">
                <a href="single.html" target="_self">Kodak Hi-Speed shutter double shot camera comming soon</a>
            </h3>
            <span class="media-date"><a href="#">10Aug- 2015</a>,  by: <a href="#">Eric joan</a></span>

            <div class="widget_article_social">
                <span>
                    <a href="single.html" target="_self"><i class="fa fa-share-alt"></i>424</a> Shares
                </span> 
                <span>
                    <a href="single.html" target="_self"><i class="fa fa-comments-o"></i>4</a> Comments
                </span>
            </div>
        </div>
    </div>
    <p class="widget_divider"><a href="#" target="_self">More News&nbsp;&raquo;</a></p>
</div>
<!-- Popular News -->

<div class="widget hidden-xs m30">
    <img class="img-responsive adv_img" src="assets/img/right_add1.jpg" alt="add_one">
    <img class="img-responsive adv_img" src="assets/img/right_add2.jpg" alt="add_one">
    <img class="img-responsive adv_img" src="assets/img/right_add3.jpg" alt="add_one">
    <img class="img-responsive adv_img" src="assets/img/right_add4.jpg" alt="add_one">
</div>
<!-- Advertisement -->

<div class="widget hidden-xs m30">
    <img class="img-responsive widget_img" src="assets/img/right_add5.jpg" alt="add_one">
</div>
<!-- Advertisement -->

<div class="widget reviews m30">
    <div class="widget_title widget_black">
        <h2><a href="#">Reviews</a></h2>
    </div>
    <div class="media">
        <div class="media-left">
            <a href="#"><img class="media-object" src="assets/img/pop_right1.jpg" alt="Generic placeholder image"></a>
        </div>
        <div class="media-body">
            <h3 class="media-heading">
                <a href="single.html" target="_self">DSLR is the most old camera at this time readmore about new
                    products</a>
            </h3> 
            <span class="rating">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star-half-full"></i>
            </span>
        </div>
    </div>
    <div class="media">
        <div class="media-left">
            <a href="#"><img class="media-object" src="assets/img/pop_right2.jpg" alt="Generic placeholder image"></a>
        </div>
        <div class="media-body"><h3 class="media-heading"><a href="single.html" target="_self">Samsung is the best
            mobile in the android market.</a></h3> <span class="rating">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star-half-full"></i>
            </span></div>
    </div>
    <div class="media">
        <div class="media-left">
            <a href="#"><img class="media-object" src="assets/img/pop_right3.jpg" alt="Generic placeholder image"></a>
        </div>
        <div class="media-body">
            <h3 class="media-heading">
                <a href="single.html" target="_self">Apple launches photo-centric wrist watch for Android</a>
            </h3> 
            <span class="rating">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star-half-full"></i>
            </span></div>
    </div>
    <div class="media">
        <div class="media-left">
            <a href="#"><img class="media-object" src="assets/img/pop_right4.jpg" alt="Generic placeholder image"></a>
        </div>
        <div class="media-body">
            <h3 class="media-heading">
                <a href="single.html" target="_self">Yasaki camera launches new generic hi-speed shutter camera.</a>
            </h3> 
            <span class="rating">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star-half-full"></i>
            </span></div>
    </div>
    <p class="widget_divider"><a href="#" target="_self">More News&nbsp;&raquo;</a></p>
</div>
<!-- Reviews News -->

<div class="widget hidden-xs m30">
    <img class="img-responsive widget_img" src="assets/img/right_add6.jpg" alt="add_one">
</div>
<!-- Advertisement -->

<div class="widget m30">
    <div class="widget_title widget_black">
        <h2><a href="#">Most Commented</a></h2>
    </div>
    <div class="media">
        <div class="media-left">
            <a href="#"><img class="media-object" src="assets/img/pop_right1.jpg" alt="Generic placeholder image"></a>
        </div>
        <div class="media-body">
            <h3 class="media-heading">
                <a href="single.html" target="_self">Yasaki camera launches new generic hi-speed shutter camera.</a>
            </h3>

            <div class="media_social">
                <span><i class="fa fa-comments-o"></i><a href="#">4</a> Comments</span>
            </div>
        </div>
    </div>
    <div class="media">
        <div class="media-left">
            <a href="#"><img class="media-object" src="assets/img/pop_right2.jpg" alt="Generic placeholder image"></a>
        </div>
        <div class="media-body">
            <h3 class="media-heading">
                <a href="single.html" target="_self">Samsung is the best mobile in the android market.</a>
            </h3>

            <div class="media_social">
                <span><i class="fa fa-comments-o"></i><a href="#">4</a> Comments</span>
            </div>
        </div>
    </div>
    <div class="media">
        <div class="media-left">
            <a href="#"><img class="media-object" src="assets/img/pop_right3.jpg" alt="Generic placeholder image"></a>
        </div>
        <div class="media-body">
            <h3 class="media-heading">
                <a href="single.html" target="_self">Apple launches photo-centric wrist watch for Android</a>
            </h3>

            <div class="media_social">
                <span><i class="fa fa-comments-o"></i><a href="#">4</a> Comments</span>
            </div>
        </div>
    </div>
    <div class="media">
        <div class="media-left">
            <a href="#"><img class="media-object" src="assets/img/pop_right4.jpg" alt="Generic placeholder image"></a>
        </div>
        <div class="media-body">
            <h3 class="media-heading">
                <a href="single.html" target="_self">DSLR is the most old camera at this time readmore about new
                    products</a>
            </h3>

            <div class="media_social">
                <span><i class="fa fa-comments-o"></i><a href="#">4</a> Comments</span>
            </div>
        </div>
    </div>
    <p class="widget_divider"><a href="#" target="_self">More News&nbsp;&nbsp;&raquo; </a></p>
</div>
<!-- Most Commented News -->

<div class="widget m30">
    <div class="widget_title widget_black">
        <h2><a href="#">Editor Corner</a></h2>
    </div>
    <div class="widget_body"><img class="img-responsive left" src="assets/img/editor.jpg"
                                  alt="Generic placeholder image">

        <p>Collaboratively administrate empowered markets via plug-and-play networks. Dynamically procrastinate B2C
            users after installed base benefits. Dramatically visualize customer directed convergence without</p>

        <p>Collaboratively administrate empowered markets via plug-and-play networks. Dynamically procrastinate B2C
            users after installed base benefits. Dramatically visualize customer directed convergence without
            revolutionary ROI.</p>
        <button class="btn pink">Read more</button>
    </div>
</div>
<!-- Editor News -->

<div class="widget hidden-xs m30">
    <img class="img-responsive add_img" src="assets/img/right_add7.jpg" alt="add_one">
    <img class="img-responsive add_img" src="assets/img/right_add7.jpg" alt="add_one">
    <img class="img-responsive add_img" src="assets/img/right_add7.jpg" alt="add_one">
    <img class="img-responsive add_img" src="assets/img/right_add7.jpg" alt="add_one">
</div>
<!--Advertisement -->

<div class="widget m30">
    <div class="widget_title widget_black">
        <h2><a href="#">Readers Corner</a></h2>
    </div>
    <div class="widget_body"><img class="img-responsive left" src="assets/img/reader.jpg"
                                  alt="Generic placeholder image">

        <p>Collaboratively administrate empowered markets via plug-and-play networks. Dynamically procrastinate B2C
            users after installed base benefits. Dramatically visualize customer directed convergence without</p>

        <p>Collaboratively administrate empowered markets via plug-and-play networks. Dynamically procrastinate B2C
            users after installed base benefits. Dramatically visualize customer directed convergence without
            revolutionary ROI.</p>
        <button class="btn pink">Read more</button>
    </div>
</div>
<!--  Readers Corner News -->

<div class="widget hidden-xs m30">
    <img class="img-responsive widget_img" src="assets/img/podcast.jpg" alt="add_one">
</div>
<!--Advertisement-->
</div>
<!-- Right Section -->

</div>
<!-- Row -->

</div>
<!-- Container -->

</section>
<!-- Category News Section -->

<section id="video_section" class="video_section">
    <div class="container">
        <div class="well">
            <div class="row">
                <div class="col-md-6">
                    <div class="embed-responsive embed-responsive-4by3">
                        <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/MJ-jbFdUPns"
                                frameborder="0" allowfullscreen></iframe>
                    </div>
                    <!-- embed-responsive -->

                </div>
                <!-- col-md-6 -->

                <div class="col-md-3">
                    <div class="embed-responsive embed-responsive-4by3">
                        <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/h5Jni-vy_5M"></iframe>
                    </div>
                    <!-- embed-responsive -->

                    <div class="embed-responsive embed-responsive-4by3 m16">
                        <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/wQ5Gj0UB_R8"></iframe>
                    </div>
                    <!-- embed-responsive -->

                </div>
                <!-- col-md-3 -->

                <div class="col-md-3">
                    <div class="embed-responsive embed-responsive-4by3">
                        <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/UPvJXBI_3V4"></iframe>
                    </div>
                    <!-- embed-responsive -->

                    <div class="embed-responsive embed-responsive-4by3 m16">
                        <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/DTCtj5Wz6BM"></iframe>
                    </div>
                    <!-- embed-responsive -->

                </div>
                <!-- col-md-3 -->

            </div>
            <!-- row -->

        </div>
        <!-- well -->

    </div>
    <!-- Container -->

</section>
<!-- Video News Section -->

<section id="subscribe_section" class="subscribe_section">
    <div class="row">
        <form action="#" method="post" class="form-horizontal">
            <div class="form-group form-group-lg">
                <label class="col-sm-6 control-label" for="formGroupInputLarge">
                    <h1><span class="red-color">Sign up</span> for the latest news</h1>
                </label>

                <div class="col-sm-3">
                    <input type="text" id="subscribe" name="subscribe" class="form-control input-lg">
                </div>
                <div class="col-sm-1">
                    <input type="submit" value="Sign Up" class="btn btn-large pink">
                </div>
                <div class="col-sm-2"></div>
            </div>
        </form>
    </div>
</section>
<!-- Subscriber Section -->

<section id="footer_section" class="footer_section">
    <div class="container">
        <hr class="footer-top">
        <div class="row">
            <div class="col-md-3">
                <div class="footer_widget_title"><h3><a href="category.html" target="_self">About Tech</a></h3></div>
                <div class="logo footer-logo">
                    <a title="fontanero" href="index.html">
                        <img src="assets/img/tech_about.jpg" alt="technews">
                    </a>

                    <p>Competently conceptualize go forward testing procedures and B2B expertise. Phosfluorescently
                        cultivate principle-centered methods.of empowerment through fully researched.</p>
                </div>
            </div>
            <div class="col-md-3">
                <div class="footer_widget_title">
                    <h3><a href="category.html" target="_self">Discover</a></h3>
                </div>
                <div class="row">
                    <div class="col-xs-4">
                        <ul class="list-unstyled left">
                            <li><a href="#">Mobile</a></li>
                            <li><a href="#">Tablet</a></li>
                            <li><a href="#">Gadgets</a></li>
                            <li><a href="#">Design</a></li>
                            <li><a href="#">Camera</a></li>
                            <li><a href="#">Apps</a></li>
                            <li><a href="#">Login</a></li>
                            <li><a href="#">About Us</a></li>
                            <li><a href="#">Membership</a></li>
                            <li><a href="#">Blog</a></li>
                            <li><a href="#">Job</a></li>
                            <li><a href="#">SiteMap</a></li>
                        </ul>
                    </div>
                    <div class="col-xs-8">
                        <ul class="list-unstyled">
                            <li><a href="#">Contact Us</a></li>
                            <li><a href="#">Newsletter Alerts</a></li>
                            <li><a href="#">Podcast</a></li>
                            <li><a href="#">Sms Subscription</a></li>
                            <li><a href="#">Advertisement Policy</a></li>
                            <li><a href="#">Report Technical issue</a></li>
                            <li><a href="#">Complaints and Corrections</a></li>
                            <li><a href="#">Terms and Conditions</a></li>
                            <li><a href="#">Privacy Policy</a></li>
                            <li><a href="#">Cookie Policy</a></li>
                            <li><a href="#">Securedrop</a></li>
                            <li><a href="#">Archives</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="footer_widget_title">
                    <h3><a href="#" target="_self">Editor Picks</a></h3>
                </div>
                <div class="media">
                    <div class="media-left">
                        <a href="#"><img class="media-object" src="assets/img/editor_pic1.jpg"
                                         alt="Generic placeholder image"></a>
                    </div>
                    <div class="media-body">
                        <h3 class="media-heading">
                            <a href="single.html">Apple launches photo-centric wrist watch for Android</a>
                        </h3> 
                        <span class="rating">
                            <i class="fa fa-star"></i> 
                            <i class="fa fa-star"></i> 
                            <i class="fa fa-star"></i> 
                            <i class="fa fa-star"></i> 
                            <i class="fa fa-star-half-full"></i> 
                        </span>
                    </div>
                </div>
                <div class="media">
                    <div class="media-left">
                        <a href="#"><img class="media-object" src="assets/img/editor_pic2.jpg"
                                         alt="Generic placeholder image"></a>
                    </div>
                    <div class="media-body">
                        <h3 class="media-heading">
                            <a href="single.html">Apple launches photo-centric wrist watch for Android</a>
                        </h3> 
                        <span class="rating">
                            <i class="fa fa-star"></i> 
                            <i class="fa fa-star"></i> 
                            <i class="fa fa-star"></i> 
                            <i class="fa fa-star"></i> 
                            <i class="fa fa-star-half-full"></i> 
                        </span>
                    </div>
                </div>
                <div class="media">
                    <div class="media-left">
                        <a href="#"><img class="media-object" src="assets/img/editor_pic3.jpg"
                                         alt="Generic placeholder image"></a>
                    </div>
                    <div class="media-body">
                        <h3 class="media-heading">
                            <a href="single.html">Apple launches photo-centric wrist watch for Android</a>
                        </h3> 
                        <span class="rating">
                            <i class="fa fa-star"></i> 
                            <i class="fa fa-star"></i> 
                            <i class="fa fa-star"></i> 
                            <i class="fa fa-star"></i> 
                            <i class="fa fa-star-half-full"></i> 
                        </span>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="footer_widget_title">
                    <h3><a href="category.html" target="_self">Tech Photos</a></h3>
                </div>
                <div class="widget_photos">
                    <img class="img-thumbnail" src="assets/img/tech_photo1.jpg" alt="Tech Photos">
                    <img class="img-thumbnail" src="assets/img/tech_photo2.jpg" alt="Tech Photos">
                    <img class="img-thumbnail" src="assets/img/tech_photo3.jpg" alt="Tech Photos">
                    <img class="img-thumbnail" src="assets/img/tech_photo4.jpg" alt="Tech Photos">
                    <img class="img-thumbnail" src="assets/img/tech_photo5.jpg" alt="Tech Photos">
                    <img class="img-thumbnail" src="assets/img/tech_photo6.jpg" alt="Tech Photos">
                    <img class="img-thumbnail" src="assets/img/tech_photo7.jpg" alt="Tech Photos">
                    <img class="img-thumbnail" src="assets/img/tech_photo8.jpg" alt="Tech Photos">
                    <img class="img-thumbnail" src="assets/img/tech_photo9.jpg" alt="Tech Photos">
                    <img class="img-thumbnail" src="assets/img/tech_photo10.jpg" alt="Tech Photos">
                    <img class="img-thumbnail" src="assets/img/tech_photo11.jpg" alt="Tech Photos">
                    <img class="img-thumbnail" src="assets/img/tech_photo12.jpg" alt="Tech Photos">
                </div>

            </div>
        </div>
    </div>

    <div class="footer_bottom_Section">
        <div class="container">
            <div class="row">
                <div class="footer">
                    <div class="col-sm-3">
                        <div class="social">
                            <a class="icons-sm fb-ic"><i class="fa fa-facebook"></i></a>
                            <!--Twitter-->
                            <a class="icons-sm tw-ic"><i class="fa fa-twitter"></i></a>
                            <!--Google +-->
                            <a class="icons-sm inst-ic"><i class="fa fa-instagram"> </i></a>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <p>&copy; Copyright 2016-Tech News . Design by: <a href="https://uicookies.com">uiCookies</a> </p>
                    </div>
                    <div class="col-sm-3">
                        <p>Technology News Magazine</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</div>
<!-- #content-wrapper -->

</div>
<!-- .offcanvas-pusher -->

<a href="#" class="crunchify-top"><i class="fa fa-angle-up" aria-hidden="true"></i></a>



</div>
<!-- #main-wrapper -->

<!-- jquery Core-->
<script src="assets/js/jquery-2.1.4.min.js"></script>

<!-- Bootstrap -->
<script src="assets/js/bootstrap.min.js"></script>

<!-- Theme Menu -->
<script src="assets/js/mobile-menu.js"></script>

<!-- Owl carousel -->
<script src="assets/js/owl.carousel.min.js"></script>

<!-- Theme Script -->
<script src="assets/js/script.js"></script>
</body>
</html>