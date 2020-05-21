<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="UTF-8">
  <title>FoodSurfing_Sign Up</title>
      <link rel="stylesheet" href="css/style.css">
</head>
<body>
<%

	String setstmt = request.getParameter("_setstmt");
	String id = request.getParameter("_id");
	String name = request.getParameter("_username");
	String password = request.getParameter("_password");
	String password2 = request.getParameter("_password2");
	String phonenumber = request.getParameter("_phonenumber");
	String email = request.getParameter("_email");
	String authority = request.getParameter("_authoritynum");
	String code = request.getParameter("_code");
	
	if(setstmt==null){
%>
<form name="LoginForm" action="joinOK.jsp" method="post">
  <div id="login-box">
  <div class="left">
    <h1>Sign up</h1>
    <input type="text" name="_username" placeholder="Username" />
    <input type="text" name="_id" placeholder="ID" />
    <input type="password" name="_password" placeholder="Password" />
    <input type="password" name="_password2" placeholder="Retype password" />
    <input type="text" name="_phonenumber" placeholder="PhoneNumber"  />
    <%if(authority.equals("1")){ %>
    <input type="text" name="_email" placeholder="E-mail" >
    <input type="hidden" name="_code" value="1">
    <%}else if(authority.equals("2")){ %>
    <input type="text" name="_email" placeholder="E-mail" >
    <input type="text" name="_code" placeholder="Enterprise code" >
    <%} %>
    <input type="submit" name="signup_submit" value="Sign me up" >
    <input type="hidden" value=<%=authority %> name="_authoritynum">
  </div>
</form>
<%}else if(setstmt.equals("1")){ %>
<form name="LoginForm" action="joinOK.jsp" method="post">
  <div id="login-box">
  <div class="left">
    <h1>Sign up</h1>
    <input type="text" name="_username" placeholder="Username" value=<%if(name.equals("null")){out.print("");}else{out.print(name);}%>>
    <input type="text" name="_id" placeholder="ID" value=<%if(id.equals("null")){out.print("");}else{out.print(id);}%>>
    <input type="password" name="_password" placeholder="Password" value=<%if(password.equals("null")){out.print("");}else{out.print(password);}%>>
    <input type="password" name="_password2" placeholder="Retype password" value=<%if(password2.equals("null")){out.print("");}else{out.print(password2);}%>>
    <input type="text" name="_phonenumber" placeholder="PhoneNumber" value=<%if(phonenumber.equals("null")){out.print("");}else{out.print(phonenumber);}%>>
    <%if(authority.equals("1")){ %>
    <input type="text" name="_email" placeholder="E-mail" value=<%if(email.equals("null")){out.print("");}else{out.print(email);}%>>
    <input type="text" name="_email_Certification_Number" placeholder="Certification Number">
    <input type="hidden" name="_code" value="1">
    <button class="social-signin twitter">Send verification number</button>
    <%}else if(authority.equals("2")){ %>
    <input type="text" name="_email" placeholder="E-mail" value=<%if(email.equals("null")){out.print("");}else{out.print(email);}%>>
    <input type="text" name="_code" placeholder="Enterprise code" >
    <%} %>
    <input type="submit" name="signup_submit" value="Sign me up">
    <input type="hidden" value=<%=authority %> name="_authoritynum">
  </div>
</form>
<%} %>

  <div class="right">
  	<%if(authority.equals("1")){ %>
    <!-- <span class="loginwith">Sign in with<br />social network</span>
    
    <button class="social-signin facebook">Log in with facebook</button>
    <button class="social-signin twitter">Log in with Twitter</button>
    <button class="social-signin google">Log in with Google+</button> -->
    <%} %>
  </div>
</div>
  
  
</body>
</html>