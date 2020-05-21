<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%

	String id = (String)session.getAttribute("_id");
	String name = (String)session.getAttribute("_username");
	String password = (String)session.getAttribute("_password");
	String password2 = (String)session.getAttribute("_password2");
	String phonenumber = (String)session.getAttribute("_phonenumber");
	String email = (String)session.getAttribute("_email");
	String authority = (String)session.getAttribute("_authoritynum");
	String setstmt = "1";

	session.invalidate();
%>
<form method="post">
<input type="hidden" value=<%=id%> name="_id">
<input type="hidden" value=<%=name%> name="_username">
<input type="hidden" value=<%=password%> name="_password">
<input type="hidden" value=<%=password2%> name="_password2">
<input type="hidden" value=<%=phonenumber%> name="_phonenumber">
<input type="hidden" value=<%=email%> name="_email">
<input type="hidden" value=<%=authority%> name="_authority">
<input type="hidden" value=<%=setstmt%> name="_setstmt">
<%response.sendRedirect("SignUp.jsp?_id="+id+"&_username="+name+"&_password="+password+"&_password2="+password2+"&_phonenumber="+phonenumber+"&_email="+email+"&_authoritynum="+authority+"&_setstmt="+setstmt);%>
</form>
</body>
</html>