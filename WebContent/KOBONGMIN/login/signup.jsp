<%@page import="Email.emailSMTP"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>KOBONGMIN KIMBAP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="assets/css/main.css" />
		
		
		<script type="text/javascript">
		function email() {
			var mail = document.getElementById("_email");
			document.location.href = "signup.jsp?email=" + mail.value;
			window.open('/SP/KOBONGMIN/login/email_certified.jsp', '', 'height=450, width=430, left='+ popupX + ', top='+ popupY + ', screenX='+ popupX + ', screenY= '+ popupY);
		}
		
		
		var popupX = (window.screen.width / 2) - (430 / 2);
		// ���� �˾�â �¿� ũ���� 1/2 ��ŭ ���������� ���־���
	
		var popupY= (window.screen.height /2) - (450 / 2);
		// ���� �˾�â ���� ũ���� 1/2 ��ŭ ���������� ���־���
		
		</script>
	</head>
	<%
	String id = (String)session.getAttribute("_id");
	String name = (String)session.getAttribute("_username");
	String password = (String)session.getAttribute("_password");
	String password2 = (String)session.getAttribute("_password2");
	String phonenumber = (String)session.getAttribute("_phonenumber");
	String email1 = (String)session.getAttribute("_email");
	String state = (String)session.getAttribute("_state");
	%>
	<body>
	<%
		String email = request.getParameter("email");
		emailSMTP smtp = new emailSMTP();
		String number = smtp.sendAuthenticationEmail(email);
		session.setAttribute("_number",number);
	%>
	<!-- Wrapper -->
	<div id="wrapper" class="divided">
		<!-- Gallery -->
		<section class="wrapper style1 align-center">
			<div class="inner">
			</div>


			<!-- Additional Elements -->
			<section class="wrapper style1 align-center">
			<h2>SIGN UP</h2>
				<div class="inner">
				<div class="index align-left">
					<!-- Form -->
					<section>


					<div class="content">

						<form method="post" action="Signup_Query.jsp">
							<div class="field">
							<%
							
							if(name==null) name = "";
							if(email==null) email = "";
							if(phonenumber==null) phonenumber = "";
							if(password==null) password ="";
							if(password2==null) password2 ="";
							if(email1==null) email1 = "";
							if(state==null) state = "";
							if(state.equals("")){
							%>
								<label for="name">Name</label> <input type="text" name="_username"
									id="_username" value="" required />
							</div>
							<div class="field half first">
								<label for="text">Email</label> <input type="email"
									name="_email" id="_email"  required  value=<%=email %>>
							</div>
							<div class="field half">
								<label for="text">&nbsp</label>
								<ul class="actions vertical">
									
									<li><a href="#" onclick="email()" class="button fit" >������ȣ ����</a></li>
								<%-- 	<li><input type="text" value="<%=number%>" id="_number" name="_number"></li> --%>
								
								</ul>
							</div>
							<div class="field">
								<label for="name">ID</label> <input type="text" name="_id"
									id="_id" value="" required />
							</div>
							<div class="field">
								<label for="name">PASSWORD</label> <input type="password"
									name="_password" id="_password" value="" required />
							</div>
							<div class="field">
								<label for="name">RETYPE PASSWORD</label> <input type="password"
									name="_password2" id="_password2" value="" required />
							</div>
							<div class="field">
								<label for="name">PHONE NUMBER</label> <input type="text"
									name="_phonenumber" id="_phonenumber" value="" required />
							</div>
							<div class="field third first">
								<label for="year">BIRTHDAY</label> <input type="text" name="year"
									id="year" value=""  placeholder="- YEAR -" required />
							</div>
							<div class="field third">
							<label for="department">&nbsp</label>
								<div class="select-wrapper">
									<select name="month" id="month">
										<option value="">- MONTH -</option>
										<option value="1">1��</option>
										<option value="2">2��</option>
										<option value="3">3��</option>
										<option value="4">4��</option>
										<option value="5">5��</option>
										<option value="6">6��</option>
										<option value="7">7��</option>
										<option value="8">8��</option>
										<option value="9">9��</option>
										<option value="10">10��</option>
										<option value="11">11��</option>
										<option value="12">12��</option>
									</select>
								</div>
							</div>
							<div class="field third">
							<label for="department">&nbsp</label>
								<div class="select-wrapper">
									<select name="day" id="day">
										<option value="">- DAY -</option>
										<option value="1">1��</option>
										<option value="2">2��</option>
										<option value="3">3��</option>
										<option value="4">4��</option>
										<option value="5">5��</option>
										<option value="6">6��</option>
										<option value="7">7��</option>
										<option value="8">8��</option>
										<option value="9">9��</option>
										<option value="10">10��</option>
										<option value="11">11��</option>
										<option value="12">12��</option>
										<option value="13">13��</option>
										<option value="14">14��</option>
										<option value="15">15��</option>
										<option value="16">16��</option>
										<option value="17">17��</option>
										<option value="18">18��</option>
										<option value="19">19��</option>
										<option value="20">20��</option>
										<option value="21">21��</option>
										<option value="22">22��</option>
										<option value="23">23��</option>
										<option value="24">24��</option>
										<option value="25">25��</option>
										<option value="26">26��</option>
										<option value="27">27��</option>
										<option value="28">28��</option>
										<option value="29">29��</option>
										<option value="30">30��</option>
										<option value="31">31��</option>
									</select>
								</div>
							</div>
							
							<div class="field">
								<label for="department">GENDER</label>
								<div class="select-wrapper">
									<select name="department" id="department">
										<option value="">- Category -</option>
										<option value="1">����</option>
										<option value="2">����</option>
									</select>
								</div>
							</div>
							
							
							<div class="field">
								<label for="message">��������ó����ħ</label>
								<textarea name="message" id="message" rows="6" readonly><KOBONGMIN>('http://KOBONGMIN.com'���� 'KOBONGMIN')��(��) ����������ȣ���� ���� �̿����� �������� ��ȣ �� ������ ��ȣ�ϰ� ���������� ������ �̿����� ������ ��Ȱ�ϰ� ó���� �� �ֵ��� ������ ���� ó����ħ�� �ΰ� �ֽ��ϴ�.<KOBONGMIN>('KOBONGMIN') ��(��) ȸ��� ��������ó����ħ�� �����ϴ� ��� ������Ʈ ��������(�Ǵ� ��������)�� ���Ͽ� ������ ���Դϴ�.
			    - �� ��ħ������ 2017�� 10�� 17�Ϻ��� ����˴ϴ�.
1. ���������� ó�� ���� <KOBONGMIN>('http://KOBONGMIN.com'���� 'KOBONGMIN')��(��) ���������� ������ ������ ���� ó���մϴ�. ó���� ���������� ������ �����̿��� �뵵�δ� ������ ������ �̿� ������ ����� �ÿ��� �������Ǹ� ���� �����Դϴ�.
��. Ȩ������ ȸ������ �� ����
ȸ�� �����ǻ� Ȯ��, ȸ���� ���� ������ ���� ���� �ĺ�������, ȸ���ڰ� ����������, ������ ����Ȯ���� ���࿡ ���� ����Ȯ��, ���� �����̿� ����, ����ó�� ���� �������� ���������� ó���մϴ�.
2. �������� ���� ��Ȳ
('http://KOBONGMIN.com'���� 'KOBONGMIN')�� �������� ��ȣ�� ��32���� ���� ���,�����ϴ� �������������� ó�������� ������ �����ϴ�.
1. �������� ���ϸ� : test
- �������� �׸� : �̸���, �޴���ȭ��ȣ, �α���ID, �������, �̸�
- ������� : Ȩ������
- �����ٰ� : ȸ������ Ȯ��
- �����Ⱓ : 3��
- ���ù��� : �Һ����� �Ҹ� �Ǵ� ����ó���� ���� ��� : 3��
- ��Ÿ('http://KOBONGMIN.com'���� 'KOBONGMIN')�� ������������ ��ϻ��� ������ ���������� ����������ȣ �������� ����(www.privacy.go.kr) > ���������ο� > �������������� �䱸 > ������������ ��ϰ˻� �޴��� Ȱ�����ֽñ� �ٶ��ϴ�.
3. ���������� ó�� �� ���� �Ⱓ

-<KOBONGMIN>('KOBONGMIN')��(��) ���ɿ� ���� �������� �������̿�Ⱓ �Ǵ� ������ü�κ��� ���������� �����ÿ� ���� ���� �������� ����,�̿�Ⱓ ������ ���������� ó��,�����մϴ�.

- ������ �������� ó�� �� ���� �Ⱓ�� ������ �����ϴ�.
1.<Ȩ������ ȸ������ �� ����>
<Ȩ������ ȸ������ �� ����>�� ������ ���������� ����.�̿뿡 ���� �����Ϸκ���<3��>���� �� �̿������ ���Ͽ� ����.�̿�˴ϴ�.
-�����ٰ� : ȸ������ Ȯ��
-���ù��� : �ſ������� ����/ó�� �� �̿� � ���� ��� : 3��
4. ������ü�� �����븮���� �Ǹ����ǹ� �� �� ����� �̿��ڴ� ����������ü�ν� ������ ���� �Ǹ��� ����� �� �ֽ��ϴ�.
- ������ü�� KOBONGMIN�� ���� �������� �������� ����,����,����,ó������ �䱸 ���� �Ǹ��� ����� �� �ֽ��ϴ�.
- ��1�׿� ���� �Ǹ� ����KOBONGMIN�� ���� �������� ��ȣ�� ����� ��41����1�׿� ���� ����, ���ڿ���, �������(FAX) ���� ���Ͽ� �Ͻ� �� ������ KOBONGMIN��(��) �̿� ���� ��ü ���� ��ġ�ϰڽ��ϴ�.
- ��1�׿� ���� �Ǹ� ���� ������ü�� �����븮���̳� ������ ���� �� �� �븮���� ���Ͽ� �Ͻ� �� �ֽ��ϴ�. �� ��� �������� ��ȣ�� �����Ģ ���� ��11ȣ ���Ŀ� ���� �������� �����ϼž� �մϴ�.
- �������� ���� �� ó������ �䱸�� ����������ȣ�� ��35�� ��5��, ��37�� ��2�׿� ���Ͽ� ������ü�� �Ǹ��� ���� �� �� �ֽ��ϴ�.
- ���������� ���� �� ���� �䱸�� �ٸ� ���ɿ��� �� ���������� ���� ������� ��õǾ� �ִ� ��쿡�� �� ������ �䱸�� �� �����ϴ�.
- KOBONGMIN��(��) ������ü �Ǹ��� ���� ������ �䱸, ������������ �䱸, ó�������� �䱸 �� ���� �� �䱸�� �� �ڰ� �����̰ų� ������ �븮�������� Ȯ���մϴ�.
5. ó���ϴ� ���������� �׸� �ۼ� 

- <KOBONGMIN>('http://KOBONGMIN.com'���� 'KOBONGMIN')��(��) ������ �������� �׸��� ó���ϰ� �ֽ��ϴ�.

<Ȩ������ ȸ������ �� ����>
- �ʼ��׸� : �̸���, �޴���ȭ��ȣ, �������, �̸�
- �����׸� : ����
6. ���������� �ı�<KOBONGMIN>('KOBONGMIN')��(��) ��Ģ������ �������� ó�������� �޼��� ��쿡�� ��ü���� �ش� ���������� �ı��մϴ�. �ı��� ����, ���� �� ����� ������ �����ϴ�.
-�ı�����
�̿��ڰ� �Է��� ������ ���� �޼� �� ������ DB�� �Ű���(������ ��� ������ ����) ���� ��ħ �� ��Ÿ ���� ���ɿ� ���� �����Ⱓ ����� �� Ȥ�� ��� �ı�˴ϴ�. �� ��, DB�� �Ű��� ���������� ������ ���� ��찡 �ƴϰ��� �ٸ� �������� �̿���� �ʽ��ϴ�.

-�ı����
�̿����� ���������� ���������� �����Ⱓ�� ����� ��쿡�� �����Ⱓ�� �����Ϸκ��� 5�� �̳���, ���������� ó�� ���� �޼�, �ش� ������ ����, ����� ���� �� �� ���������� ���ʿ��ϰ� �Ǿ��� ������ ���������� ó���� ���ʿ��� ������ �����Ǵ� ���κ��� 5�� �̳��� �� ���������� �ı��մϴ�.
-�ı���
������ ���� ������ ������ ����� ����� �� ���� ����� ����� ����մϴ�.
���̿� ��µ� ���������� �м��� �м��ϰų� �Ұ��� ���Ͽ� �ı��մϴ�.
7. �������� �ڵ� ���� ��ġ�� ��ġ,� �� �źο� ���� ����
- KOBONGMIN �� �������� ���㼭�񽺸� �����ϱ� ���� �̿������� �����ϰ� ���÷� �ҷ����� �����(cookie)���� ����մϴ�. 
- ��Ű�� ������Ʈ�� ��ϴµ� �̿�Ǵ� ����(http)�� �̿����� ��ǻ�� ���������� ������ �ҷ��� �����̸� �̿��ڵ��� PC ��ǻ�ͳ��� �ϵ��ũ�� ����Ǳ⵵ �մϴ�. 
��. ��Ű�� ��� ���� : �̿��ڰ� �湮�� �� ���񽺿� �� ����Ʈ�鿡 ���� �湮 �� �̿�����, �α� �˻���, �������� ����, ���� �ľ��Ͽ� �̿��ڿ��� ����ȭ�� ���� ������ ���� ���˴ϴ�. 
��. ��Ű�� ��ġ,� �� �ź� : �������� ����� ����>���ͳ� �ɼ�>�������� �޴��� �ɼ� ������ ���� ��Ű ������ �ź� �� �� �ֽ��ϴ�. 
��. ��Ű ������ �ź��� ��� ������ ���� �̿뿡 ������� �߻��� �� �ֽ��ϴ�.</textarea>
							</div>
							<div class="field third first">
								<!-- <input type="radio" id="priority-low" name="priority" checked /> -->
								<label for="priority-low">&nbsp</label>
							</div>
							<div class="field third">
								<input type="radio" id="priority-normal" name="agree" /> <label
									for="priority-normal">������</label>
							</div>
							<div class="field third">
								<input type="radio" id="priority-high" name="agree" /> <label
									for="priority-high">�������� ����</label>
							</div>
							<div class="field half first">
								<label for="priority-high">
								<ul class="actions vertical">
									<li><input type="submit" value="ȸ������" class="button small"></li>
									<!-- <li><a href="#" class="button fit">ȸ������</a></li> -->
								</ul>
								</label>
							</div>
							<input type="hidden" value="1" name="_code">
							<input type="hidden" value="1" name="_authoritynum">
							<%
							}else if(state.equals("1")){
							%>
							<label for="name">Name</label> <input type="text" name="_username"
									id="_username" value=<%=name %> required />
							</div>
							<div class="field half first">
								<label for="text">Email</label> <input type="email"
									name="_email" id="_email" required value=<%=email%>>
							</div>
							<div class="field half">
								<label for="text">&nbsp</label>
								<ul class="actions vertical">
									
									<li><a href="#" onclick="email()" class="button fit" >������ȣ ����</a></li>								
								</ul>
							</div>
							<div class="field">
								<label for="name">ID</label> <input type="text" name="_id"
									id="_id" value=<%=id %> required />
							</div>
							<div class="field">
								<label for="name">PASSWORD</label> <input type="password"
									name="_password" id="_password" value=<%=password%> required />
							</div>
							<div class="field">
								<label for="name">RETYPE PASSWORD</label> <input type="password"
									name="_password2" id="_password2" value=<%=password2%> required />
							</div>
							<div class="field">
								<label for="name">PHONE NUMBER</label> <input type="text"
									name="_phonenumber" id="_phonenumber" value=<%=phonenumber%> required />
							</div>
							<div class="field third first">
								<label for="year">BIRTHDAY</label> <input type="text" name="year"
									id="year" value=""  placeholder="- YEAR -" required />
							</div>
							<div class="field third">
							<label for="department">&nbsp</label>
								<div class="select-wrapper">
									<select name="month" id="month">
										<option value="">- MONTH -</option>
										<option value="1">1��</option>
										<option value="2">2��</option>
										<option value="3">3��</option>
										<option value="4">4��</option>
										<option value="5">5��</option>
										<option value="6">6��</option>
										<option value="7">7��</option>
										<option value="8">8��</option>
										<option value="9">9��</option>
										<option value="10">10��</option>
										<option value="11">11��</option>
										<option value="12">12��</option>
									</select>
								</div>
							</div>
							<div class="field third">
							<label for="department">&nbsp</label>
								<div class="select-wrapper">
									<select name="day" id="day">
										<option value="">- DAY -</option>
										<option value="1">1��</option>
										<option value="2">2��</option>
										<option value="3">3��</option>
										<option value="4">4��</option>
										<option value="5">5��</option>
										<option value="6">6��</option>
										<option value="7">7��</option>
										<option value="8">8��</option>
										<option value="9">9��</option>
										<option value="10">10��</option>
										<option value="11">11��</option>
										<option value="12">12��</option>
										<option value="13">13��</option>
										<option value="14">14��</option>
										<option value="15">15��</option>
										<option value="16">16��</option>
										<option value="17">17��</option>
										<option value="18">18��</option>
										<option value="19">19��</option>
										<option value="20">20��</option>
										<option value="21">21��</option>
										<option value="22">22��</option>
										<option value="23">23��</option>
										<option value="24">24��</option>
										<option value="25">25��</option>
										<option value="26">26��</option>
										<option value="27">27��</option>
										<option value="28">28��</option>
										<option value="29">29��</option>
										<option value="30">30��</option>
										<option value="31">31��</option>
									</select>
								</div>
							</div>
							
							<div class="field">
								<label for="department">GENDER</label>
								<div class="select-wrapper">
									<select name="department" id="department">
										<option value="">- Category -</option>
										<option value="1">����</option>
										<option value="2">����</option>
									</select>
								</div>
							</div>
							
							
							<div class="field">
								<label for="message">��������ó����ħ</label>
								<textarea name="message" id="message" rows="6" readonly><KOBONGMIN>('http://KOBONGMIN.com'���� 'KOBONGMIN')��(��) ����������ȣ���� ���� �̿����� �������� ��ȣ �� ������ ��ȣ�ϰ� ���������� ������ �̿����� ������ ��Ȱ�ϰ� ó���� �� �ֵ��� ������ ���� ó����ħ�� �ΰ� �ֽ��ϴ�.<KOBONGMIN>('KOBONGMIN') ��(��) ȸ��� ��������ó����ħ�� �����ϴ� ��� ������Ʈ ��������(�Ǵ� ��������)�� ���Ͽ� ������ ���Դϴ�.
			    - �� ��ħ������ 2017�� 10�� 17�Ϻ��� ����˴ϴ�.
1. ���������� ó�� ���� <KOBONGMIN>('http://KOBONGMIN.com'���� 'KOBONGMIN')��(��) ���������� ������ ������ ���� ó���մϴ�. ó���� ���������� ������ �����̿��� �뵵�δ� ������ ������ �̿� ������ ����� �ÿ��� �������Ǹ� ���� �����Դϴ�.
��. Ȩ������ ȸ������ �� ����
ȸ�� �����ǻ� Ȯ��, ȸ���� ���� ������ ���� ���� �ĺ�������, ȸ���ڰ� ����������, ������ ����Ȯ���� ���࿡ ���� ����Ȯ��, ���� �����̿� ����, ����ó�� ���� �������� ���������� ó���մϴ�.
2. �������� ���� ��Ȳ
('http://KOBONGMIN.com'���� 'KOBONGMIN')�� �������� ��ȣ�� ��32���� ���� ���,�����ϴ� �������������� ó�������� ������ �����ϴ�.
1. �������� ���ϸ� : test
- �������� �׸� : �̸���, �޴���ȭ��ȣ, �α���ID, �������, �̸�
- ������� : Ȩ������
- �����ٰ� : ȸ������ Ȯ��
- �����Ⱓ : 3��
- ���ù��� : �Һ����� �Ҹ� �Ǵ� ����ó���� ���� ��� : 3��
- ��Ÿ('http://KOBONGMIN.com'���� 'KOBONGMIN')�� ������������ ��ϻ��� ������ ���������� ����������ȣ �������� ����(www.privacy.go.kr) > ���������ο� > �������������� �䱸 > ������������ ��ϰ˻� �޴��� Ȱ�����ֽñ� �ٶ��ϴ�.
3. ���������� ó�� �� ���� �Ⱓ

-<KOBONGMIN>('KOBONGMIN')��(��) ���ɿ� ���� �������� �������̿�Ⱓ �Ǵ� ������ü�κ��� ���������� �����ÿ� ���� ���� �������� ����,�̿�Ⱓ ������ ���������� ó��,�����մϴ�.

- ������ �������� ó�� �� ���� �Ⱓ�� ������ �����ϴ�.
1.<Ȩ������ ȸ������ �� ����>
<Ȩ������ ȸ������ �� ����>�� ������ ���������� ����.�̿뿡 ���� �����Ϸκ���<3��>���� �� �̿������ ���Ͽ� ����.�̿�˴ϴ�.
-�����ٰ� : ȸ������ Ȯ��
-���ù��� : �ſ������� ����/ó�� �� �̿� � ���� ��� : 3��
4. ������ü�� �����븮���� �Ǹ����ǹ� �� �� ����� �̿��ڴ� ����������ü�ν� ������ ���� �Ǹ��� ����� �� �ֽ��ϴ�.
- ������ü�� KOBONGMIN�� ���� �������� �������� ����,����,����,ó������ �䱸 ���� �Ǹ��� ����� �� �ֽ��ϴ�.
- ��1�׿� ���� �Ǹ� ����KOBONGMIN�� ���� �������� ��ȣ�� ����� ��41����1�׿� ���� ����, ���ڿ���, �������(FAX) ���� ���Ͽ� �Ͻ� �� ������ KOBONGMIN��(��) �̿� ���� ��ü ���� ��ġ�ϰڽ��ϴ�.
- ��1�׿� ���� �Ǹ� ���� ������ü�� �����븮���̳� ������ ���� �� �� �븮���� ���Ͽ� �Ͻ� �� �ֽ��ϴ�. �� ��� �������� ��ȣ�� �����Ģ ���� ��11ȣ ���Ŀ� ���� �������� �����ϼž� �մϴ�.
- �������� ���� �� ó������ �䱸�� ����������ȣ�� ��35�� ��5��, ��37�� ��2�׿� ���Ͽ� ������ü�� �Ǹ��� ���� �� �� �ֽ��ϴ�.
- ���������� ���� �� ���� �䱸�� �ٸ� ���ɿ��� �� ���������� ���� ������� ��õǾ� �ִ� ��쿡�� �� ������ �䱸�� �� �����ϴ�.
- KOBONGMIN��(��) ������ü �Ǹ��� ���� ������ �䱸, ������������ �䱸, ó�������� �䱸 �� ���� �� �䱸�� �� �ڰ� �����̰ų� ������ �븮�������� Ȯ���մϴ�.
5. ó���ϴ� ���������� �׸� �ۼ� 

- <KOBONGMIN>('http://KOBONGMIN.com'���� 'KOBONGMIN')��(��) ������ �������� �׸��� ó���ϰ� �ֽ��ϴ�.

<Ȩ������ ȸ������ �� ����>
- �ʼ��׸� : �̸���, �޴���ȭ��ȣ, �������, �̸�
- �����׸� : ����
6. ���������� �ı�<KOBONGMIN>('KOBONGMIN')��(��) ��Ģ������ �������� ó�������� �޼��� ��쿡�� ��ü���� �ش� ���������� �ı��մϴ�. �ı��� ����, ���� �� ����� ������ �����ϴ�.
-�ı�����
�̿��ڰ� �Է��� ������ ���� �޼� �� ������ DB�� �Ű���(������ ��� ������ ����) ���� ��ħ �� ��Ÿ ���� ���ɿ� ���� �����Ⱓ ����� �� Ȥ�� ��� �ı�˴ϴ�. �� ��, DB�� �Ű��� ���������� ������ ���� ��찡 �ƴϰ��� �ٸ� �������� �̿���� �ʽ��ϴ�.

-�ı����
�̿����� ���������� ���������� �����Ⱓ�� ����� ��쿡�� �����Ⱓ�� �����Ϸκ��� 5�� �̳���, ���������� ó�� ���� �޼�, �ش� ������ ����, ����� ���� �� �� ���������� ���ʿ��ϰ� �Ǿ��� ������ ���������� ó���� ���ʿ��� ������ �����Ǵ� ���κ��� 5�� �̳��� �� ���������� �ı��մϴ�.
-�ı���
������ ���� ������ ������ ����� ����� �� ���� ����� ����� ����մϴ�.
���̿� ��µ� ���������� �м��� �м��ϰų� �Ұ��� ���Ͽ� �ı��մϴ�.
7. �������� �ڵ� ���� ��ġ�� ��ġ,� �� �źο� ���� ����
- KOBONGMIN �� �������� ���㼭�񽺸� �����ϱ� ���� �̿������� �����ϰ� ���÷� �ҷ����� �����(cookie)���� ����մϴ�. 
- ��Ű�� ������Ʈ�� ��ϴµ� �̿�Ǵ� ����(http)�� �̿����� ��ǻ�� ���������� ������ �ҷ��� �����̸� �̿��ڵ��� PC ��ǻ�ͳ��� �ϵ��ũ�� ����Ǳ⵵ �մϴ�. 
��. ��Ű�� ��� ���� : �̿��ڰ� �湮�� �� ���񽺿� �� ����Ʈ�鿡 ���� �湮 �� �̿�����, �α� �˻���, �������� ����, ���� �ľ��Ͽ� �̿��ڿ��� ����ȭ�� ���� ������ ���� ���˴ϴ�. 
��. ��Ű�� ��ġ,� �� �ź� : �������� ����� ����>���ͳ� �ɼ�>�������� �޴��� �ɼ� ������ ���� ��Ű ������ �ź� �� �� �ֽ��ϴ�. 
��. ��Ű ������ �ź��� ��� ������ ���� �̿뿡 ������� �߻��� �� �ֽ��ϴ�.</textarea>
							</div>
							<div class="field third first">
								<!-- <input type="radio" id="priority-low" name="priority" checked /> -->
								<label for="priority-low">&nbsp</label>
							</div>
							<div class="field third">
								<input type="radio" id="priority-normal" name="agree" /> <label
									for="priority-normal">������</label>
							</div>
							<div class="field third">
								<input type="radio" id="priority-high" name="agree" /> <label
									for="priority-high">�������� ����</label>
							</div>
							<div class="field half first">
								<label for="priority-high">
								<ul class="actions vertical">
									<li><input type="submit" value="ȸ������" class="button small"></li>
									<!-- <li><a href="#" class="button fit">ȸ������</a></li> -->
								</ul>
								</label>
							</div>
							<input type="hidden" value="1" name="_code">
							<input type="hidden" value="1" name="_authoritynum">
							<%} %>
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
						&copy; Design: <a href="#">KOBONGMIN</a>.
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