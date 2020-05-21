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
									 	<li><a href="drink_tea_menu.jsp">Drink&Tea</a></li>
									 	<li class="active"><a href="dessert_menu.jsp">Dessert</a></li>
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
						<h3>dessert menu</h3>
						<p>Dessert or dessert is eaten with food after eating, and there are many kinds.</p>
					</div>
				</div>
			</div>
			<div class="container">
				<div class="row">
					<div class="col-lg-4 col-md-4">
						<div class="fh5co-blog animate-box">
							<a href="#"><img class="img-responsive" src="images/바게트버터잼.jpg" alt=""></a>
							<div class="image-popup" href="#">
								<div class="prod-title">
									<h3><a href=""#>바게트 버터&잼</a><span class="comment"><a href="">2,000￦<i class="icon-bubble22"></i></a></span></h3>
									<p>1회 제공량(kcal) : 299<br/>나트륨(mg) : 559<br/>포화지방(g) : 7<br/>당류(g) : 17<br/>단백질(g) : 5</p>
									<input type="button" value="PURCHASE" class="btn btn-primary" id="baguette" onclick="popup_win1()"">
								</div>
							</div> 
						</div>
					</div><div class="col-lg-4 col-md-4">
						<div class="fh5co-blog animate-box">
							<a href="#"><img class="img-responsive" src="images/클래식크루아상.jpg" alt=""></a>
							<div class="image-popup" href="#">
								<div class="prod-title">
									<h3><a href=""#>클래식 크루아상</a><span class="comment"><a href="">2,300￦<i class="icon-bubble22"></i></a></span></h3>
									<p>1회 제공량(kcal) : 163<br/>나트륨(mg) : 106<br/>포화지방(g) : 66<br/>당류(g) : 2<br/>단백질(g) : 4</p>
									<input type="button" value="PURCHASE" class="btn btn-primary" id="croissant" onclick="popup_win1()"">
								</div>
							</div> 
						</div>
					</div><div class="col-lg-4 col-md-4">
						<div class="fh5co-blog animate-box">
							<a href="#"><img class="img-responsive" src="images/고소한치즈베이글.jpg" alt=""></a>
							<div class="image-popup" href="#">
								<div class="prod-title">
									<h3><a href=""#>고소한 치즈 베이글</a><span class="comment"><a href="">3,000￦<i class="icon-bubble22"></i></a></span></h3>
									<p>1회 제공량(kcal) : 343<br/>나트륨(mg) : 527<br/>포화지방(g) : 3.7<br/>당류(g) : 8<br/>단백질(g) : 17</p>
									<input type="button" value="PURCHASE" class="btn btn-primary" id="Cbagel" onclick="popup_win1()"">
								</div>
							</div> 
						</div>
					</div><div class="col-lg-4 col-md-4">
						<div class="fh5co-blog animate-box">
							<a href="#"><img class="img-responsive" src="images/어니언베이글.jpg" alt=""></a>
							<div class="image-popup" href="#">
								<div class="prod-title">
									<h3><a href=""#>어니언 베이글</a><span class="comment"><a href="">3,200￦<i class="icon-bubble22"></i></a></span></h3>
									<p>1회 제공량(kcal) : 250<br/>나트륨(mg) : 466<br/>포화지방(g) : 0.6<br/>당류(g) : 12<br/>단백질(g) : 8</p>
									<input type="button" value="PURCHASE" class="btn btn-primary" id="Obagel" onclick="popup_win1()"">
								</div>
							</div> 
						</div>
					</div><div class="col-lg-4 col-md-4">
						<div class="fh5co-blog animate-box">
							<a href="#"><img class="img-responsive" src="images/에그베이컨파니니.jpg" alt=""></a>
							<div class="image-popup" href="#">
								<div class="prod-title">
									<h3><a href=""#>에그 베이컨 파니니</a><span class="comment"><a href="">4,000￦<i class="icon-bubble22"></i></a></span></h3>
									<p>1회 제공량(kcal) : 541<br/>나트륨(mg) : 626<br/>포화지방(g) : 5<br/>당류(g) : 8<br/>단백질(g) : 25</p>
									<input type="button" value="PURCHASE" class="btn btn-primary" id="panini" onclick="popup_win1()"">
								</div>
							</div> 
						</div>
					</div><div class="col-lg-4 col-md-4">
						<div class="fh5co-blog animate-box">
							<a href="#"><img class="img-responsive" src="images/티라미수.jpg" alt=""></a>
							<div class="image-popup" href="#">
								<div class="prod-title">
									<h3><a href=""#>티라미수</a><span class="comment"><a href="">4,000￦<i class="icon-bubble22"></i></a></span></h3>
									<p>1회 제공량(kcal) : 344<br/>나트륨(mg) : 166<br/>포화지방(g) : 15<br/>당류(g) : 7<br/>단백질(g) : 6</p>
									<input type="button" value="PURCHASE" class="btn btn-primary" id="tiramisu" onclick="popup_win1()"">
								</div>
							</div> 
						</div>
					</div><div class="col-lg-4 col-md-4">
						<div class="fh5co-blog animate-box">
							<a href="#"><img class="img-responsive" src="images/초콜릿케이크.jpg" alt=""></a>
							<div class="image-popup" href="#">
								<div class="prod-title">
									<h3><a href=""#>초콜릿 케이크</a><span class="comment"><a href="">3,800￦<i class="icon-bubble22"></i></a></span></h3>
									<p>1회 제공량(kcal) : 617<br/>나트륨(mg) : 155<br/>포화지방(g) : 19<br/>당류(g) : 42<br/>단백질(g) : 8</p>
									<input type="button" value="PURCHASE" class="btn btn-primary" id="chocolatecake" onclick="popup_win1()"">
								</div>
							</div> 
						</div>
					</div><div class="col-lg-4 col-md-4">
						<div class="fh5co-blog animate-box">
							<a href="#"><img class="img-responsive" src="images/BELT샌드위치.jpg" alt=""></a>
							<div class="image-popup" href="#">
								<div class="prod-title">
									<h3><a href=""#>B.E.L.T.샌드위치</a><span class="comment"><a href="">2,500￦<i class="icon-bubble22"></i></a></span></h3>
									<p>1회 제공량(kcal) : 505<br/>나트륨(mg) : 989<br/>포화지방(g) : 8<br/>당류(g) : 6<br/>단백질(g) : 19</p>
									<input type="button" value="PURCHASE" class="btn btn-primary" id="belt" onclick="popup_win1()"">
								</div>
							</div> 
						</div>
					</div><div class="col-lg-4 col-md-4">
						<div class="fh5co-blog animate-box">
							<a href="#"><img class="img-responsive" src="images/모짜렐라베이컨샌드위치.jpg" alt=""></a>
							<div class="image-popup" href="#">
								<div class="prod-title">
									<h3><a href=""#>베이컨 샌드위치</a><span class="comment"><a href="">3,000￦<i class="icon-bubble22"></i></a></span></h3>
									<p>1회 제공량(kcal) : 419<br/>나트륨(mg) : 559<br/>포화지방(g) : 3.7<br/>당류(g) : 5<br/>단백질(g) : 21</p>
									<input type="button" value="PURCHASE" class="btn btn-primary" id="mozzarella" onclick="popup_win1()"">
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
