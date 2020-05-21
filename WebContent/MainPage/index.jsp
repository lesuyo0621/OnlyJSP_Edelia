<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>FOOD SURFING</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="assets/css/main.css" />
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
	</head>
<%
	String id = (String)session.getAttribute("_id");
	String username = (String)session.getAttribute("_username");
	String phonenumber = (String)session.getAttribute("_phonenumber");
	String email = (String)session.getAttribute("_email");
	String authority = (String)session.getAttribute("_authority");
	String code = (String)session.getAttribute("_code");
%>
	<body class="homepage">
		<div id="page-wrapper">

			<!-- Header -->
				<div id="header">

					<!-- Inner -->
						<div class="inner">
							<header>
								<h1><a href="index.jsp" id="logo">FOOD<br /> SURFING</a></h1>
								<hr />
								<p>Service portal for companies and customers<p>
							</header>
							<footer>
								<a href="#banner" class="button circled scrolly">MORE</a>
							</footer>
						</div>

					<!-- Nav -->
						<nav id="nav">
							<ul>
								<li><a href="index.jsp">HOME</a></li>
								<li>
									<a href="#">MENU</a>
									<ul>
										<li>
											<a href="#">Using companies</a>
											<ul>
												<li><a href="#">EDELIA</a></li>
												<li><a href="#">PizzaMaule</a></li>
												<li><a href="#">고봉민김밥</a></li>
												<li><a href="#">본죽</a></li>
												<li><a href="#">치킨매니아</a></li>
											</ul>
										</li>
									</ul>
								</li>
								<li><a href="#">CONTACT US</a></li>
								<%if(id==null){%>
								<li><a href="/SP/login/login.jsp">LOG IN</a></li>
								<%}else if(id!=null){%>
								<li><a href="#"><%=id+"님"%></a></li>
								<li><a href="http://192.168.43.183:8080/SP/MainPage/logout.jsp">LOG OUT</a></li>
								<%}%>
							</ul>
						</nav>

				</div>

			<!-- Banner -->
				<section id="banner">
					<header>
						<h2>더 나은 서비스를 위해, 사용자에게 약속합니다.</h2>
						<p>
							In order to better service, Promise to user
						</p>
					</header>
				</section>

			<!-- Carousel -->
				<section class="carousel">
					<div class="reel">

						<article>
							<a href="../EDELIA/index.jsp" class="image featured"><img src="images/EDELIA.png" alt="" /></a>
							<header>
								<h3><a href="../EDELIA/index.jsp">EDELIA CAFFE</a></h3>
							</header>
						</article>

						<article>
							<a href="../PIZZAMAULE/main.jsp" class="image featured"><img src="images/PIZZA.png" alt="" /></a>
							<header>
								<h3><a href="../PIZZAMAULE/main.jsp">PizzaMaule</a></h3>
							</header>
						</article>

						<article>
							<a href="../KOBONGMIN/service.jsp" class="image featured"><img src="images/KIMBAB.jpg" alt="" /></a>
							<header>
								<h3><a href="../KOBONGMIN/service.jsp">고봉민김밥</a></h3> 
							</header>
						</article>
						<article>
							<a href="#" class="image featured"><img src="images/본죽.jpg" alt="" /></a>
							<header>
								<h3><a href="#">본죽</a></h3>
							</header>
						</article>

						<article>
							<a href="#" class="image featured"><img src="images/치킨매니아.png" alt="" /></a>
							<header>
								<h3><a href="#">치킨매니아</a></h3>
							</header>
						</article>
					</div>
				</section>


			<!-- Features -->
				<div class="wrapper style1">

					<section id="features" class="container special">
						<header>
							<h2>OUR SERVICE</h2>
							<p>아래와 같은 서비스를 제공해 드립니다.</p>
						</header>
						<div class="row">
							<article class="4u 12u(mobile) special">
								<a href="#" class="image featured"><img src="images/system.png" alt="" /></a>
								<header>
									<h3><a href="#">간편한 시스템</a></h3>
								</header>
								<p><center>
									인터넷상에서 쉽고 간단하게<br /> 결제를 할 수 있는 시스템.
								</center></p>
							</article>
							<article class="4u 12u(mobile) special">
								<a href="#" class="image featured"><img src="images/time.png" alt="" /></a>
								<header>
									<h3><a href="#">시간 절약</a></h3>
								</header>
								<p><center>
									Take-out 시 기다리는 시간을 <br />인터넷 상에서의 간편 결제로 인해 절약.
								</center></p>
							</article>
							<article class="4u 12u(mobile) special">
								<a href="#" class="image featured"><img src="images/보안.png" alt="" /></a>
								<header>
									<h3><a href="#">안전한 서비스 제공</a></h3>
								</header>
								<p><center>
									사용자들의 개인정보를 보호하기 위하여<br /> 안전한 보안 시스템 적용.
								</center></p>
							</article>
						</div>
					</section>

				</div>

			<!-- Footer -->
				<div id="footer">
					<div class="container">
						<div class="row">

							<div class="12u">

								<!-- Contact -->
									<section class="contact">
										<header>
										</header>
										<p>Copyright 2017  <a href="#">FoodSurfing</a>. <br>Made with by TEAM 9 / Member: 이성연, 이재승, 구수정</p>
										<ul class="icons">
											<li><a href="https://twitter.com/?lang=ko" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
											<li><a href="https://www.facebook.com/" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
											<li><a href="https://www.instagram.com/?hl=ko" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
										</ul>
									</section>

								<!-- Copyright -->
									<div class="copyright">
										<ul class="menu">
											<li>&copy; FoodSurfing.</li><li>Design: Team 9</li>
										</ul>
									</div>

							</div>

						</div>
					</div>
				</div>

		</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.dropotron.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.onvisible.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>

	</body>
</html>