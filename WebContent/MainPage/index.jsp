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
												<li><a href="#">����α��</a></li>
												<li><a href="#">����</a></li>
												<li><a href="#">ġŲ�ŴϾ�</a></li>
											</ul>
										</li>
									</ul>
								</li>
								<li><a href="#">CONTACT US</a></li>
								<%if(id==null){%>
								<li><a href="/SP/login/login.jsp">LOG IN</a></li>
								<%}else if(id!=null){%>
								<li><a href="#"><%=id+"��"%></a></li>
								<li><a href="http://192.168.43.183:8080/SP/MainPage/logout.jsp">LOG OUT</a></li>
								<%}%>
							</ul>
						</nav>

				</div>

			<!-- Banner -->
				<section id="banner">
					<header>
						<h2>�� ���� ���񽺸� ����, ����ڿ��� ����մϴ�.</h2>
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
								<h3><a href="../KOBONGMIN/service.jsp">����α��</a></h3> 
							</header>
						</article>
						<article>
							<a href="#" class="image featured"><img src="images/����.jpg" alt="" /></a>
							<header>
								<h3><a href="#">����</a></h3>
							</header>
						</article>

						<article>
							<a href="#" class="image featured"><img src="images/ġŲ�ŴϾ�.png" alt="" /></a>
							<header>
								<h3><a href="#">ġŲ�ŴϾ�</a></h3>
							</header>
						</article>
					</div>
				</section>


			<!-- Features -->
				<div class="wrapper style1">

					<section id="features" class="container special">
						<header>
							<h2>OUR SERVICE</h2>
							<p>�Ʒ��� ���� ���񽺸� ������ �帳�ϴ�.</p>
						</header>
						<div class="row">
							<article class="4u 12u(mobile) special">
								<a href="#" class="image featured"><img src="images/system.png" alt="" /></a>
								<header>
									<h3><a href="#">������ �ý���</a></h3>
								</header>
								<p><center>
									���ͳݻ󿡼� ���� �����ϰ�<br /> ������ �� �� �ִ� �ý���.
								</center></p>
							</article>
							<article class="4u 12u(mobile) special">
								<a href="#" class="image featured"><img src="images/time.png" alt="" /></a>
								<header>
									<h3><a href="#">�ð� ����</a></h3>
								</header>
								<p><center>
									Take-out �� ��ٸ��� �ð��� <br />���ͳ� �󿡼��� ���� ������ ���� ����.
								</center></p>
							</article>
							<article class="4u 12u(mobile) special">
								<a href="#" class="image featured"><img src="images/����.png" alt="" /></a>
								<header>
									<h3><a href="#">������ ���� ����</a></h3>
								</header>
								<p><center>
									����ڵ��� ���������� ��ȣ�ϱ� ���Ͽ�<br /> ������ ���� �ý��� ����.
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
										<p>Copyright 2017  <a href="#">FoodSurfing</a>. <br>Made with by TEAM 9 / Member: �̼���, �����, ������</p>
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