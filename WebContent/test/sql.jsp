<%@page import="java.util.regex.Pattern"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%

String password = "123213' or '1' ='1', @@@'123";

//특수문자 필터링을 위해 특수문자를 정의
Pattern evilChars = Pattern.compile("['\"\\-#()@;=*/+]");
//특수문자는 모드 공백으로 치환
password = evilChars.matcher(password).replaceAll("");

//특수 구문 필터링 (데이터베이스가 Oracle 인 경우)
String passwordlow= password.toLowerCase();
if(passwordlow.contains("union") || passwordlow.contains("select") || passwordlow.contains("insert") || passwordlow.contains("drop") || passwordlow.contains("update") || passwordlow.contains("delete") || passwordlow.contains("join") || passwordlow.contains("from") || passwordlow.contains("where") || passwordlow.contains("substr") || passwordlow.contains("user_tables") || passwordlow.contains("user_tab_columns"))
{
password = passwordlow;
password = password.replaceAll("union", "q-union");
password = password.replaceAll("select", "q-select");
password = password.replaceAll("insert", "q-insert");
password = password.replaceAll("drop", "q-drop");
password = password.replaceAll("update", "q-update");
password = password.replaceAll("delete", "q-delete");
password = password.replaceAll("and", "q-and");
password = password.replaceAll("or", "q-or");
password = password.replaceAll("join", "q-join");
password = password.replaceAll("substr", "q-substr");
password = password.replaceAll("from", "q-from");
password = password.replaceAll("where", "q-where");
password = password.replaceAll("declare", "q-declare");
password = password.replaceAll("openrowset", "q-openrowset");
password = password.replaceAll("user_tables","q-user_tables");
password = password.replaceAll("user_tab_columns","q-user_tab_columns");
password = password.replaceAll("table_name","q-table_name");
password = password.replaceAll("column_name","q-column_name");
password = password.replaceAll("row_num","q-row_num");
}

out.println(password);
%>
</body>
</html>