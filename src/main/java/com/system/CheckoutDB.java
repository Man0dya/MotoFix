package com.system;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CheckoutDB {
    
	//connect DB
	private static boolean isSuccess;
    private static Connection connection = null;
    private static Statement statement = null;
    private static ResultSet rs = null;
    
    
    //Insert Data
    public static boolean insertData(String firstName,String lastName,String username,String email,String address,String country,String paymentMethod,String cardName,String cardNumber,String expiration,String cvv) {
    
       boolean isSuccess = false;
        
        try {
        	
        	//DB connection
        	connection = ConnectDB.getConnection();
        	statement = connection.createStatement();
        	
            // SQL query for inserting data
            String sql = "INSERT INTO checkout values(0,'"+firstName+"','"+lastName+"','"+username+"','"+email+"','"+address+"','"+country+"','"+paymentMethod+"','"+cardName+"','"+cardNumber+"','"+expiration+"','"+cvv+"')";
            int rs = statement.executeUpdate(sql);
            
            if(rs > 0) {
            	isSuccess = true;
            }else {
            	isSuccess = false;
            }
        
        }catch(Exception e) {
        	e.printStackTrace();
        	
        }
		
        return isSuccess;
    }
       
   
     //Retrieves checkout details by ID.
     public static List<Checkout> getById(String Id){
		
		int convertedID = Integer.parseInt(Id);
		
		ArrayList<Checkout> checkout = new ArrayList<>();
		
		try {
            // Database connection
			connection = ConnectDB.getConnection();
       	    statement = connection.createStatement();
       	
            // SQL query for selecting data by ID
           String sql = "SELECT * FROM checkout WHERE id = '"+convertedID+"'";
           rs = statement.executeQuery(sql);
           
            while(rs.next()) {
           	int id = rs.getInt(1);
           	String firstName = rs.getString(2);
           	String lastName = rs.getString(3);
           	String username = rs.getString(4);
           	String email = rs.getString(5);
           	String address = rs.getString(6);
           	String country = rs.getString(7);
           	String paymentMethod = rs.getString(8);
           	String cardName = rs.getString(9);
        	String cardNumber = rs.getString(10);
           	String expiration = rs.getString(11);
           	String cvv = rs.getString(12);
           	
            // Create a Checkout object and add it to the list
           	Checkout ck = new Checkout(id, firstName,lastName,username, email,address,country,paymentMethod,cardName,cardNumber,expiration,cvv);
           	checkout.add(ck);
           }
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return checkout;
	}
        
     
     //Retrieves all checkout records from the database.
       public static List<Checkout>getAllDetails(){
    	   
    	   ArrayList<Checkout> checkoutList= new ArrayList<>();
         
    	   try {
               // Establish database connection
   			connection = ConnectDB.getConnection();
          	 statement = connection.createStatement();
          	
             String sql = "SELECT * FROM checkout";
              rs = statement.executeQuery(sql);
              
              while(rs.next()) {
              	int id = rs.getInt(1);
              	String firstName = rs.getString(2);
              	String lastName = rs.getString(3);
              	String username = rs.getString(4);
              	String email = rs.getString(5);
              	String address = rs.getString(6);
              	String country = rs.getString(7);
              	String paymentMethod = rs.getString(8);
              	String cardName = rs.getString(9);
           	    String cardNumber = rs.getString(10);
              	String expiration = rs.getString(11);
              	String cvv = rs.getString(12);
              	
                // Create a Checkout object and add it to the list
              	Checkout ck = new Checkout(id, firstName,lastName,username, email,address,country,paymentMethod,cardName,cardNumber,expiration,cvv);
              	checkoutList.add(ck);
              }
   			
   		}catch (Exception e) {
   			e.printStackTrace();
   		}
   		
   		return checkoutList;
       }
     
       
       // Updates an existing checkout record in the database.
       public static boolean updateData(String id,String firstName,String lastName,String username,String email,String address,String country,String paymentMethod,String cardName,String cardNumber,String expiration,String cvv) {
    	   
    	   try {
               // Establish database connection
           	connection = ConnectDB.getConnection();
           	statement = connection.createStatement();
           	
            // SQL query for updating data
               String sql = "update checkout set firstName ='"+firstName+"',lastName='"+lastName+"',username='"+username+"',email='"+email+"',address='"+address+"',country='"+country+"',paymentMethod='"+paymentMethod+"',cardName='"+cardName+"',cardNumber='"+cardNumber+"',expiration='"+expiration+"',cvv='"+cvv+"' where id='"+id+"'";
               int rs = statement.executeUpdate(sql);
               
               // Check if the update was successful
               if(rs > 0) {
               	isSuccess = true;
               }else {
               	isSuccess = false;
               }
           
           }catch(Exception e) {
           	e.printStackTrace();
           	
           }
   		
           return isSuccess;
       }
       
       
       // Deletes a checkout record from the database by ID.
       public static boolean deleteData(String id) {
    	   
    	   int convID = Integer.parseInt(id);
    	   
    	   try {
               // Establish database connection
           	connection = ConnectDB.getConnection();
           	statement = connection.createStatement();
           	
            // SQL query for deleting data
               String sql = "delete from checkout where id='"+convID+"'";
               int rs = statement.executeUpdate(sql);
               
               // Check if the deletion was successful
               if(rs > 0) {
               	isSuccess = true;
               }else {
               	isSuccess = false;
               }
           
           }catch(Exception e) {
           	e.printStackTrace();
           	
           }
   		
           return isSuccess;
       }
}
