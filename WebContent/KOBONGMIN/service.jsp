<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
	<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>KOBONGMIN KIMBAP</title>
	<meta charset="utf-8" />
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
		window.open('/SP/KOBONGMIN/login/login.jsp', '', 'resizable=no, scrollbars=no, height=770, width=380, left='+ popupX + ', top='+ popupY + ', screenX='+ popupX + ', screenY= '+ popupY);
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
						<h1 id="fh5co-logo"><a href="service.jsp">KOBONGMIN<span>KIMBAB</span></a></h1>
						<!-- START #fh5co-menu-wrap -->
						<nav id="fh5co-menu-wrap" role="navigation">
							<ul class="sf-menu" id="fh5co-primary-menu">
								<li>
									<a href="/SP/MainPage/index.jsp">Home</a>
								</li>
								<li>
									<a href="menu.jsp" class="fh5co-sub-ddown">Menu</a>
									<ul class="fh5co-sub-menu">
									<li><a href="kimbab_menu.jsp">Kimbab</a></li>
									<li><a href ="food_menu.jsp">Food</a></li>
									<li><a href="snack_menu.jsp">Snack</a></li>
									</ul>
								</li>
								<li class="active">
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
					<h2>Our Services</h2>
				</div>
			</div>
		</div>
		<!-- end:header-top -->
		<div id="fh5co-services">
			<div class="container">
				<div class="row row-bottom-padded-lg">
					<div class="col-md-3">
						<div class="image featured"><img src="images/mom.PNG"></img></div>
					</div>
					<div class="col-md-8 col-md-push-1">
						<h4 class="fh5co-number">01.</h4>
						<h2>"엄마의 마음, 행복한 김밥"</h2>
						<p>어린 시절 소풍에 대한 기억은 어머니께서 정성스레 만든 김밥에서부터 시작됩니다.
						</p>
						<p>간편함을 선호하고 돈으로 김밥을 사는 바쁜 세상이 되었지만, 
						어머니의 손맛이 그리울 고객님들을 위해 고봉민김밥이 시작되었습니다. <br />
어머니에 대한 기억들을 대신할 순 없지만, 맛있고 건강한 음식과 한결 같은 정성으로 고객님들의 마음을 채워드리고자 합니다. <br /> 
또한 좋은 재료, 좋은 레시피를 통해 내 아이와 우리 가족 모두가 믿고 먹을 수 있는 음식을 만들어 드릴 것을 약속 드립니다. </p>
					</div>
				</div>

				<div class="row row-bottom-padded-lg">
					<div class="col-md-3 col-md-push-8">
						<div class="image featured"><img src="images/ingredient.jpg"></img></div>
					</div>
					<div class="col-md-7 col-md-pull-3">
						<h4 class="fh5co-number">02.</h4>
						<h2>"재료이야기"</h2>
						<p>정직한 재료를 통해 믿고 먹을 수 있는 맛있는 김밥을 만들고 싶었습니다.  <br />고봉민김밥은 오늘도 최상의 재료 찾기에 노력을 아끼지 않고 있습니다.<br />항상 바르고 좋은 먹거리들만 제공함을 고객님들께 약속드립니다.
						<ul>
							<li>유기농법으로 재배된 충청지역의 비옥한 땅에서 자란 귀한 햅쌀</li>
							<li>완도의 원초만을 사용하여 정성들여 구운 고급 김</li>
							<li>친환경 양계농장에서 자란 건강한 무항생제 달걀</li>
							<li>저온볶음공정을 통해 100%참깨만을 사용한 향과 맛이 풍부한 참기름</li>
							<li>어묵의 본고장 부산에서 고급 생선살만을 사용하여 만든 특선어묵</li>
						</ul>
					</div>
				</div>

				<div class="row row-bottom-padded-lg">
					<div class="col-md-3">
						<div class="image featured"><img src="images/store.jpg"></img></div>
					</div>
					<div class="col-md-8 col-md-push-1">
						<h4 class="fh5co-number">03.</h4>
						<h2>"편안함을 느낄 수 있는 공간"</h2>
						<p>친환경 컨셉의 외관은 주변과 조화를 잘 이루며, 내관은 고급 원목소재의 테이블과 손수 그려 넣은 벽화로 친근함과 포근함을 느낄 수 있습니다.<br />
간단한 분식 한끼가 아닌 품격 높은 안락한 분위기 속에서 제대로 된 한끼를 고객님께 대접하고자 하는 뜻 깊은 마음이 담긴 공간입니다. </p>
						
					</div>
				</div>


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