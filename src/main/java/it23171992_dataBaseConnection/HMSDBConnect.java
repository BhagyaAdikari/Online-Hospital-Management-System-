package it23171992_dataBaseConnection;

import java.sql.Connection;
import java.sql.DriverManager;

public class HMSDBConnect {
	private static String url = "jdbc:mysql://localhost:3306/hms?useSSL=false";
	private static String userName = "root";
	private static String password = "Chath@2001";
	
	private static Connection con;
	
	public static Connection getConnection() {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url,userName,password);
		}
		catch(Exception e) {
			System.out.println("Connection is not success");
		}
		
		return con;
		
	}
}
