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
								<li class="active">
									<a href="../MainPage/index.jsp">Home</a>
								</li>
								<li><a href="portfolio.jsp" class="fh5co-sub-ddown">Cafe Image</a></li>
								<li><a href="services.jsp" class="fh5co-sub-ddown">Coffee Story</a></li>
								<li>
									<a href="menu.jsp" class="fh5co-sub-ddown">MENU</a>
									 <ul class="fh5co-sub-menu">
									 	<li><a href="coffee_menu.jsp">Coffee</a></li>
									 	<li><a href="drink_tea_menu.jsp">Drink&Tea</a></li>
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
		

		<div class="fh5co-hero">
			<div class="fh5co-overlay"></div>
			<div class="fh5co-cover text-center" data-stellar-background-ratio="0.5" style="background-image: url(images/home-image.jsp);">
				<div class="desc animate-box">
					<h2><span>Enjoy THE</span> EDELIA CAFE</h2>
					<p><p>
					<!-- <span>For the ENJOY of EDELIA CAFE</span> -->
					<!-- <span><a class="btn btn-primary" href="#banner">Welcome</a></span> -->
				</div>
			</div>

		</div>
		<!-- end:header-top -->
		<div id="fh5co-work-section">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2 text-center heading-section animate-box">
						<h3>Our CAFE image</h3>
						<p>이델리아와 함께하는 또 다른 재미로 당신을 초대합니다.</p>
					</div>
				</div>
			</div>
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-sm-8">
						<div class="fh5co-grid animate-box" style="background-image: url(images/edelia_1.jpg);">
							<a class="image-popup text-center" href="#">
								<div class="prod-title">
									<h3>EDELIA TERRACE</h3>
									<span>2017. 12. 17.</span>
								</div>
							</a>
						</div>
					</div>
					<div class="col-md-4 col-sm-4">
						<div class="fh5co-grid animate-box" style="background-image: url(images/edelia_3.jpg);">
							<a class="image-popup text-center" href="#">
								<div class="prod-title">
									<h3>EDELIA INSIDE</h3>
									<span>2017. 12. 17.</span>
								</div>
							</a>
						</div>
					</div>
					<div class="col-md-4 col-sm-4">
						<div class="fh5co-grid animate-box" style="background-image: url(images/edelia_4.jpg);">
							<a class="image-popup text-center" href="#">
								<div class="prod-title">
									<h3>EDELIA ENTRANCE</h3>
									<span>2017. 12. 17.</span>
								</div>
							</a>
						</div>
					</div>
					<div class="col-md-8 col-sm-8">
						<div class="fh5co-grid animate-box" style="background-image: url(images/edelia_2.jpg);">
							<a class="image-popup text-center" href="#">
								<div class="prod-title">
									<h3>EDELIA COUNTER</h3>
									<span>2017. 12. 17.</span>
								</div>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- fh5co-work-section -->
		<div id="fh5co-services-section" class="fh5co-section-gray">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2 text-center heading-section animate-box">
						<h3>OUR SERVICE</h3>
						<p>아래와 같은 서비스를 제공해 드립니다.</p>
					</div>
				</div>
			</div>
			<div class="container">
				<div class="row text-center">
					<div class="col-md-4 col-sm-4">
						<div class="services animate-box">
							<span><i class="icon-browser"></i></span>
							<h3>Web Service</h3>
							<p>1. 메뉴확인 가능 <br /> 2. 간편결제로 인한 주문 가능<br/> 3. Take-out 시간조정 가능</p>
						</div>
					</div>
					<div class="col-md-4 col-sm-4">
						<div class="services animate-box">
							<span><i class="icon-mobile"></i></span>
							<h3>Mobile Web Service</h3>
							<p>1. 메뉴확인 가능 <br /> 2. 간편결제로 인한 주문 가능<br/> 3. Take-out 시간조정 가능</p>
						</div>
					</div>
					<div class="col-md-4 col-sm-4">
						<div class="services animate-box">
							<span><i class="icon-tools"></i></span>
							<h3>Contact Service</h3>
							<p>1. 간편하게 문의사항 작성 가능<br /> 2. 실시간 확인 및 신속한 답변<br/><br/></p>
						</div>
					</div>
<!-- 					<div class="col-md-4 col-sm-4">
						<div class="services animate-box">
							<span><i class="icon-video"></i></span>
							<h3>Video Editing</h3>
							<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
						</div>
					</div>
					<div class="col-md-4 col-sm-4">
						<div class="services animate-box">
							<span><i class="icon-search"></i></span>
							<h3>SEO Ranking</h3>
							<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
						</div>
					</div>
					<div class="col-md-4 col-sm-4">
						<div class="services animate-box">
							<span><i class="icon-cloud"></i></span>
							<h3>Cloud Based Apps</h3>
							<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
						</div>
					</div> -->
				</div>
			</div>
		</div>
		<!-- fh5co-services-section -->
		<!-- <div id="fh5co-content-section"> <!-- what other say  -->
<!-- 			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2 text-center heading-section animate-box">
						<h3>What Others Say</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit est facilis maiores, perspiciatis accusamus asperiores sint consequuntur debitis.</p>
					</div>
				</div>
			</div>
			<div class="container">
				<div class="row">
					<div class="col-md-10 col-md-offset-1">
						<div class="fh5co-testimonial text-center animate-box">
							<figure>
								<img src="images/user-1.jpg" alt="user">
							</figure>
							<blockquote>
								<p>“Creativity is just connecting things. When you ask creative people how they did something, they feel a little guilty because they didn’t really do it, they just saw something. It seemed obvious to them after a while.”</p>
							</blockquote>
							<span>Steve Jobs, Apple Inc.</span>
						</div>
					</div>
				</div>
			</div>
		</div> -->
		<!-- fh5co-content-section -->
		<div id=div id="fh5co-content-section">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2 text-center heading-section animate-box"><p><p><p>
						<h3>OUR CAFE MENU</h3>
						<p>이델리아는 언제나 신선한 커피, 맛있는 디저트, <br/>자유로운 감성이 함께하는 최고의 공간을 추구합니다</p>
					</div>
				</div>
			</div>
			<div class="container">
				<div class="row">
					<div class="col-lg-4 col-md-4">
						<div class="fh5co-blog animate-box">
							<a href="coffee_menu.jsp"><img class="img-responsive" src="images/coffee1.jpg" alt=""></a>
							<div class="image-popup" href="coffee_menu.jsp">
								<div class="prod-title">
									<h3><a href="coffee_menu.jsp">coffee</a></h3>
									<!-- <span class="posted_by">Posted by: Admin</span>
									<span class="comment"><a href="">21<i class="icon-bubble22"></i></a></span> -->
									<p>Coffee is a bitter beverage that roasts a coffee tree and drinks it with warm water, cold water or steam.</p>
									<a href="coffee_menu.jsp" class="btn btn-primary">READ MORE</a>
								</div>
							</div> 
						</div>
					</div>
					<div class="col-lg-4 col-md-4">
						<div class="fh5co-blog animate-box">
							<a href="drink_tea_menu.jsp"><img class="img-responsive" src="images/drink.jpg" alt=""></a>
							<div class="image-popup" href="drink_tea_menu.jsp">
								<div class="prod-title">
									<h3><a href="drink_tea_menu.jsp">Drinks & Tea</a></h3>
									<!-- <span class="posted_by">Posted by: Admin</span>
									<span class="comment"><a href="">21<i class="icon-bubble22"></i></a></span> -->
									<p>Tea is a beverage from tea leaves. <br />Generally, a plant is called a tea drink.<br /><br /></p>
									<a href="drink_tea_menu.jsp" class="btn btn-primary">Read More</a>
								</div>
							</div> 
						</div>
					</div>
					<div class="col-lg-4 col-md-4">
						<div class="fh5co-blog animate-box">
							<a href="dessert_menu.jsp"><img class="img-responsive" src="images/desert.jpg" alt=""></a>
							<div class="image-popup" href="dessert_menu.jsp">
								<div class="prod-title">
									<h3><a href="dessert_menu.jsp">dessert</a></h3>
									<!-- <span class="posted_by">Posted by: Admin</span>
									<span class="comment"><a href="">21<i class="icon-bubble22"></i></a></span> -->
									<p>Dessert or dessert is eaten with food after eating, and there are many kinds.<br /><br /></p>
									<a href="dessert_menu.jsp" class="btn btn-primary">Read More</a>
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