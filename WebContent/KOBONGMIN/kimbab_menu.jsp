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
	<title>KOBONGMIN KIMBAB</title>
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
	
	<!--부트스트랩 modal-->
	
	
	<script type="text/javascript">
	function popup_win1() { 
		window.open('purchase.jsp', '', 'height=300, width=400, left='+ popupX + ', top='+ popupY + ', screenX='+ popupX + ', screenY= '+ popupY);
	}
	
	var popupX = (window.screen.width / 2) - (400 / 2);
	// 만들 팝업창 좌우 크기의 1/2 만큼 보정값으로 빼주었음

	var popupY= (window.screen.height /2) - (300 / 2);
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
						<h1 id="fh5co-logo"><a href="service.jsp">KOBONGMIN<span>KIMBAB</span></a></h1>
						<!-- START #fh5co-menu-wrap -->
						<nav id="fh5co-menu-wrap" role="navigation">
							<ul class="sf-menu" id="fh5co-primary-menu">
								<li>
									<a href="/SP/index.jsp">Home</a>
								</li>
								<li class="active">
									<a href="menu.jsp" class="fh5co-sub-ddown">Menu</a>
									<ul class="fh5co-sub-menu">
									<li><a href="kimbab_menu.jsp">Kimbab</a></li>
									<li><a href ="food_menu.jsp">Food</a></li>
									<li><a href="snack_menu.jsp">Snack</a></li>
									</ul>
								</li>
								<li>
									<a href="service.jsp" class="fh5co-sub-ddown">Services</a>
								</li>
								<%if(authority==null) authority = ""; %>
								<%if(authority.equals("1")){ %>
								<li><a href="per_page.jsp">Order List</a></li>
								<li><a href="contact.jsp">Contact</a></li>
								<%}else if(authority.equals("2") && code.equals("124")){ %>
								<li><a href="per_page_admin.jsp">Order List</a></li>
								<li><a href="con_page.jsp">Inquiries</a></li>
								<%} %>
								<%if(id==null){%>
								<li><a href="service.jsp" onclick="login()">LOG IN</a></li>
								<%}else if(id!=null){%>
								<li><a href="#"><%=id+"님"%></a></li>
								<li><a href="http://192.168.43.183:8080/SP/KOBONGMIN/logout.jsp">LOG OUT</a></li>
								<%}%>
							</ul>
						</nav>
					</div>
				</div>
			</header>
			
		</div>
		

		<div class="fh5co-hero fh5co-hero-2">
			<div class="fh5co-overlay"></div>
			<div class="fh5co-cover fh5co-cover_2 text-center" data-stellar-background-ratio="0.5" style="background-image: url(images/kimbap2.jpg);">
				<div class="desc animate-box">
					<h2>OUR MENU</h2>
				</div>
			</div>

		</div>
		<!-- end:header-top -->
		<div id="fh5co-blog-section" class="fh5co-section-gray">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2 text-center heading-section animate-box">
						<h3>KIMBAB</h3>
						<p>깨끗한 재료로 알이 꽉 찬 고봉민김밥</p>
					</div>
				</div>
			</div>
			<div class="container">
				<div class="row">
					<div class="col-lg-4 col-md-4">
						<div class="fh5co-blog animate-box">
							<a href="#"><img class="img-responsive" src="images/kimbap01.jpg" alt=""></a>
							<div class="image-popup" href="#">
								<div class="prod-title">
									<h3><a href=""#>고봉민김밥</a><span class="comment"><a href="">1,500￦<i class="icon-bubble22"></i></a></span></h3>
									<p>쫀득하게 조려진 우엉의 풍미가 일품인 속은 알차고 맛은 깔끔한 기본김밥</p>
									<input type="button" value="PURCHASE" class="btn btn-primary" onclick="popup_win1()">
								</div>
							</div> 
						</div>
					</div>
					<div class="col-lg-4 col-md-4">
						<div class="fh5co-blog animate-box">
							<a href="#"><img class="img-responsive" src="images/kimbap02.jpg" alt=""></a>
							<div class="image-popup" href="#">
								<div class="prod-title">
									<h3><a href=""#>돈까스김밥</a><span class="comment"><a href="">1,800￦<i class="icon-bubble22"></i></a></span></h3>
									<p>고봉민김밥에 바삭 튀겨진 돈까스가 더해져 고소함이 가득한 김밥</p>
									<input type="button" value="PURCHASE" class="btn btn-primary" onclick="popup_win1()">
								</div>
							</div> 
						</div>
					</div>
					<div class="col-lg-4 col-md-4">
						<div class="fh5co-blog animate-box">
							<a href="#"><img class="img-responsive" src="images/kimbap03.jpg" alt=""></a>
							<div class="image-popup" href="#">
								<div class="prod-title">
									<h3><a href=""#>매운김밥</a><span class="comment"><a href="">2,000￦<i class="icon-bubble22"></i></a></span></h3>
									<p>고추장 볶음 소고기와 청량고추가 더해져 중독성 있는 매운맛을 자랑하는 김밥</p>
									<input type="button" value="PURCHASE" class="btn btn-primary" onclick="popup_win1()">
								</div>
							</div> 
						</div>
					</div>
					<div class="col-lg-4 col-md-4">
						<div class="fh5co-blog animate-box">
							<a href="#"><img class="img-responsive" src="images/kimbap04.jpg" alt=""></a>
							<div class="image-popup" href="#">
								<div class="prod-title">
									<h3><a href=""#>참치김밥</a><span class="comment"><a href="">2,300￦<i class="icon-bubble22"></i></a></span></h3>
									<P>고봉민김밥에 참치와 향긋한 깻잎을 넣어 풍미를 더한 김밥</P>
									<input type="button" value="PURCHASE" class="btn btn-primary" onclick="popup_win1()">
								</div>
							</div> 
						</div>
					</div>
					<div class="col-lg-4 col-md-4">
						<div class="fh5co-blog animate-box">
							<a href="#"><img class="img-responsive" src="images/kimbap05.jpg" alt=""></a>
							<div class="image-popup" href="#">
								<div class="prod-title">
									<h3><a href=""#>치즈김밥</a><span class="comment"><a href="">2,000￦<i class="icon-bubble22"></i></a></span></h3>
									<p>고봉민김밥에 체다 슬라이스 치즈를 더해 부드럽고 고소함이 일품인 김밥</p>
									<input type="button" value="PURCHASE" class="btn btn-primary" onclick="popup_win1()">
								</div>
							</div> 
						</div>
					</div>
					<div class="col-lg-4 col-md-4">
						<div class="fh5co-blog animate-box">
							<a href="#"><img class="img-responsive" src="images/kimbap06.jpg" alt=""></a>
							<div class="image-popup" href="#">
								<div class="prod-title">
									<h3><a href=""#>떡갈비김밥</a><span class="comment"><a href="">2,700￦<i class="icon-bubble22"></i></a></span></h3>
									<p>고봉민김밥에 맛있는 떡갈비가 어우러져 특별하고 풍부한 맛의 프리미엄 김밥</p>
									<input type="button" value="PURCHASE" class="btn btn-primary" onclick="popup_win1()">
								</div>
							</div> 
						</div>
					</div><!--  -->
					<div class="col-lg-4 col-md-4">
						<div class="fh5co-blog animate-box">
							<a href="#"><img class="img-responsive" src="images/kimbap07.jpg" alt=""></a>
							<div class="image-popup" href="#">
								<div class="prod-title">
									<h3><a href=""#>새우김밥</a><span class="comment"><a href="">3,000￦<i class="icon-bubble22"></i></a></span></h3>
									<p>고봉민김밥에 고소한 새우튀김과 고봉민김밥人의 특제소스가 어우러져 새로운 맛을 선사하는 고급 김밥</p>
									<input type="button" value="PURCHASE" class="btn btn-primary" onclick="popup_win1()">
								</div>
							</div> 
						</div>
					</div>
					<div class="col-lg-4 col-md-4">
						<div class="fh5co-blog animate-box">
							<a href="#"><img class="img-responsive" src="images/kimbap08.jpg" alt=""></a>
							<div class="image-popup" href="#">
								<div class="prod-title">
									<h3><a href=""#>맵닭김밥</a><span class="comment"><a href="">1,200￦<i class="icon-bubble22"></i></a></span></h3>
									<p>국내산 닭가슴살과 고추장, 청양고추를 넣어 담백하고 깔끔한 매운맛을 낸 불닭 김밥</p>
									<input type="button" value="PURCHASE" class="btn btn-primary" onclick="popup_win1()">
								</div>
							</div> 
						</div>
					</div>
					<div class="col-lg-4 col-md-4">
						<div class="fh5co-blog animate-box">
							<a href="#"><img class="img-responsive" src="images/kimbap09.jpg" alt=""></a>
							<div class="image-popup" href="#">
								<div class="prod-title">
									<h3><a href=""#>알로하치즈김밥</a><span class="comment"><a href="">2,400￦<i class="icon-bubble22"></i></a></span></h3>
									<p>필라델피아 크림치즈에 망고, 파파야, 백아몬드 캐슈넛을 넣어 고소하고 상큼한 맛의 치즈김밥</p>
									<input type="button" value="PURCHASE" class="btn btn-primary" onclick="popup_win1()">
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
							<p>Copyright 2016 Free Html5 <a href="#">Guardian</a>. All Rights Reserved. <br>Made with <i class="icon-heart3"></i> by <a href="http://freehtml5.co/" target="_blank">Freehtml5.co</a> / Demo Images: <a href="https://unsplash.com/" target="_blank">Unsplash</a></p>
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
