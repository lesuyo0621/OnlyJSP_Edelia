<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="UTF-8">
  <title>FoodSurfing_Sign Up</title>
      <link rel="stylesheet" href="css/errorstyle.css">
</head>
<%

	String Errorstr = null;
	int errorcode = Integer.parseInt(request.getParameter("_errorcode"));

	
	switch(errorcode){
	
	case 1 :
		Errorstr = "���̵� �������� �ʽ��ϴ�.";
		break;
	case 2 :
		Errorstr = "��й�ȣ�� Ʋ���ϴ�.";
		break;
	}
%>
<body>
<div id="login-box">
  <div class="left">
  </div>

  <div class="right">
  <h1>�α��� ����!</h1><p>
  <h2><%=Errorstr %></h2>
  <br>
  <form action="login.jsp" method="post">
  <button class="snip1535">Retry</button>
  </form>
  </div>
</div>
</body>
</html>