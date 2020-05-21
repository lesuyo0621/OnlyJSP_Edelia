<%@page import="java.util.Date"%>
<%@page import="java.sql.SQLException"%>
<%@page import="com.mysql.jdbc.*"%>
<%@page import="DBconn.DBconnect"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="Security.AES"%>
<%@page import="Security.SHA512salt"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>FoodSurfing_Login</title>
</head>
<body>
<%

	String ecbkey = "first ecb";
	String cbckey = "Second cbc";
	String cbcIVkey = "Third cbc";
	String cbcIV = "Third IV";

	String inid = request.getParameter("_id");
	String inpassword = request.getParameter("_password");

	Connection conn = DBconnect.getMySQLConnection();

	String sql = "select * from member where id=?";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, inid);
	ResultSet rs = pstmt.executeQuery();
	
	rs.next();
	
	try{
	String idrs = rs.getString("id");
	String passwordrs = rs.getString("password");
	String namers = rs.getString("name");
	String phonenumberrs = rs.getString("phonenumber");
	String emailrs = rs.getString("email");
	String authorityrs = rs.getString("authority");
	String coders = rs.getString("code");
	String passwordhashrs = rs.getString("passwordhash");
	String daters = rs.getString("date");
	
	byte[] pwECB = AES.aesEncryptEcb(ecbkey, inpassword);
	byte[] pwECB_CBC = AES.aesEncryptCbc(cbckey, AES.toHexString(pwECB));
	byte[] pwECB_CBC_CBCIV = AES.aesEncryptCbc(cbcIVkey, AES.toHexString(pwECB_CBC), cbcIV);
	
	String passwordhashst = SHA512salt.getSHA512(inpassword, phonenumberrs);
	
	String passwordst = AES.toHexString(pwECB_CBC_CBCIV);
	
	if(!passwordrs.equals(passwordst) || !passwordhashst.equals(passwordhashrs) ){
		response.sendRedirect("http://192.168.43.183:8080/SP/login/loginError.jsp?_errorcode=2");
	}
	else if(passwordrs.equals(passwordst) && passwordhashst.equals(passwordhashrs)){
		session.setAttribute("_username", namers);
		session.setAttribute("_id", idrs);
		session.setAttribute("_phonenumber", phonenumberrs);
		session.setAttribute("_email", emailrs);
		session.setAttribute("_authority", authorityrs);
		session.setAttribute("_code", coders);
		response.sendRedirect("http://192.168.43.183:8080/SP/MainPage/index.jsp");
	}
	}catch(SQLException e){
		response.sendRedirect("http://192.168.43.183:8080/SP/login/loginError.jsp?_errorcode=1");
	}
%>
</body>
</html>