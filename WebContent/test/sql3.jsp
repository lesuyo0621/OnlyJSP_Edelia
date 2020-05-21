<%@page import="java.util.regex.Pattern"%>
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

//특수문자 필터링을 위해 특수문자를 정의
	Pattern evilChars = Pattern.compile("['\"\\-#()@;=*/+]");
	//특수문자는 모드 공백으로 치환
	id = evilChars.matcher(id).replaceAll("");
	name = evilChars.matcher(name).replaceAll("");
	email = evilChars.matcher(email).replaceAll("");
	
	//특수 구문 필터링 
	String idlow= id.toLowerCase();
	if(idlow.contains("union") || idlow.contains("select") || idlow.contains("insert") || idlow.contains("drop") || idlow.contains("update") || idlow.contains("delete") || idlow.contains("join") || idlow.contains("from") || idlow.contains("where") || idlow.contains("substr") || idlow.contains("user_tables") || idlow.contains("user_tab_columns"))
	{
	id = idlow;
	id = id.replaceAll("union", "q-union");
	id = id.replaceAll("select", "q-select");
	id = id.replaceAll("insert", "q-insert");
	id = id.replaceAll("drop", "q-drop");
	id = id.replaceAll("update", "q-update");
	id = id.replaceAll("delete", "q-delete");
	id = id.replaceAll("and", "q-and");
	id = id.replaceAll("or", "q-or");
	id = id.replaceAll("join", "q-join");
	id = id.replaceAll("substr", "q-substr");
	id = id.replaceAll("from", "q-from");
	id = id.replaceAll("where", "q-where");
	id = id.replaceAll("declare", "q-declare");
	id = id.replaceAll("openrowset", "q-openrowset");
	id = id.replaceAll("user_tables","q-user_tables");
	id = id.replaceAll("user_tab_columns","q-user_tab_columns");
	id = id.replaceAll("table_name","q-table_name");
	id = id.replaceAll("column_name","q-column_name");
	id = id.replaceAll("row_num","q-row_num");
	}
	String namelow= name.toLowerCase();
	if(namelow.contains("union") || namelow.contains("select") || namelow.contains("insert") || namelow.contains("drop") || namelow.contains("update") || namelow.contains("delete") || namelow.contains("join") || namelow.contains("from") || namelow.contains("where") || namelow.contains("substr") || namelow.contains("user_tables") || namelow.contains("user_tab_columns"))
	{
	name = namelow;
	name = name.replaceAll("union", "q-union");
	name = name.replaceAll("select", "q-select");
	name = name.replaceAll("insert", "q-insert");
	name = name.replaceAll("drop", "q-drop");
	name = name.replaceAll("update", "q-update");
	name = name.replaceAll("delete", "q-delete");
	name = name.replaceAll("and", "q-and");
	name = name.replaceAll("or", "q-or");
	name = name.replaceAll("join", "q-join");
	name = name.replaceAll("substr", "q-substr");
	name = name.replaceAll("from", "q-from");
	name = name.replaceAll("where", "q-where");
	name = name.replaceAll("declare", "q-declare");
	name = name.replaceAll("openrowset", "q-openrowset");
	name = name.replaceAll("user_tables","q-user_tables");
	name = name.replaceAll("user_tab_columns","q-user_tab_columns");
	name = name.replaceAll("table_name","q-table_name");
	name = name.replaceAll("column_name","q-column_name");
	name = name.replaceAll("row_num","q-row_num");
	}
	String emaillow= email.toLowerCase();
	if(emaillow.contains("union") || emaillow.contains("select") || emaillow.contains("insert") || emaillow.contains("drop") || emaillow.contains("update") || emaillow.contains("delete") || emaillow.contains("join") || emaillow.contains("from") || emaillow.contains("where") || emaillow.contains("substr") || emaillow.contains("user_tables") || emaillow.contains("user_tab_columns"))
	{
	email = emaillow;
	email = email.replaceAll("union", "q-union");
	email = email.replaceAll("select", "q-select");
	email = email.replaceAll("insert", "q-insert");
	email = email.replaceAll("drop", "q-drop");
	email = email.replaceAll("update", "q-update");
	email = email.replaceAll("delete", "q-delete");
	email = email.replaceAll("and", "q-and");
	email = email.replaceAll("or", "q-or");
	email = email.replaceAll("join", "q-join");
	email = email.replaceAll("substr", "q-substr");
	email = email.replaceAll("from", "q-from");
	email = email.replaceAll("where", "q-where");
	email = email.replaceAll("declare", "q-declare");
	email = email.replaceAll("openrowset", "q-openrowset");
	email = email.replaceAll("user_tables","q-user_tables");
	email = email.replaceAll("user_tab_columns","q-user_tab_columns");
	email = email.replaceAll("table_name","q-table_name");
	email = email.replaceAll("column_name","q-column_name");
	email = email.replaceAll("row_num","q-row_num");
	}


Connection conn = DBconnect.getMySQLConnection(); // DB연결

String sql = "insert into test values('"+name+"','"+id+"','"+email+"','a')";
Statement stmt = conn.createStatement();
stmt.executeUpdate(sql);
%>

</body>
</html>