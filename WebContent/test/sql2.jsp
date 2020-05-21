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
String name = request.getParameter("_name");
String id = request.getParameter("_id");
String email = request.getParameter("_email");

Connection conn = DBconnect.getMySQLConnection(); // DB연결

String sql = "insert into test values('"+name+"','"+id+"','"+email+"')";
Statement stmt = conn.createStatement();
stmt.executeUpdate(sql);
%>
</body>
</html>