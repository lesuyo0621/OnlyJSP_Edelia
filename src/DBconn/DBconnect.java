package DBconn;
	
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.PreparedStatement;

import com.mysql.jdbc.*;

public class DBconnect {
	
	public static Connection getMySQLConnection() {
		
		Connection conn = null;
		String ip = "localhost";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = ("jdbc:mysql://"+ip+":3306/projectdb?useUnicode=true&characterEncoding=EUC-KR");
			String user = "root";
			String password = "12341234";
			try {
				conn = DriverManager.getConnection(url, user, password);
			} catch (SQLException e) {
				System.out.println("Mysql url,아이디, 비밀번호가 일치하지 않습니다.\n");
				e.printStackTrace();
			}
		} catch (ClassNotFoundException e) {
			System.out.println("Mysql 드라이버가 없습니다.\n");
			e.printStackTrace();
		}
		return conn;
	}
	
	public static void close(Connection conn) {
		if(conn != null) {try 
			{conn.close();}
		catch (SQLException e) {
			e.printStackTrace();
		}}
	}
	
	public static void close(Statement stmt) {
		if(stmt != null) {try
			{stmt.close();}
		catch (SQLException e) {
			e.printStackTrace();
		}}
	}
	
	public static void close(PreparedStatement pstmt) {
		if(pstmt != null) {try
			{pstmt.close();}
			catch (SQLException e) {
			e.printStackTrace();
		}}
	}
	
	public static void close(ResultSet rs) {
		if(rs != null) {try 
			{rs.close();}
			catch (SQLException e) {
			e.printStackTrace();
		}}
	}

}
