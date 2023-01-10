package db;

import java.sql.*;

public class connectDB {
	public void connetDB() {
		Connection conn = null;
		
		String url = "jdbc:mysql://localhost:3306/jspproject?useDB=false&serverTimezone=UTC";
		String user = "root";
		String password = "rootpw";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url, user, password);
		} catch(Exception e) {
			
		}
	}
}
