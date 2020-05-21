<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="Security.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="DBconn.DBconnect"%>
<%@ page import="java.security.NoSuchAlgorithmException"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%

Connection conn = DBconnect.getMySQLConnection(); // DB연결

String psql = "select * from pmember";
Statement stmt = conn.createStatement();
ResultSet rs = stmt.executeQuery(psql);

rs.next();

String Firstpw = rs.getString("passwordcbc");

rs.next();

String Secondpw = rs.getString("passwordcbc");

rs.next();

String Thirdpw = rs.getString("passwordcbc");

rs.next();

String Fourthpw = rs.getString("passwordcbc");

rs.next();

String Fifthpw = rs.getString("passwordcbc");

rs.next();

String Sixthpw = rs.getString("passwordcbc");

rs.close();

List<Block> blockchain = new ArrayList<Block>();

// First block
String[] transactions = {Firstpw};
Block firstBlock = new Block(new BlockHeader(null, transactions), transactions);
out.println("First Block Hash : " + firstBlock.getBlockHash());
System.out.println("First Block Hash : " + firstBlock.getBlockHash());
out.println("<br>");

// Second block
String[] secondTransactions = {Secondpw};
Block secondBlock = new Block(new BlockHeader(firstBlock.getBlockHash().getBytes(), secondTransactions), secondTransactions);
out.println("Second Block Hash : " + secondBlock.getBlockHash());
System.out.println("Second Block Hash : " + secondBlock.getBlockHash());
out.println("<br>");

// Third block
String[] thirdTransactions = {Thirdpw};
Block thirdBlock = new Block(new BlockHeader(secondBlock.getBlockHash().getBytes(), thirdTransactions), thirdTransactions);
out.println("Third Block Hash : " + thirdBlock.getBlockHash());
System.out.println("Third Block Hash : " + thirdBlock.getBlockHash());
out.println("<br>");

// Fourth block
String[] fourthTransactions = {Fourthpw};
Block fourthBlock = new Block(new BlockHeader(thirdBlock.getBlockHash().getBytes(), fourthTransactions), fourthTransactions);
out.println("Fourth Block Hash : " + fourthBlock.getBlockHash());
System.out.println("Fourth Block Hash : " + fourthBlock.getBlockHash());
out.println("<br>");

// Fifth block
String[] fifthTransactions = {Fifthpw};
Block fifthBlock = new Block(new BlockHeader(fourthBlock.getBlockHash().getBytes(), fifthTransactions), fifthTransactions);
out.println("Fifth Block Hash : " + fifthBlock.getBlockHash());
System.out.println("Fifth Block Hash : " + fifthBlock.getBlockHash());
out.println("<br>");

// Sixth block
String[] sixthTransactions = {Sixthpw};
Block sixthBlock = new Block(new BlockHeader(fifthBlock.getBlockHash().getBytes(), sixthTransactions), sixthTransactions);
out.println("Sixth Block Hash : " + sixthBlock.getBlockHash());
System.out.println("Sixth Block Hash : " + sixthBlock.getBlockHash());
out.println("<br>");


%>

</body>
</html>