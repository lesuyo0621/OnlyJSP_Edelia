<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="UTF-8">
  <title>FoodSurfing_Sign Up</title>
      <link rel="stylesheet" href="css/style2.css">
</head>
<body>

<div id="login-box">
  <div class="left">
  <h1>Choose your type</h1>
   <form action="SignUp.jsp" method="post">
   <button class="btnstyle2">개인 회원<br><br><br><br><br></button>
   <input type="hidden" value="1" name="_authoritynum">
   </form>
  </div>

  <div class="right">
	<form action="SignUp.jsp" method="post">
    <button class="btnstyle">기업 회원<br><br><br><br><br></button>
    <input type="hidden" value="2" name="_authoritynum">
    </form>
  </div>
</div>

</body>
</html>