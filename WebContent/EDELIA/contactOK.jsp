<%@page import="DBconn.DBconnect"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("EUC-KR");
	String id = request.getParameter("_id");
	String email = request.getParameter("_email");
	String contactmemo = request.getParameter("_contactmemo");
	
	Connection conn = DBconnect.getMySQLConnection();
	
	String sql = "insert into contact (id, email, contactmemo) values (?, ?, ?)";
	PreparedStatement pstmt = conn.prepareStatement(sql);

	pstmt.setString(1, id);
	pstmt.setString(2, email);
	pstmt.setString(3, contactmemo);
	
	pstmt.executeUpdate();
	
	out.println("<script>alert('전송 완료.');</script>");
%>
<script>
location.href="contact.jsp";
</script>
</body>
</html>