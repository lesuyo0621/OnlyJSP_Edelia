<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="Security.SHA512salt"%>
<%@page import="com.mysql.jdbc.*"%>
<%@page import="DBconn.DBconnect"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="Security.AES"%>
<%@page import="java.util.Date"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	Date d = new Date();
	int datenum = d.getDate();
	int monthnum = (d.getMonth()+1);
	int yearnum = (d.getYear()+1900);
%>

<%

	request.setCharacterEncoding("EUC-KR");
	String ecbkey = "first ecb";
	String cbckey = "Second cbc";
	String cbcIVkey = "Third cbc";
	String cbcIV = "Third IV";
	String id = request.getParameter("_id");
	String name = request.getParameter("_username");
	String password = request.getParameter("_password");
	String password2 = request.getParameter("_password2");
	String phonenumber = request.getParameter("_phonenumber");
	String email = request.getParameter("_email");
	String authority = request.getParameter("_authoritynum");
	String code = request.getParameter("_code");
	String date = (yearnum+"년"+monthnum+"월"+datenum+"일");
	int errorcode=0;

	if(id.equals("")) {id = null; errorcode=1;}
	else if(name.equals("")) {name = null; errorcode=2;}
	else if(password.equals("")) {password = null; errorcode=3;}
	else if(password2.equals("")) {password2 = null; errorcode=4;}
	else if(phonenumber.equals("")) {phonenumber = null; errorcode=6;}
	else if(email.equals("")) {email = null; errorcode=7;}
	else if(code.equals("")){code = null; errorcode=9;}
	else if(id!=null && name!=null && password!=null && password2!=null && phonenumber!=null && email!=null && !password.equals(password2)) {errorcode=5;}

	String state = "1";
	session.setAttribute("_state", state);
	session.setAttribute("_id", id);
	session.setAttribute("_username", name);
	session.setAttribute("_password", password);
	session.setAttribute("_password2", password2);
	session.setAttribute("_phonenumber", phonenumber);
	session.setAttribute("_email", email);
	session.setAttribute("_authoritynum", authority);
	session.setAttribute("_errorcode", errorcode);
	
	switch(errorcode)
	{
	case 0:
		break;
	case 1:
		out.println("<script>alert('아이디를 입력하여 주세요.');</script>");
		out.println("<script>location.href='signup.jsp';</script>");
		break;
	case 2:
		out.println("<script>alert('이름을 입력하여 주세요.');</script>");
		out.println("<script>location.href='signup.jsp';</script>");
		break;
	case 3:
		out.println("<script>alert('패스워드를 입력하여 주세요.');</script>");
		out.println("<script>location.href='signup.jsp';</script>");
		break;
	case 4:
		out.println("<script>alert('패스워드 확인란을 입력하여 주세요.');</script>");
		out.println("<script>location.href='signup.jsp';</script>");
		break;
	case 5:
		out.println("<script>alert('패스워드가 일치하지 않습니다.');</script>");
		out.println("<script>location.href='signup.jsp';</script>");
		break;
	case 6:
		out.println("<script>alert('연락처를 입력하여 주세요.');</script>");
		out.println("<script>location.href='signup.jsp';</script>");
		break;
	case 7:
		out.println("<script>alert('이메일을 입력하여 주세요.');</script>");
		out.println("<script>location.href='signup.jsp';</script>");
		break;
	}
	
	if(errorcode==0){
	String pwSHA512salt = SHA512salt.getSHA512(password, phonenumber);
	byte[] pwECB = AES.aesEncryptEcb(ecbkey, password);
	byte[] pwECB_CBC = AES.aesEncryptCbc(cbckey, AES.toHexString(pwECB));
	byte[] pwECB_CBC_CBCIV = AES.aesEncryptCbc(cbcIVkey, AES.toHexString(pwECB_CBC), cbcIV);
	String passwordst = AES.toHexString(pwECB_CBC_CBCIV);
	
	Connection conn = DBconnect.getMySQLConnection(); // DB연결
	
	String sql = "insert into member(id, password, name, phonenumber, email, authority, code, passwordhash, date) values(?, ?, ?, ?, ?, ?, ?, ?, ?)";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	try{
	pstmt.setString(1, id);
	pstmt.setString(2, passwordst);
	pstmt.setString(3, name);
	pstmt.setString(4, phonenumber);
	pstmt.setString(5, email);
	pstmt.setString(6, authority);
	pstmt.setString(7, code);
	pstmt.setString(8, pwSHA512salt);
	pstmt.setString(9, date);
	int result = pstmt.executeUpdate();
	out.println("<script>alert('회원 가입이 완료되었습니다!');</script>");
	out.println("<script>window.close();</script>");
	out.println("<script>opener.location.reload();</script>");
	session.invalidate();
	}catch(Exception e){
		errorcode = 8;
		session.setAttribute("_errorcode", errorcode);
		response.sendRedirect("http://192.168.43.183:8080/SP/signup/Error.jsp");
	}
	
	
	DBconnect.close(pstmt);
	DBconnect.close(conn);

	}
%>

</body>
</html>