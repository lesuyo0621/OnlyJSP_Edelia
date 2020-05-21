<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="UTF-8">
  <title>FoodSurfing_Sign Up</title>
      <link rel="stylesheet" href="css/successstyle.css">
</head>
<%
session.invalidate();
%>
<body>
<div id="login-box">
  <div class="left">
  </div>

  <div class="right">
  <h1>회원 가입 성공!</h1><p>
  <h2>Food Surfing에 오신것을<br>환영합니다!</h2>
  <br>
  <form action="../MainPage/index.jsp" method="post">
  <button class="snip1535">Jump In!</button>
  </form>
  </div>
</div>
</body>
</html>