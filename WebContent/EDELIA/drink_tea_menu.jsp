<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>EDELIA CAFE</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
	<meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
	<meta name="author" content="FREEHTML5.CO" />


  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">

	<link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,700,300' rel='stylesheet' type='text/css'>
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">
	<!-- Superfish -->
	<link rel="stylesheet" href="css/superfish.css">

	<link rel="stylesheet" href="css/style.css">


	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->
	<script type="text/javascript">
	function popup_win1() { 
		window.open('/SP/EDELIA/login/pur_page.jsp', '', 'location=no, height=530, width=400, left='+ popupX + ', top='+ popupY + ', screenX='+ popupX + ', screenY= '+ popupY);
	}
	
	var popupX = (window.screen.width / 2) - (400 / 2);
	// 만들 팝업창 좌우 크기의 1/2 만큼 보정값으로 빼주었음

	var popupY= (window.screen.height /2) - (300 / 2);
	// 만들 팝업창 상하 크기의 1/2 만큼 보정값으로 빼주었음
	
	function login() { 
		window.open('/SP/EDELIA/login/login.jsp', '', 'resizable=no, scrollbars=no, height=770, width=380, left='+ popupX + ', top='+ popupY + ', screenX='+ popupX + ', screenY= '+ popupY);
	}
	
	var popupX = (window.screen.width / 2) - (380 / 2);
	// 만들 팝업창 좌우 크기의 1/2 만큼 보정값으로 빼주었음

	var popupY= (window.screen.height /2) - (770 / 2);
	// 만들 팝업창 상하 크기의 1/2 만큼 보정값으로 빼주었음
	
		
	</script>
	</head>
<%
	String id = (String)session.getAttribute("_id");
	String username = (String)session.getAttribute("_username");
	String phonenumber = (String)session.getAttribute("_phonenumber");
	String email = (String)session.getAttribute("_email");
	String authority = (String)session.getAttribute("_authority");
	String code = (String)session.getAttribute("_code");
%>
	<body>
		<div id="fh5co-wrapper">
		<div id="fh5co-page">
		<div id="fh5co-header">
			<header id="fh5co-header-section">
				<div class="container">
					<div class="nav-header">
						<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle"><i></i></a>
						<h1 id="fh5co-logo"><a href="index.jsp"><span>EDELIA</span></a></h1>
						<!-- START #fh5co-menu-wrap -->
						<nav id="fh5co-menu-wrap" role="navigation">
							<ul class="sf-menu" id="fh5co-primary-menu">
								<li>
									<a href="index.jsp">Home</a>
								</li>
								<li><a href="portfolio.jsp" class="fh5co-sub-ddown">Cafe Image</a></li>
								<li><a href="services.jsp" class="fh5co-sub-ddown">Coffee Story</a></li>
								<li class="active">
									<a href="menu.jsp" class="fh5co-sub-ddown">MENU</a>
									 <ul class="fh5co-sub-menu">
									 	<li><a href="coffee_menu.jsp">Coffee</a></li>
									 	<li class="active"><a href="drink_tea_menu.jsp">Drink&Tea</a></li>
									 	<li><a href="dessert_menu.jsp">Dessert</a></li>
									</ul>
								</li>
								<%if(authority==null) authority = ""; %>
								<%if(authority.equals("1")){ %>
								<li><a href="per_page.jsp">Order List</a></li>
								<li><a href="contact.jsp">Contact</a></li>
								<%}else if(authority.equals("2") && code.equals("123")){ %>
								<li><a href="per_page_admin.jsp">Order List</a></li>
								<li><a href="con_page.jsp">Inquiries</a></li>
								<%} %>
								<%if(id==null){%>
								<li><a href="index.jsp" onclick="login()">LOG IN</a></li>
								<%}else if(id!=null){%>
								<li><a href="#"><%=id+"님"%></a></li>
								<li><a href="http://192.168.43.183:8080/SP/EDELIA/logout.jsp">LOG OUT</a></li>
								<%}%>
							</ul>
						</nav>
					</div>
				</div>
			</header>
			
		</div>
		

		<div class="fh5co-hero fh5co-hero-2">
			<div class="fh5co-overlay"></div>
			<div class="fh5co-cover fh5co-cover_2 text-center" data-stellar-background-ratio="0.5" style="background-image: url(images/work-3.jpg);">
				<div class="desc animate-box">
					<h2>Our menu</h2>
				</div>
			</div>

		</div>
		<!-- end:header-top -->
		<div id="fh5co-blog-section" class="fh5co-section-gray">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2 text-center heading-section animate-box">
						<h3>drink & tea menu</h3>
						<p>Tea is a beverage from tea leaves. <br />Generally, a plant is called a tea drink.</p>
					</div>
				</div>
			</div>
			<div class="container">
				<div class="row">
					<div class="col-lg-4 col-md-4">
						<div class="fh5co-blog animate-box">
							<a href="#"><img class="img-responsive" src="images/복숭아아이스티.jpg" alt=""></a>
							<div class="image-popup" href="#">
								<div class="prod-title">
									<h3><a href=""#>복숭아 아이스티</a><span class="comment"><a href="">1,500￦<i class="icon-bubble22"></i></a></span></h3>
									<p>1회 제공량(kcal) : 35<br/>나트륨(mg) : 9<br/>포화지방(g) : 0.1<br/>당류(g) : 8<br/>단백질(g) : 0<br/>카페인(mg) : 3</p>
									<a href="#" class="btn btn-primary">PURCHASE</a>
								</div>
							</div> 
						</div>
					</div>
					<div class="col-lg-4 col-md-4">
						<div class="fh5co-blog animate-box">
							<a href="#"><img class="img-responsive" src="images/아이스라임.jpg" alt=""></a>
							<div class="image-popup" href="#">
								<div class="prod-title">
									<h3><a href=""#>아이스라임</a><span class="comment"><a href="">2,000￦<i class="icon-bubble22"></i></a></span></h3>
									<p>1회 제공량(kcal) : 90<br/>나트륨(mg) : 9.47<br/>포화지방(g) : 0<br/>당류(g) : 20<br/>단백질(g) : 0<br/>카페인(mg) : 54</p>
									<a href="#" class="btn btn-primary">PURCHASE</a>
								</div>
							</div> 
						</div>
					</div>
					<div class="col-lg-4 col-md-4">
						<div class="fh5co-blog animate-box">
							<a href="#"><img class="img-responsive" src="images/아이스그린티라떼.jpg" alt=""></a>
							<div class="image-popup" href="#">
								<div class="prod-title">
									<h3><a href=""#>아이스 그린티</a><span class="comment"><a href="">2,000￦<i class="icon-bubble22"></i></a></span></h3>
									<p>1회 제공량(kcal) : 200<br/>나트륨(mg) : 120<br/>포화지방(g) : 4<br/>당류(g) : 24<br/>단백질(g) : 7<br/>카페인(mg) : 95</p>
									<a href="#" class="btn btn-primary">PURCHASE</a>
								</div>
							</div> 
						</div>
					</div>
					<div class="col-lg-4 col-md-4">
						<div class="fh5co-blog animate-box">
							<a href="#"><img class="img-responsive" src="images/아이스자몽티.jpg" alt=""></a>
							<div class="image-popup" href="#">
								<div class="prod-title">
									<h3><a href=""#>아이스 자몽티</a><span class="comment"><a href="">1,500￦<i class="icon-bubble22"></i></a></span></h3>
									<p>1회 제공량(kcal) : 125<br/>나트륨(mg) : 4.26<br/>포화지방(g) : 0<br/>당류(g) : 30<br/>단백질(g) : 1<br/>카페인(mg) : 35</p>
									<a href="#" class="btn btn-primary">PURCHASE</a>
								</div>
							</div> 
						</div>
					</div>
					<div class="col-lg-4 col-md-4">
						<div class="fh5co-blog animate-box">
							<a href="#"><img class="img-responsive" src="images/망고블랜디드.jpg" alt=""></a>
							<div class="image-popup" href="#">
								<div class="prod-title">
									<h3><a href=""#>망고 블랜디드</a><span class="comment"><a href="">2,500￦<i class="icon-bubble22"></i></a></span></h3>
									<p>1회 제공량(kcal) : 270<br/>나트륨(mg) : 110<br/>포화지방(g) : 1<br/>당류(g) : 48<br/>단백질(g) : 4<br/>카페인(mg) : 0</p>
									<a href="#" class="btn btn-primary">PURCHASE</a>
								</div>
							</div> 
						</div>
					</div>
					<div class="col-lg-4 col-md-4">
						<div class="fh5co-blog animate-box">
							<a href="#"><img class="img-responsive" src="images/딸기 요거트.jpg" alt=""></a>
							<div class="image-popup" href="#">
								<div class="prod-title">
									<h3><a href=""#>딸기 요거트</a><span class="comment"><a href="">2,000￦<i class="icon-bubble22"></i></a></span></h3>
									<p>1회 제공량(kcal) : 250<br/>나트륨(mg) : 128.4<br/>포화지방(g) : 0.9<br/>당류(g) : 48<br/>단백질(g) : 8<br/>카페인(mg) : 0</p>
									<a href="#" class="btn btn-primary">PURCHASE</a>
								</div>
							</div> 
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- fh5co-blog-section -->
		
		<footer>
			<div id="footer">
				<div class="container">
					<div class="row">
						<div class="col-md-6 col-md-offset-3 text-center">
							<p class="fh5co-social-icons">
								<a href="#"><i class="icon-twitter2"></i></a>
								<a href="#"><i class="icon-facebook2"></i></a>
								<a href="#"><i class="icon-instagram"></i></a>
								<a href="#"><i class="icon-dribbble2"></i></a>
								<a href="#"><i class="icon-youtube"></i></a>
							</p>
							<p>Copyright 2017  <a href="#">EDELIA</a>. <br>Made with by TEAM 9 / Member: 이성연, 이재승, 구수정</p>
						</div>
					</div>
				</div>
			</div>
		</footer>
	

	</div>
	<!-- END fh5co-page -->

	</div>
	<!-- END fh5co-wrapper -->

	<!-- jQuery -->


	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Stellar -->
	<script src="js/jquery.stellar.min.js"></script>
	<!-- Superfish -->
	<script src="js/hoverIntent.js"></script>
	<script src="js/superfish.js"></script>

	<!-- Main JS (Do not remove) -->
	<script src="js/main.js"></script>

	</body>
</html>
