package svc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;

import vo.Review;

public class ReviewService {
	public static ArrayList<Review> getReviewList() {
		Connection conn = null;
		
		String url = "jdbc:mysql://localhost:3306/jspproject?useDB=false&serverTimezone=UTC";
		String user = "root";
		String password = "rootpw";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url, user, password);
			
			Statement stat = null;
			ResultSet rs = null;
			
			ArrayList<Review> reviewList = new ArrayList<>();
			
			String sql = "SELECT * FROM review;";
			
			stat = conn.createStatement();
			rs = stat.executeQuery(sql);
			
			while(rs.next()) {
				Review review = new Review();
				review.setReviewId(rs.getString("review_id"));
				review.setUserId(rs.getString("user_id"));
				review.setGameTitle(rs.getString("game_title"));
				review.setGameAverage(Float.parseFloat(rs.getString("game_average")));
				reviewList.add(review);
			}
			rs.close();
			stat.close();
			conn.close();
			return reviewList;
		} catch(Exception e) {
			return null;
		}
	}
	
	public static boolean setReview(String id, String title, String avg) {
		boolean userCheck = UserCheck.getIdCheck(id);
		boolean titleCheck = getTitleCheck(title);
		boolean reviewCheck = getReviewCheck(id, title);
		System.out.println(reviewCheck);

		if(!userCheck && !titleCheck && reviewCheck && !id.equals("") && id != null) {
			Connection conn = null;
			
			String url = "jdbc:mysql://localhost:3306/jspproject?useDB=false&serverTimezone=UTC";
			String user = "root";
			String password = "rootpw";
			
			try {
				Class.forName("com.mysql.jdbc.Driver");
				conn = DriverManager.getConnection(url, user, password);
				
				Statement stat = null;
				Calendar cal = Calendar.getInstance();
		        cal.setTime(new Date());
		        DateFormat df = new SimpleDateFormat("yyyyMMddhhmmss"); 
		        String Rid = df.format(cal.getTime());
		        
				String sql = "INSERT INTO review (`review_id`,`user_id`, `game_title`,`game_average`) VALUES ('" + Rid + "', '" + id + "', '" + title + "', '" + avg + "');";
				
				stat = conn.createStatement();
				stat.executeUpdate(sql);
				
				stat.close();
				conn.close();
				return true;
			} catch(Exception e) {
				return false;
			}
		} else
			return false;
	}
	
	public static boolean getTitleCheck(String title) {
			Connection conn = null;
			
			String url = "jdbc:mysql://localhost:3306/jspproject?useDB=false&serverTimezone=UTC";
			String user = "root";
			String password = "rootpw";
			
			try {
				Class.forName("com.mysql.jdbc.Driver");
				conn = DriverManager.getConnection(url, user, password);
				
				Statement stat = null;
				ResultSet rs = null;
				
				String sql = "SELECT COUNT(CASE WHEN game_title = '" + title + "' THEN 1 END) AS 'count' FROM game;";
				
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
	
	public static boolean getReviewCheck(String id, String title) {
		Connection conn = null;
		
		String url = "jdbc:mysql://localhost:3306/jspproject?useDB=false&serverTimezone=UTC";
		String user = "root";
		String password = "rootpw";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url, user, password);
			
			Statement stat = null;
			ResultSet rs = null;
			
			String sql = "SELECT COUNT(CASE WHEN game_title = '" + title + "' and user_id = '" + id + "' THEN 1 END) AS 'count' FROM review;";
			
			stat = conn.createStatement();
			rs = stat.executeQuery(sql);
			while(rs.next()) {
				if(rs.getInt("count") > 0)
					return false;
				else {
					return true;
				}
			}
		} catch(Exception e) {
			System.out.println(e.getMessage());
			return false;
		}
		return false;
	}
}

