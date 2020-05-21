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
	<title>KOBONGMIN KIMBAP</title>
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
						<h3>SNACK</h3>
						<p>쫄깃쫄깃한 식감이 매력적인 분식</p>
					</div>
				</div>
			</div>
			<div class="container">
				<div class="row">
					<div class="col-lg-4 col-md-4">
						<div class="fh5co-blog animate-box">
							<a href="#"><img class="img-responsive" src="images/snack01.jpg" alt=""></a>
							<div class="image-popup" href="#">
								<div class="prod-title">
									<h3><a href=""#>우동</a><span class="comment"><a href="">1,500￦<i class="icon-bubble22"></i></a></span></h3>
									<p>깊은 맛의 가쓰오부시 육수에 탱글한 면발과 유부주머니가 잘 어울리는 우동</p>
									<input type="button" value="PURCHASE" class="btn btn-primary" onclick="popup_win1()"">
								</div>
							</div> 
						</div>
					</div>
					<div class="col-lg-4 col-md-4">
						<div class="fh5co-blog animate-box">
							<a href="#"><img class="img-responsive" src="images/snack02.jpg" alt=""></a>
							<div class="image-popup" href="#">
								<div class="prod-title">
									<h3><a href=""#>잔치국수</a><span class="comment"><a href="">1,800￦<i class="icon-bubble22"></i></a></span></h3>
									<p>조개로 맛을 낸 시원한 디포리 육수와 여러가지 고명이 어우러진 정겨운 촌국수</p>
									<a href="#" class="btn btn-primary">PURCHASE</a>
								</div>
							</div> 
						</div>
					</div>
					<div class="col-lg-4 col-md-4">
						<div class="fh5co-blog animate-box">
							<a href="#"><img class="img-responsive" src="images/snack03.jpg" alt=""></a>
							<div class="image-popup" href="#">
								<div class="prod-title">
									<h3><a href=""#>쫄면</a><span class="comment"><a href="">2,000￦<i class="icon-bubble22"></i></a></span></h3>
									<p>매콤한 소스에 쫄깃한 면발과 아삭한 야채가 어우러진 쫄면</p>
									<a href="#" class="btn btn-primary">PURCHASE</a>
								</div>
							</div> 
						</div>
					</div>
					<div class="col-lg-4 col-md-4">
						<div class="fh5co-blog animate-box">
							<a href="#"><img class="img-responsive" src="images/snack04.jpg" alt=""></a>
							<div class="image-popup" href="#">
								<div class="prod-title">
									<h3><a href=""#>비빔국수</a><span class="comment"><a href="">2,300￦<i class="icon-bubble22"></i></a></span></h3>
									<P>매콤한 소스에 탱탱한 국수면과 아삭한 야채가 어우러진 비빔국수</P>
									<a href="#" class="btn btn-primary">PURCHASE</a>
								</div>
							</div> 
						</div>
					</div>
					<div class="col-lg-4 col-md-4">
						<div class="fh5co-blog animate-box">
							<a href="#"><img class="img-responsive" src="images/snack05.jpg" alt=""></a>
							<div class="image-popup" href="#">
								<div class="prod-title">
									<h3><a href=""#>손수제비</a><span class="comment"><a href="">2,000￦<i class="icon-bubble22"></i></a></span></h3>
									<p>시원한 해물 국물에 손수 반죽한 수제비가 더해 쫀득한 식감이 일품인 손수제비</p>
									<a href="#" class="btn btn-primary">PURCHASE</a>
								</div>
							</div> 
						</div>
					</div>
					<div class="col-lg-4 col-md-4">
						<div class="fh5co-blog animate-box">
							<a href="#"><img class="img-responsive" src="images/snack06.jpg" alt=""></a>
							<div class="image-popup" href="#">
								<div class="prod-title">
									<h3><a href=""#>만둣국</a><span class="comment"><a href="">2,700￦<i class="icon-bubble22"></i></a></span></h3>
									<p>맛도 속도 꽉찬 든든한 만두와 시원한 국물이 어우러진 만둣국</p>
									<a href="#" class="btn btn-primary">PURCHASE</a>
								</div>
							</div> 
						</div>
					</div><!--  -->
					<div class="col-lg-4 col-md-4">
						<div class="fh5co-blog animate-box">
							<a href="#"><img class="img-responsive" src="images/snack07.jpg" alt=""></a>
							<div class="image-popup" href="#">
								<div class="prod-title">
									<h3><a href=""#>떡볶이</a><span class="comment"><a href="">3,000￦<i class="icon-bubble22"></i></a></span></h3>
									<p>쫀득한 떡, 어묵, 계란, 야채가 듬뿍 들어간 떡볶이(치즈, 우동, 라면, 만두 추가가능)</p>
									<a href="#" class="btn btn-primary">PURCHASE</a>
								</div>
							</div> 
						</div>
					</div>
					<div class="col-lg-4 col-md-4">
						<div class="fh5co-blog animate-box">
							<a href="#"><img class="img-responsive" src="images/snack08.jpg" alt=""></a>
							<div class="image-popup" href="#">
								<div class="prod-title">
									<h3><a href=""#>라면</a><span class="comment"><a href="">1,200￦<i class="icon-bubble22"></i></a></span></h3>
									<p>만두와 어묵을 넣어 푸짐하고 얼큰한 라면(치즈, 만두, 떡 추가가능)</p>
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
