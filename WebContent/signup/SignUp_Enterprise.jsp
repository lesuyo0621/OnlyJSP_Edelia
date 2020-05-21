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
  <div id="login-box">
  <div class="left">
    <h1>Sign up</h1>
    
    <input type="text" name="_username" placeholder="Username" />
    <input type="text" name="_id" placeholder="ID" />
    <input type="password" name="_password" placeholder="Password" />
    <input type="password" name="_password2" placeholder="Retype password" />
    <input type="text" name="_phonenumber" placeholder="PhoneNumber"  />
    <input type="text" name="_email" placeholder="E-mail" />
    <input type="text" name="_email_Certification_Number" placeholder="Certification Number" />
    <button class="social-signin twitter">Send verification number</button>
    <input type="submit" name="signup_submit" value="Sign me up" />
  </div>
  
  <div class="right">
    <span class="loginwith">Sign in with<br />social network</span>
    
    <button class="social-signin facebook">Log in with facebook</button>
    <button class="social-signin twitter">Log in with Twitter</button>
    <button class="social-signin google">Log in with Google+</button>
  </div>
</div>
  
  
</body>
</html>