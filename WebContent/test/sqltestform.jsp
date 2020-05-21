<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>SQL Injection 테스트</h1>
<form action="sql3.jsp" method="post">
	이름 : <input type="text" name="_name"><p>
	ID : <input type="text" name="_id"><p>
	이메일 : <input type="text" name="_email"><p>
	<input type="submit" value="보내기">
</form>
</body>
</html>