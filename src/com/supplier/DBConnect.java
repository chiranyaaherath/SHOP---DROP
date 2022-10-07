package com.supplier;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	private static String url = "jdbc:mysql://localhost:3306/shopdrop";
	private static String userName = "root";
	private static String password = "1234dinu";
	private static Connection cn;
	
	public static Connection getConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			cn = DriverManager.getConnection(url,userName,password);
		}
		
		catch(Exception e) {
			System.out.println("Failed to connect with database");
			
		}
		return cn;
	}
}
