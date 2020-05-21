<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>EDELIA CAFE</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="assets/css/main.css" />
		
		
		<script type="text/javascript">
		function popup_win1() { 
			window.open('/SP/EDELIA/TEST/purchasemenu.jsp', '', 'location=no, height=435, width=400, left='+ popupX + ', top='+ popupY + ', screenX='+ popupX + ', screenY= '+ popupY);
			window.close('pur_page.jsp');
		}
		
		var popupX = (window.screen.width / 2) - (400 / 2);
		// 만들 팝업창 좌우 크기의 1/2 만큼 보정값으로 빼주었음

		var popupY= (window.screen.height /2) - (300 / 2);
		// 만들 팝업창 상하 크기의 1/2 만큼 보정값으로 빼주었음
		
		</script>
	</head>
	<body>
	<!-- Wrapper -->
	<div id="wrapper" class="divided">
		<!-- Gallery -->
		<section class="wrapper style1 align-center">
			<div class="inner">
			</div>


			<!-- Additional Elements -->
			<section class="wrapper style1 align-center">
			<h2>구매 페이지</h2>
				<div class="inner">
				<div class="index align-left">
					<!-- Form -->
					<section>


					<div class="content">

						<form method="post" action="pur_page_Query.jsp">
							<div class="field">
								<label for="name">구매하실 상품의 개수를 선택해 주세요.</label>
								<div class="select-wrapper">
									<select name="month" id="month">
										<option value="">- 상품의 개수를 선택해 주세요. -</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
									</select>
							</div>
							<p>
							<div class="field">
								<label for="text"> TAKE-OUT 시간 및 메세지를 적어주세요.</label> <input type="text"
									name="_text" id="_text" value="" required />
							</div>
							<div class="field half first">
								<label for="priority-high">
								<ul class="actions vertical">
								<li><input type="button" value="다 음" class="button small" id="caramel_maki" onclick="popup_win1()""></li>
									<!-- <li><input type="button" value="다 음" onclick="popup_win1()" class="button small"></li> -->
								</ul>
								</label>
							</div>
					</form>
							
					</div>
					</section>
				</div>
				<!-- Footer -->
				<footer class="wrapper style1 align-center">
				<div class="inner">
					<ul class="icons">
						<li><a href="#" class="icon style2 fa-twitter"><span
								class="label">Twitter</span></a></li>
						<li><a href="#" class="icon style2 fa-facebook"><span
								class="label">Facebook</span></a></li>
					</ul>
					<p>
						&copy; Design: <a href="#">EDELIA</a>.
					</p>
				</div>
				</footer>

			</div>

			<!-- Scripts --> <script src="assets/js/jquery.min.js"></script> <script
				src="assets/js/jquery.scrollex.min.js"></script> <script
				src="assets/js/jquery.scrolly.min.js"></script> <script
				src="assets/js/skel.min.js"></script> <script
				src="assets/js/util.js"></script> <script src="assets/js/main.js"></script>

			<!-- Note: Only needed for demo purposes. Delete for production sites. -->
			<script src="assets/js/demo.js"></script></body>
</html>