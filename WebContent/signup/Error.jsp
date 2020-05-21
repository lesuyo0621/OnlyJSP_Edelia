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
		Errorstr = "아이디를 입력해주세요.";
		break;
	case 2 :
		Errorstr = "이름을 입력해주세요.";
		break;
	case 3 :
		Errorstr = "비밀번호를 입력해주세요.";
		break;
	case 4 :
		Errorstr = "비밀번호 확인란이 비어있습니다.";
		break;
	case 5 :
		Errorstr = "비밀번호가 일치하지 않습니다.";
		break;
	case 6 :
		Errorstr = "연락처를 적어주세요.";
		break;
	case 7 :
		Errorstr = "이메일을 입력해주세요.";
		break;
	case 8 :
		Errorstr = "중복되는 아이디 입니다.<br>다른 아이디를 사용해 주세요.";
		break;
	}
%>
<body>
<div id="login-box">
  <div class="left">
  </div>

  <div class="right">
  <h1>회원 가입 오류!</h1><p>
  <h2><%if(Errorstr==null){out.println("업체 코드를 입력해주세요.");}else{out.println(Errorstr);}%></h2>
  <br>
  <form action="SetData.jsp" method="post">
  <button class="snip1535">Retry</button>
  </form>
  </div>
</div>
</body>
</html>