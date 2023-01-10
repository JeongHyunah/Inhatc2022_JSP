package svc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class UserCheck {
	public boolean getPwCheck(String pw, String pwCheck) {
		if(pw.equals(pwCheck) && !pw.equals("") && !pwCheck.equals(""))
			return true;
		else 
			return false;
	}
	
	public static boolean getIdCheck(String id) {
		if(id != null && !id.equals("")) {
			Connection conn = null;
			
			String url = "jdbc:mysql://localhost:3306/jspproject?useDB=false&serverTimezone=UTC";
			String user = "root";
			String password = "rootpw";
			
			try {
				Class.forName("com.mysql.jdbc.Driver");
				conn = DriverManager.getConnection(url, user, password);
				
				Statement stat = null;
				ResultSet rs = null;
				
				String sql = "SELECT COUNT(CASE WHEN user_id = '" + id + "' THEN 1 END) AS 'count' FROM user;";
				
				stat = conn.createStatement();
				rs = stat.executeQuery(sql);
				while(rs.next()) {
					if(rs.getInt("count") > 0)
						return false;
					else
						return true;
				}
			} catch(Exception e) {
				return false;
			}
			return false;
		}
		else
			return false;
	}
	
	public boolean Signup(String id, String pw, String pwCheck) {
		if(getPwCheck(pw, pwCheck) && getIdCheck(id)) {
			Connection conn = null;
			
			String url = "jdbc:mysql://localhost:3306/jspproject?useDB=false&serverTimezone=UTC";
			String user = "root";
			String password = "rootpw";
			
			try {
				Class.forName("com.mysql.jdbc.Driver");
				conn = DriverManager.getConnection(url, user, password);
				
				Statement stat = null;
				
				String sql = "INSERT INTO user (`user_id`, `user_pw`) VALUES ('" + id + "', '" + pw + "');";
				
				stat = conn.createStatement();
				stat.executeUpdate(sql);
				
				stat.close();
				conn.close();
				return true;
			} catch(Exception e) {
				
			}
			return false;
		} else
			return false;
	}
}
