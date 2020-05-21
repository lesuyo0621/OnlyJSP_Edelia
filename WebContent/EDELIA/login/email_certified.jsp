<%@page import="Email.emailSMTP"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>이메일 인증</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="assets/css/main.css" />
</head>


<body>
	<%
		String number = (String)session.getAttribute("_number");
		String cnumber = request.getParameter("cnumber");
		if(number.equals(cnumber)){
			out.println("<script>alert('인증이 완료되었습니다.');</script>");
			out.println("<script>window.close();</script>");
		}
	%>
	<%-- <script type="text/javascript">
		function check(){
			var num  = <%= number%>;
			var cnum = <%= cnumber%>;
			if(num == cnum) {
				alert('인증이 완료되었습니다.');
				window.close();
			}
			else{
				alert("인증번호가 틀렸습니다. 다시 입력해주세요.");
			}
				
		} --%>
		
	</script>
	
	<!-- Wrapper -->
	<div id="wrapper" class="divided">
		<!-- Gallery -->
		<section class="wrapper style1 align-center">
		<div class="inner"></div>
		<h2>인증번호 확인</h2>
		<!-- Additional Elements --> <section class="wrapper style1 align-center">

		<div class="inner">
			<div class="index align-left">
			<!-- Form -->

			<div class="content">

			<form method="post" action="email_certified.jsp">
				<div class="field half first">
					<label for="text">인증번호입력</label> <input type="text" name="cnumber" id="cnumber" value="" required />
				</div>
				<div class="field half">
				<label for="text">&nbsp</label>
				<ul class="actions vertical">
					<li><center><input type="submit" onclick="check()" value="인증번호 확인" class="button fit"></center></li>
				</ul>
			</div>
			</form>
		</div>
</html>