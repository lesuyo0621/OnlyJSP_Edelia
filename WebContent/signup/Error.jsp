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
	int errorcode = (int)session.getAttribute("_errorcode");

	
	switch(errorcode){
	
	case 1 :
		Errorstr = "���̵� �Է����ּ���.";
		break;
	case 2 :
		Errorstr = "�̸��� �Է����ּ���.";
		break;
	case 3 :
		Errorstr = "��й�ȣ�� �Է����ּ���.";
		break;
	case 4 :
		Errorstr = "��й�ȣ Ȯ�ζ��� ����ֽ��ϴ�.";
		break;
	case 5 :
		Errorstr = "��й�ȣ�� ��ġ���� �ʽ��ϴ�.";
		break;
	case 6 :
		Errorstr = "����ó�� �����ּ���.";
		break;
	case 7 :
		Errorstr = "�̸����� �Է����ּ���.";
		break;
	case 8 :
		Errorstr = "�ߺ��Ǵ� ���̵� �Դϴ�.<br>�ٸ� ���̵� ����� �ּ���.";
		break;
	}
%>
<body>
<div id="login-box">
  <div class="left">
  </div>

  <div class="right">
  <h1>ȸ�� ���� ����!</h1><p>
  <h2><%if(Errorstr==null){out.println("��ü �ڵ带 �Է����ּ���.");}else{out.println(Errorstr);}%></h2>
  <br>
  <form action="SetData.jsp" method="post">
  <button class="snip1535">Retry</button>
  </form>
  </div>
</div>
</body>
</html>