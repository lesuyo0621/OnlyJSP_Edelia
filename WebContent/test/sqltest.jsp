<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="DBconn.DBconnect"%>
<%@page import="java.sql.*" %>
<%@ page import="Security.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.security.NoSuchAlgorithmException"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%

String cbcIVkey = "Third cbc";
String cbcIV = "Third IV";

String name = request.getParameter("_name");
String id = request.getParameter("_id");
String email = request.getParameter("_email");
String test = request.getParameter("_test");

String pwSHA512salt = SHA512salt.getSHA512(id, email);
byte[] pwCBCIV = AES.aesEncryptCbc(cbcIVkey, pwSHA512salt, cbcIV);
String pwCBCIVhex = AES.toHexString(pwCBCIV);

Connection conn = DBconnect.getMySQLConnection(); // DB연결
String psql = "select * from pmember";
Statement stmt = conn.createStatement();
ResultSet rs = stmt.executeQuery(psql);

if(rs.last()){
	int lastnum = rs.getInt("num");
	String rspasswordcbc = rs.getString("passwordcbc");
	out.println(lastnum+"<br>");
	
	List<Block> blockchain = new ArrayList<Block>();

	String[] transactions = {rspasswordcbc};
	Block genesisBlock = new Block(new BlockHeader(null, transactions), transactions);
	out.println("Block Hash : " + genesisBlock.getBlockHash());
	out.println("<br>");
	
	String[] secondTransactions = {pwCBCIVhex};
	Block secondBlock = new Block(new BlockHeader(genesisBlock.getBlockHash().getBytes(), secondTransactions), secondTransactions);
	out.println("Second Block Hash : " + secondBlock.getBlockHash());
	
}else{
	out.println("행 없음");
}





%>

</body>
</html>