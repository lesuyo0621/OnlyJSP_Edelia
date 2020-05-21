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

  <!-- 
	//////////////////////////////////////////////////////

	FREE HTML5 TEMPLATE 
	DESIGNED & DEVELOPED by FREEHTML5.CO
		
	Website: 		http://freehtml5.co/
	Email: 			info@freehtml5.co
	Twitter: 		http://twitter.com/fh5co
	Facebook: 		https://www.facebook.com/fh5co

	//////////////////////////////////////////////////////
	 -->

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
								<li>
									<a href="index.jsp">Home</a>
								</li>
								<li><a href="portfolio.jsp" class="fh5co-sub-ddown">Cafe Image</a></li>
								<li class="active"><a href="services.jsp" class="fh5co-sub-ddown">Coffee Story</a></li>
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
		

		<div class="fh5co-hero fh5co-hero-2">
			<div class="fh5co-overlay"></div>
			<div class="fh5co-cover fh5co-cover_2 text-center" data-stellar-background-ratio="0.5" style="background-image: url(images/blog-1.jpg);">
				<div class="desc animate-box">
					<h2>Our Services</h2>
				</div>
			</div>
		</div>
		<!-- end:header-top -->
		<div id="fh5co-services">
			<div class="container">
				<div class="row row-bottom-padded-lg">
					<div class="row">
					<div class="col-md-4">
						<div class="fh5co-grid animate-box" style="background-image: url(images/service1.jpg);">
						</div>
					</div>
					<div class="col-md-8 col-md-push-1">
						<h4 class="fh5co-number">01.</h4>
						<h2><span>"</span>최상의 원두를 찾아 떠납니다. 더 높은 곳을 향해.<span>"</span></h2>
						<p>최상의 원두는 고도가 높은 곳에서 자랍니다. 추운 기후와 따듯한 기후를 거치며 농도가 짙어지고, 이렇게 단단해진 원두는 더 깊고 복합적인 맛을 냅니다. 이델리아에서는 바로 이런 원두의 맛을 느껴보실 수 있습니다.</p>
					</div>
				</div>

				<div class="row row-bottom-padded-lg">
					<div class="col-md-3 col-md-push-8">
						<div class="fh5co-grid animate-box" style="background-image: url(images/service2.jpg);"></div>
					</div>
					<div class="col-md-7 col-md-pull-3">
						<h4 class="fh5co-number">02.</h4>
						<h2><span>"</span>커피 관련 모든 것,&nbsp그 이상을 위해 노력합니다.<span>"</span></h2>
						<p>커피농가들이 보다 훌륭한 원두를 재배할 수 있도록 이델리아가 그들을 돕습니다. 어느 곳에 있는 어떤 농가이든 모두 해당됩니다. 이를 위해 이델리아는 4개의 대륙에서 농가지원센터를 운영하고 있습니다. 이 곳에서는 이델리아 전문가들이 토양에 대해 연구하고 샘플을 검사하며 도움을 원하는 모든 농가에 무료 자문을 제공합니다.</p>
					</div>
				</div>

				<div class="row row-bottom-padded-lg">
					<div class="col-md-3">
						<div class="fh5co-grid animate-box" style="background-image: url(images/service3.jpg);"></div>
					</div>
					<div class="col-md-8 col-md-push-1">
						<h4 class="fh5co-number">03.</h4>
						<h2><span>"</span>커피 농가와의 진실되고 지속적인 관계<span>"</span></h2>
						<p>커피의 미래는 커피농가들의 미래와 직결되어 있습니다. 따라서 농가들이 원두를 가꾸듯 이델리아 또한 농가들과의 관계를 가꾸어 나갑니다. 커피농가들이 그들의 제품에 대한 공정한 가격을 받고 지역사회 모든 사람들이 커피 산업으로부터 이득을 얻을 수 있도록 노력합니다. 이를 통해 농가들의 생활이 나아지고 우리 모두가 더 훌륭한 커피를 즐길 수 있게 됩니다.</p>
					</div>
				</div>

				<div class="row row-bottom-padded-lg">
					<div class="col-md-3 col-md-push-8">
						<div class="fh5co-grid animate-box" style="background-image: url(images/service4.jpg);"></div>
					</div>
					<div class="col-md-7 col-md-pull-3">
						<h4 class="fh5co-number">04.</h4>
						<h2><span>"</span>까다롭고 엄격하게 수확합니다.<span>"</span></h2>
						<p>이델리아는 커피 열매가 최상의 상태일 때, 즉 붉게 잘 익은 완벽한 상태일 때에만 수확합니다.그리고 크기와 색깔 및 농도를 기준으로 이들을 다시 엄선해냅니다. 결함은 용납하지 않습니다.이를 두고 사람들은 집착이라고 말하지만 이델리아는 훌륭한 커피라고 말합니다.</p>
					</div>
				</div>


				<div class="row row-bottom-padded-lg">
					<div class="col-md-3">
						<div class="fh5co-grid animate-box" style="background-image: url(images/service5.jpg);"></div>
					</div>
					<div class="col-md-8 col-md-push-1">
						<h4 class="fh5co-number">05.</h4>
						<h2><span>"</span>끝없는 공부, 그리고 연구.<span>"</span></h2>
						<p>이델리아는 모두가(여러분을 포함해서) 기대하는 최상의 맛을 식별해내기 위해 하루에 1000잔이 넘는 커피를 맛봅니다. 한 웅큼의 커피는 최소 3번의 검증을 거쳐 통과됩니다. 따라서 여러분이 들이키는 한 모금의 이델리아® 커피 모두가 최상의 맛을 선사합니다.</p>
					</div>
					<p><p><p>
					<p><p><p>
				</div>

<!-- 				<div class="row">
					<div class="col-md-3 col-md-push-8">
						<div class="fh5co-grid animate-box" style="background-image: url(images/service6.jpg);"></div>
					</div>
					<div class="col-md-7 col-md-pull-3">
						<h4 class="fh5co-number">06.</h4>
						<h2>Cloud Based Apps</h2>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Totam quae modi earum eligendi eaque quis laudantium aperiam sunt atque recusandae, fugiat veritatis repellendus incidunt nostrum voluptatibus. Eveniet ex magnam repellat sunt molestiae, quibusdam culpa dignissimos recusandae voluptatum necessitatibus provident commodi?</p>
						<ul>
							<li>Web Design</li>
							<li>Search Engine Optimzation</li>
							<li>HTML5 &amp; CSS3</li>
							<li>jQuery Library</li>
						</ul>
					</div>
				</div> -->
				<p><p><p>


			</div>
		</div>
		<!-- END fh5co-services-section -->
		
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

