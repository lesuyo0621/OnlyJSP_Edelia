<%@page import="java.util.regex.Pattern"%>
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
	Date d = new Date();
	int datenum = d.getDate();
	int monthnum = (d.getMonth()+1);
	int yearnum = (d.getYear()+1900);
%>

<%

	request.setCharacterEncoding("EUC-KR");
	String cbcIVkey = "Third cbc";
	String cbcIV = "Third IV";
	String id = request.getParameter("_id");
	String name = request.getParameter("_username");
	String password = request.getParameter("_password");
	String password2 = request.getParameter("_password2");
	String phonenumber = request.getParameter("_phonenumber");
	String email = request.getParameter("_email");
	String authority = request.getParameter("_authoritynum");
	String code = request.getParameter("_code");
	String date = (yearnum+"년"+monthnum+"월"+datenum+"일");
	int errorcode=0;
	

	//특수문자 필터링을 위해 특수문자를 정의
	Pattern evilChars = Pattern.compile("['\"\\-#()@;=*/+]");
	//특수문자는 모드 공백으로 치환
	password = evilChars.matcher(password).replaceAll("");
	id = evilChars.matcher(id).replaceAll("");
	name = evilChars.matcher(name).replaceAll("");
	password2 = evilChars.matcher(password2).replaceAll("");
	phonenumber = evilChars.matcher(phonenumber).replaceAll("");
	
	//특수 구문 필터링 
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
	String password2low= password2.toLowerCase();
	if(password2low.contains("union") || password2low.contains("select") || password2low.contains("insert") || password2low.contains("drop") || password2low.contains("update") || password2low.contains("delete") || password2low.contains("join") || password2low.contains("from") || password2low.contains("where") || password2low.contains("substr") || password2low.contains("user_tables") || password2low.contains("user_tab_columns"))
	{
	password2 = password2low;
	password2 = password2.replaceAll("union", "q-union");
	password2 = password2.replaceAll("select", "q-select");
	password2 = password2.replaceAll("insert", "q-insert");
	password2 = password2.replaceAll("drop", "q-drop");
	password2 = password2.replaceAll("update", "q-update");
	password2 = password2.replaceAll("delete", "q-delete");
	password2 = password2.replaceAll("and", "q-and");
	password2 = password2.replaceAll("or", "q-or");
	password2 = password2.replaceAll("join", "q-join");
	password2 = password2.replaceAll("substr", "q-substr");
	password2 = password2.replaceAll("from", "q-from");
	password2 = password2.replaceAll("where", "q-where");
	password2 = password2.replaceAll("declare", "q-declare");
	password2 = password2.replaceAll("openrowset", "q-openrowset");
	password2 = password2.replaceAll("user_tables","q-user_tables");
	password2 = password2.replaceAll("user_tab_columns","q-user_tab_columns");
	password2 = password2.replaceAll("table_name","q-table_name");
	password2 = password2.replaceAll("column_name","q-column_name");
	password2 = password2.replaceAll("row_num","q-row_num");
	}
	String phonenumberlow= phonenumber.toLowerCase();
	if(phonenumberlow.contains("union") || phonenumberlow.contains("select") || phonenumberlow.contains("insert") || phonenumberlow.contains("drop") || phonenumberlow.contains("update") || phonenumberlow.contains("delete") || phonenumberlow.contains("join") || phonenumberlow.contains("from") || phonenumberlow.contains("where") || phonenumberlow.contains("substr") || phonenumberlow.contains("user_tables") || phonenumberlow.contains("user_tab_columns"))
	{
	phonenumber = phonenumberlow;
	phonenumber = phonenumber.replaceAll("union", "q-union");
	phonenumber = phonenumber.replaceAll("select", "q-select");
	phonenumber = phonenumber.replaceAll("insert", "q-insert");
	phonenumber = phonenumber.replaceAll("drop", "q-drop");
	phonenumber = phonenumber.replaceAll("update", "q-update");
	phonenumber = phonenumber.replaceAll("delete", "q-delete");
	phonenumber = phonenumber.replaceAll("and", "q-and");
	phonenumber = phonenumber.replaceAll("or", "q-or");
	phonenumber = phonenumber.replaceAll("join", "q-join");
	phonenumber = phonenumber.replaceAll("substr", "q-substr");
	phonenumber = phonenumber.replaceAll("from", "q-from");
	phonenumber = phonenumber.replaceAll("where", "q-where");
	phonenumber = phonenumber.replaceAll("declare", "q-declare");
	phonenumber = phonenumber.replaceAll("openrowset", "q-openrowset");
	phonenumber = phonenumber.replaceAll("user_tables","q-user_tables");
	phonenumber = phonenumber.replaceAll("user_tab_columns","q-user_tab_columns");
	phonenumber = phonenumber.replaceAll("table_name","q-table_name");
	phonenumber = phonenumber.replaceAll("column_name","q-column_name");
	phonenumber = phonenumber.replaceAll("row_num","q-row_num");
	}
	
	if(id.equals("")) {id = null; errorcode=1;}
	else if(name.equals("")) {name = null; errorcode=2;}
	else if(password.equals("")) {password = null; errorcode=3;}
	else if(password2.equals("")) {password2 = null; errorcode=4;}
	else if(phonenumber.equals("")) {phonenumber = null; errorcode=6;}
	else if(email.equals("")) {email = null; errorcode=7;}
	else if(code.equals("")){code = null; errorcode=9;}
	else if(id!=null && name!=null && password!=null && password2!=null && phonenumber!=null && email!=null && !password.equals(password2)) {errorcode=5;}

	String state = "1";
	session.setAttribute("_state", state);
	session.setAttribute("_id", id);
	session.setAttribute("_username", name);
	session.setAttribute("_password", password);
	session.setAttribute("_password2", password2);
	session.setAttribute("_phonenumber", phonenumber);
	session.setAttribute("_email", email);
	session.setAttribute("_authoritynum", authority);
	session.setAttribute("_errorcode", errorcode);
	
	switch(errorcode)
	{
	case 0:
		break;
	case 1:
		out.println("<script>alert('아이디를 입력하여 주세요.');</script>");
		out.println("<script>location.href='signup.jsp';</script>");
		break;
	case 2:
		out.println("<script>alert('이름을 입력하여 주세요.');</script>");
		out.println("<script>location.href='signup.jsp';</script>");
		break;
	case 3:
		out.println("<script>alert('패스워드를 입력하여 주세요.');</script>");
		out.println("<script>location.href='signup.jsp';</script>");
		break;
	case 4:
		out.println("<script>alert('패스워드 확인란을 입력하여 주세요.');</script>");
		out.println("<script>location.href='signup.jsp';</script>");
		break;
	case 5:
		out.println("<script>alert('패스워드가 일치하지 않습니다.');</script>");
		out.println("<script>location.href='signup.jsp';</script>");
		break;
	case 6:
		out.println("<script>alert('연락처를 입력하여 주세요.');</script>");
		out.println("<script>location.href='signup.jsp';</script>");
		break;
	case 7:
		out.println("<script>alert('이메일을 입력하여 주세요.');</script>");
		out.println("<script>location.href='signup.jsp';</script>");
		break;
	}
	
	if(errorcode==0){
	String pwSHA512salt = SHA512salt.getSHA512(password, phonenumber);
	byte[] pwCBCIV = AES.aesEncryptCbc(cbcIVkey, pwSHA512salt, cbcIV);
	String pwCBCIVhex = AES.toHexString(pwCBCIV);
	
	Connection conn = DBconnect.getMySQLConnection(); // DB연결
	
	String psql = "select * from pmember";
	Statement stmt = conn.createStatement();
	ResultSet rs = stmt.executeQuery(psql);
	
	if(rs.last()){
		int lastnum = rs.getInt("num");
		String rspasswordcbc = rs.getString("passwordcbc");
	
		List<Block> blockchain = new ArrayList<Block>();

		String[] transactions = {rspasswordcbc};
		Block genesisBlock = new Block(new BlockHeader(null, transactions), transactions);
		
		String[] secondTransactions = {pwCBCIVhex};
		Block secondBlock = new Block(new BlockHeader(genesisBlock.getBlockHash().getBytes(), secondTransactions), secondTransactions);
		String pwBlock = secondBlock.getBlockHash();
		
		String sql = "insert into pmember(id, password, passwordsha, passwordcbc, passwordblock, phonenumber, email, authority, code, date) values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);

		try{
			pstmt.setString(1, id);
			pstmt.setString(2, password);
			pstmt.setString(3, pwSHA512salt);
			pstmt.setString(4, pwCBCIVhex);
			pstmt.setString(5, pwBlock);
			pstmt.setString(6, phonenumber);
			pstmt.setString(7, email);
			pstmt.setString(8, authority);
			pstmt.setString(9, code);
			pstmt.setString(10, date);
			int result = pstmt.executeUpdate();
			out.println("<script>alert('회원 가입이 완료되었습니다!');</script>");
			out.println("<script>window.close();</script>");
			out.println("<script>opener.location.reload();</script>");
			session.invalidate();
			}catch(Exception e){
				errorcode = 8;
				session.setAttribute("_errorcode", errorcode);
				response.sendRedirect("http://192.168.43.183:8080/SP/signup/Error.jsp");
			}
		DBconnect.close(pstmt);
		DBconnect.close(conn);
	}else{
		String[] transactions = {pwCBCIVhex};
		Block genesisBlock = new Block(new BlockHeader(null, transactions), transactions);
		String pwBlock = genesisBlock.getBlockHash();

		String sql = "insert into pmember(id, password, passwordsha, passwordcbc, passwordblock, phonenumber, email, authority, code, date) values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);

		try{
			pstmt.setString(1, id);
			pstmt.setString(2, password);
			pstmt.setString(3, pwSHA512salt);
			pstmt.setString(4, pwCBCIVhex);
			pstmt.setString(5, pwBlock);
			pstmt.setString(6, phonenumber);
			pstmt.setString(7, email);
			pstmt.setString(8, authority);
			pstmt.setString(9, code);
			pstmt.setString(10, date);
			int result = pstmt.executeUpdate();
			out.println("<script>alert('회원 가입이 완료되었습니다!');</script>");
			out.println("<script>window.close();</script>");
			out.println("<script>opener.location.reload();</script>");
			session.invalidate();
			}catch(Exception e){
				errorcode = 8;
				session.setAttribute("_errorcode", errorcode);
				response.sendRedirect("http://192.168.43.183:8080/SP/signup/Error.jsp");
			}
		DBconnect.close(pstmt);
		DBconnect.close(conn);
	}
	
	}
%>

</body>
</html>