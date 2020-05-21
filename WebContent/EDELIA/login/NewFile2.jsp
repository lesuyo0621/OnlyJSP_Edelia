<%@page import="Email.emailSMTP"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>

<%
	String number = request.getParameter("number");
	out.println(number);
%>

<body>
<%
	String result = "2";
	if (result == "1" ){%>
		<script type="text/javascript">
			window.onload=function(){
				alert("ccc");
			}
		</script>
<% }

%>
	 





</body>
</html>