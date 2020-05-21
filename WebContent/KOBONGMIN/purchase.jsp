<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/style.css">
<title>PURCHASE MENU</title>
<script type="text/javascript">
	var popupX = (window.screen.width / 2) - (400 / 2);
	
	var popupY= (window.screen.height /2) - (300 / 2);
	
	var popupA = (window.screen.width / 2) - (558 / 2);
	
	var popupB= (window.screen.height /2) - (435 / 2);
	
	var popupC = (window.screen.width / 2) - (840 / 2);
	
	var popupD= (window.screen.height /2) - (700 / 2); 

	function popup_win1() {
		window.open('kakaopay.jsp', '', 'status=no, height=558, width=435, left='+ popupA + ', top='+ popupB + ', screenX='+ popupA + ', screenY= '+ popupB);
		window.close('purchase.jsp', '', 'status=no, height=300, width=400, left='+ popupX + ', top='+ popupY + ', screenX='+ popupX + ', screenY= '+ popupY);
	}
	
	function popup_win2() {
		window.open('kginicis.jsp', '', 'status=no, height=600, width=840, left='+ popupC + ', top='+ popupD + ', screenX='+ popupA + ', screenY= '+ popupB);
		window.close('purchase.jsp', '', 'status=no, height=300, width=400, left='+ popupX + ', top='+ popupY + ', screenX='+ popupX + ', screenY= '+ popupY);
	}
	

	
</script>

</head>
	
	
<body>
<!-- <input type="button" value="PURCHASE" class="btn btn-primary" onclick="popup_win1()""> -->
<h2 align="center">SELECT A PURCHASE TYPE</h2>
<center><a href="kakaopay.jsp" onclick="popup_win1()" >
<img src="images/kakao.png"/></a></center><p>
<center><a href="kginicis.jsp" onclick="popup_win2()" >
<img src="images/inicis.png"/></a></center>
</body>
</html>