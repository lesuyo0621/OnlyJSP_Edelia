<%@page import="Email.emailSMTP"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>�̸��� ����</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="assets/css/main.css" />
</head>


<body>
	<%
		String number = (String)session.getAttribute("_number");
		String cnumber = request.getParameter("cnumber");
		if(number.equals(cnumber)){
			out.println("<script>alert('������ �Ϸ�Ǿ����ϴ�.');</script>");
			out.println("<script>window.close();</script>");
		}
	%>
	<%-- <script type="text/javascript">
		function check(){
			var num  = <%= number%>;
			var cnum = <%= cnumber%>;
			if(num == cnum) {
				alert('������ �Ϸ�Ǿ����ϴ�.');
				window.close();
			}
			else{
				alert("������ȣ�� Ʋ�Ƚ��ϴ�. �ٽ� �Է����ּ���.");
			}
				
		} --%>
		
	</script>
	
	<!-- Wrapper -->
	<div id="wrapper" class="divided">
		<!-- Gallery -->
		<section class="wrapper style1 align-center">
		<div class="inner"></div>
		<h2>������ȣ Ȯ��</h2>
		<!-- Additional Elements --> <section class="wrapper style1 align-center">

		<div class="inner">
			<div class="index align-left">
			<!-- Form -->

			<div class="content">

			<form method="post" action="email_certified.jsp">
				<div class="field half first">
					<label for="text">������ȣ�Է�</label> <input type="text" name="cnumber" id="cnumber" value="" required />
				</div>
				<div class="field half">
				<label for="text">&nbsp</label>
				<ul class="actions vertical">
					<li><center><input type="submit" onclick="check()" value="������ȣ Ȯ��" class="button fit"></center></li>
				</ul>
			</div>
			</form>
		</div>
</html>