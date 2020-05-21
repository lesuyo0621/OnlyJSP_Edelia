<%@ page import="Security.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="DBconn.DBconnect"%>
<%@ page import="java.security.NoSuchAlgorithmException"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>EDELIA CAFE</title>
</head>
<body>
<%
	String cbcIVkey = "Third cbc";
	String cbcIV = "Third IV";

	String inid = request.getParameter("_id");
	String inpassword = request.getParameter("_password");

	Connection conn = DBconnect.getMySQLConnection();

	String sql = "select * from pmember where id=?";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, inid);
	ResultSet rs = pstmt.executeQuery();
	
	rs.next();
	
	try{
	int num = rs.getInt("num");
	String idrs = rs.getString("id");
	String pwrs = rs.getString("password");
	String pwshars = rs.getString("passwordsha");
	String pwcbcrs = rs.getString("passwordcbc");
	String pwblockrs = rs.getString("passwordblock");
	String phonenumberrs = rs.getString("phonenumber");
	String emailrs = rs.getString("email");
	String authorityrs = rs.getString("authority");
	String coders = rs.getString("code");
	String daters = rs.getString("date");
	
	String passwordhashst = SHA512salt.getSHA512(inpassword, phonenumberrs);
	byte[] pwCBCIV = AES.aesEncryptCbc(cbcIVkey, passwordhashst, cbcIV);
	String passwordst = AES.toHexString(pwCBCIV);
	
	List<Block> blockchain = new ArrayList<Block>();

	String[] transactions = {passwordst};
	Block genesisBlock = new Block(new BlockHeader(null, transactions), transactions);
	String pwblock = genesisBlock.getBlockHash();
	System.out.println(passwordhashst);
	System.out.println(passwordst);
	System.out.println(pwblock);
	if(!pwblockrs.equals(pwblock)){
		out.println("<script>alert('비밀번호가 다릅니다.');</script>");
		out.println("<script>window.close();</script>");
	}
	else if(pwblockrs.equals(pwblock)){
		session.setAttribute("_id", idrs);
		session.setAttribute("_phonenumber", phonenumberrs);
		session.setAttribute("_email", emailrs);
		session.setAttribute("_authority", authorityrs);
		session.setAttribute("_code", coders);
		out.println("<script>window.close();</script>");
		out.println("<script>opener.location.reload();</script>");
	}
	}catch(SQLException e){
		out.println("<script>alert('아이디가 존재하지 않습니다.');</script>");
		out.println("<script>window.close();</script>");
	}
%>
</body>
</html>