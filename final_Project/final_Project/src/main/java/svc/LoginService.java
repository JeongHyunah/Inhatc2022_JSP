package svc;

import java.sql.*;
import vo.Member;

public class LoginService {
	public static Member getLoginMember(String id, String pw) {
		Connection conn = null;
		
		String url = "jdbc:mysql://localhost:3306/jspproject?useDB=false&serverTimezone=UTC";
		String user = "root";
		String password = "rootpw";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url, user, password);
			
			Statement stat = null;
			ResultSet rs = null;
			
			String sql = "SELECT * FROM user WHERE user_id = '" + id + "' AND user_pw = '" + pw + "';";
			
			stat = conn.createStatement();
			rs = stat.executeQuery(sql);
			while(rs.next()) {
				Member member = new Member();
				member.setId(rs.getString("user_id"));
				member.setPasswd(rs.getString("user_pw"));
				return member;
			}
			rs.close();
			stat.close();
			conn.close();
		} catch(Exception e) {
			return null;
		}
		return null;
	}
}
