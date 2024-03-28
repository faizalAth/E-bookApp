package com.db;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {

	private static Connection conn;
//	public static void main(String[] args) {
//		DBConnection.getConnection();
//		System.out.println(conn);
//	}
	public static Connection getConnection() {
		try {
			
			if(conn == null) {
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/test", "root","");
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return conn;
	}
}
