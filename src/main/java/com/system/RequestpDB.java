package com.system;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class RequestpDB {
	
	// Database connection, statement, and result set objects
	private static Connection connection = null;
    private static Statement statement = null;
    private static ResultSet rs = null;
    
    //Retrieves all request records from the 'requestp' table.
    public static List<Requestp> getAllRequestps(){
    	
    	List<Requestp> requestpList = new ArrayList<>();
    	
    	try {
    		// Establishing the database connection
    		connection = ConnectDB.getConnection();
    		statement = connection.createStatement();
    		
    		// SQL query to select all rows from the 'requestp' table
    		String sql = "SELECT * FROM requestp";
    		rs = statement.executeQuery(sql);
    		
    		while(rs.next()) {
    			// Loop through the result set and create Requestp objects
    			int id = rs.getInt("id");
                String email = rs.getString("email");
                String product = rs.getString("product");
                int quantity = rs.getInt("quantity");
                
                Requestp requestp = new Requestp(id, email, product, quantity);
    			requestpList.add(requestp);
    		}
    		
    	}catch(Exception e) {
    		e.printStackTrace();
    	}
    	return requestpList;// Return the list of Requestp objects
    }
    
    // Inserts a new request into the 'requestp' table.
    public static boolean addRequestp(Requestp requestp) {
    	boolean success = false;
    	
    	try {
    		connection = ConnectDB.getConnection();
    		String sql = "INSERT INTO requestp(email,product,quantity) VALUES(?,?,?)";
    		PreparedStatement ps = connection.prepareStatement(sql);
    		
    		ps.setString(1, requestp.getEmail());
    		ps.setString(2, requestp.getProduct());
    		ps.setInt(3, requestp.getQuantity());
    		
    		int rowsaffected = ps.executeUpdate();
    		success = rowsaffected>0;
    		
    	}catch (Exception e) {
    		e.printStackTrace();
		}
    	return success;
    }
    
    //Updates an existing request in the 'requestp' table.
    public static boolean updateRequestp(Requestp requestp) {
    	boolean success = false;
    	
    	try {
    		connection = ConnectDB.getConnection();
    		
    		String sql = "UPDATE requestp SET email = ?, product = ?, quantity = ? WHERE id = ?";
    		PreparedStatement ps = connection.prepareStatement(sql);
    		
    		ps.setString(1, requestp.getEmail());
    		ps.setString(2, requestp.getProduct());
    		ps.setInt(3, requestp.getQuantity());
    		ps.setInt(4, requestp.getId());
    		
    		int rowsAffected = ps.executeUpdate();
    		success = rowsAffected > 0;
    			
    	}catch (Exception e) {
    		e.printStackTrace();
		}
    	
    	return success;
    }
    
    //Deletes a request from the 'requestp' table by its ID.
    public static boolean deleteRequestp(int id) {
    	boolean success = false;
    	
    	try {
    		connection = ConnectDB.getConnection();
    		String sql = "DELETE FROM requestp WHERE id = ?";
    		PreparedStatement ps = connection.prepareStatement(sql);
    		ps.setInt(1, id);
    		
    		int rowsAffected = ps.executeUpdate();
    		success = rowsAffected > 0;
    		
    	}catch (Exception e) {
			e.printStackTrace();
		}
    	return success;
    }   
    
    //Retrieves a specific request by its ID from the 'requestp' table.
    public static Requestp getRequestpById(int id) {
    	Requestp requestp = null;
        
        try {
            connection = ConnectDB.getConnection();
            String sql = "SELECT * FROM requestp WHERE id = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            
            if (rs.next()) {
                String email = rs.getString("email");
                String product = rs.getString("product");
                int quantity = rs.getInt("quantity");
                
                requestp = new Requestp(id, email, product, quantity);
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return requestp;
    }
    
    // Retrieves all available requests from the 'requestp' table.
    public static List<Requestp> getAllAvailableRequestps() {
        List<Requestp> showrequestpList = new ArrayList<>();
        
        try {
            connection = ConnectDB.getConnection();
            
            String sql = "SELECT * FROM requestp";
            PreparedStatement ps = connection.prepareStatement(sql);
            
            rs = ps.executeQuery();
            
            while (rs.next()) {
                int id = rs.getInt("id");
                String email = rs.getString("email");
                String product = rs.getString("description");
                int quantity = rs.getInt("quantity");
                
                Requestp showrequestp = new Requestp(id, email, product, quantity);
                showrequestpList.add(showrequestp);
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
       
        return showrequestpList;
    }
    
    // Retrieves all requests from the 'requestp' table.
    public static List<Requestp> getAllRequests() {
        List<Requestp> requestList = new ArrayList<>();
        
        try {
            connection = ConnectDB.getConnection();
            String sql = "SELECT * FROM requestp";  // Adjust the table name if necessary
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery(sql);
            
            while (rs.next()) {
                int id = rs.getInt("id");
                String email = rs.getString("email");
                String product = rs.getString("product");
                int quantity = rs.getInt("quantity");
                
                Requestp request = new Requestp(id, email, product, quantity);
                requestList.add(request);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return requestList;
    }

    
}
