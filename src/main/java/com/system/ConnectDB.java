
//Database Connection

package com.system;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectDB {
	
	private static String jdbcURL = "jdbc:mysql://localhost:3306/VSMS";
	private static String jdbcUsername = "root";
	private static String jdbcPassword = "!M@data77";
	private static Connection connection;
	
	public static Connection getConnection() {
		
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver"); 
			
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
			
		}catch(Exception e) {
			System.out.println("Database connection is not success");	
		}
		
		return connection;
	}

}
