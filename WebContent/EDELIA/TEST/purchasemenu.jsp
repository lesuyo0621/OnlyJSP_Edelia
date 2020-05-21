<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>PURCHASE MENU</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="assets/css/main.css" />
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
		<script type="text/javascript">
			var popupX = (window.screen.width / 2) - (400 / 2);
			
			var popupY= (window.screen.height /2) - (300 / 2);
			
			var popupA = (window.screen.width / 2) - (558 / 2);
			
			var popupB= (window.screen.height /2) - (435 / 2);
			
			var popupC = (window.screen.width / 2) - (840 / 2);
			
			var popupD= (window.screen.height /2) - (700 / 2); 
			
			var popupE = (window.screen.width / 2) - (500 / 2);
			
			var popupF= (window.screen.height /2) - (690 / 2); 	
		
			function popup_win1() {
				window.open('kakaopay.jsp', '', 'height=558, width=435, left='+ popupA + ', top='+ popupB + ', screenX='+ popupA + ', screenY= '+ popupB);
				window.close('purchasemenu.jsp', '', 'height=300, width=400, left='+ popupX + ', top='+ popupY + ', screenX='+ popupX + ', screenY= '+ popupY);
			}
			
			function popup_win2() {
				window.open('kginicis.jsp', '', 'height=600, width=840, left='+ popupC + ', top='+ popupD + ', screenX='+ popupC + ', screenY= '+ popupD);
				window.close('purchasemenu.jsp', '', 'height=300, width=400, left='+ popupX + ', top='+ popupY + ', screenX='+ popupX + ', screenY= '+ popupY);
			}
			
			function popup_win3() {
				window.open('danal.jsp', '', 'height=500, width=690, left='+ popupE + ', top='+ popupF + ', screenX='+ popupE + ', screenY= '+ popupF);
				window.close('purchasemenu.jsp', '', 'height=300, width=400, left='+ popupX + ', top='+ popupY + ', screenX='+ popupX + ', screenY= '+ popupY);
			}
			
		
			
		</script>
	</head>
	<body>
		<!-- Footer -->
			<section id="footer">
				<div class="container">
					<header class="major">
						<h2>SELECT A PURCHASE TYPE</h2>
					</header>
					<ul class="actions uniform">
						<center><a href="kakaopay.jsp" onclick="popup_win1()" >
						<img src="images/kakao.png"/></a></center><p>
						<center><a href="kginicis.jsp" onclick="popup_win2()" >
						<img src="images/inicis.png"/></a></center><p>
						<center><a href="danal.jsp" onclick="popup_win3()" >
						<img src="images/danal.png"/></a></center>
					</ul>
				</div>
				<ul class="copyright">
					<li>&copy; EDELIA</li><li>Design: TEAM&nbsp9</li>
				</ul>
			</section>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>

	</body>
</html>