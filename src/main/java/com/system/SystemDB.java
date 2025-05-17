package com.system;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class SystemDB {
	
	private static boolean isSuccess;
    private static Connection connection = null;
    private static Statement statement = null;
    private static ResultSet rs = null;

    
    //Validates customer login credentials.
    public static List<Customer> validateCustomer(String username, String password) {
    	
        ArrayList<Customer> customer = new ArrayList<>();

        try {
            Connection connection = ConnectDB.getConnection();
            Statement statement = connection.createStatement();
            String sql = "SELECT * FROM customer WHERE username = '"+username+"' AND password = '"+password+"'";
            ResultSet rs = statement.executeQuery(sql);

            if (rs.next()) {
                int id = rs.getInt(1);
                String name = rs.getString(2);
                String email = rs.getString(3);
                String uname = rs.getString(4);
                String pword = rs.getString(5);
                
                Customer c = new Customer(id, name, email, uname, pword);
                customer.add(c);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return customer;
    }    

    //Validates admin login credentials.
    public static List<Admin> validateAdmin(String username, String password) {
    	 
    	ArrayList<Admin> admin = new ArrayList<>();

         try {
             Connection connection = ConnectDB.getConnection();
             Statement statement = connection.createStatement();
             String sql = "SELECT * FROM admin WHERE username = '"+username+"' AND password = '"+password+"'";
             ResultSet rs = statement.executeQuery(sql);

             if (rs.next()) {
                 int id = rs.getInt(1);
                 String name = rs.getString(2);
                 String email = rs.getString(3);
                 String uname = rs.getString(4);
                 String pword = rs.getString(5);

                 Admin a = new Admin(id, name, email, uname, pword);
                 admin.add(a);
             }
         } catch (Exception e) {
             e.printStackTrace();
         }
         return admin;
     }    

    //Updates customer information.
	public static boolean updatecustomer(String id, String name, String email,String username,String password) {
		
		try {
			connection = ConnectDB.getConnection();
        	statement = connection.createStatement();
        	
        	String sql = "UPDATE customer SET name = '"+name+"', email = '"+email+"', username = '"+username+"', password = '"+password+"' WHERE id = '"+id+"'";
            int rs = statement.executeUpdate(sql);
            
            if(rs > 0) {
            	isSuccess = true;
            }else {
            	isSuccess = false;
            }
        	
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	//Retrieves customer details by ID.
	public static List<Customer> getCustomerDetails(String Id){
		
		int convertedID = Integer.parseInt(Id);
		
		ArrayList<Customer> customer = new ArrayList<Customer>();
		
		try {
			connection = ConnectDB.getConnection();
        	statement = connection.createStatement();
        	
        	String sql = "SELECT*FROM customer WHERE id = '"+convertedID+"'";
            rs = statement.executeQuery(sql);
            
            while(rs.next()) {
            	int id = rs.getInt(1);
            	String name = rs.getString(2);
            	String email = rs.getString(3);
            	String username = rs.getString(4);
            	String password = rs.getString(5);
            	
            	Customer cus = new Customer(id, name, email, username, password);
            	customer.add(cus);
            }
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return customer;
	}
	
	//Deletes a customer from the database.
	public static boolean deleteCustomer(String id) {
		
		int convertedID = Integer.parseInt(id);
		try {
			
			connection = ConnectDB.getConnection();
	    	statement = connection.createStatement();
	    	
	    	String sql = "DELETE FROM customer WHERE id = '"+convertedID+"'";
	    	int rs = statement.executeUpdate(sql);
	    	
	    	if(rs > 0) {
	            isSuccess = true;
	        }else {
	            isSuccess = false;
	        }
	    	
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	//Inserts a contact us message into the database.
	public static boolean InsertContacUs(String name,String email, String subject, String message) {
		
		boolean isSuccess = false;
        
        try {
        	connection = ConnectDB.getConnection();
        	statement = connection.createStatement();
        	
            String sql = "INSERT INTO contactus values(0,'"+name+"','"+email+"','"+subject+"','"+message+"')";
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
	
	//Retrieves all contact us messages for a specific user.
	public static List<ContactUs> GetContactUs(String username){
		
		ArrayList<ContactUs> contactMessages = new ArrayList<ContactUs>();
		
		try {
			
			connection = ConnectDB.getConnection();
        	statement = connection.createStatement();
        	
        	String sql = "SELECT * FROM contactus WHERE username = '" +username+ "'";
            rs = statement.executeQuery(sql);
        	
        	while(rs.next()) {
        		int id = rs.getInt(1);
                String name = rs.getString(2);
                String email = rs.getString(3);
                String subject = rs.getString(4);
                String message = rs.getString(5);
                
                ContactUs contact = new ContactUs(id, name, email, subject, message);
                contactMessages.add(contact);
        	}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return contactMessages;
	}

	//Creates a new account in the customer table.
	public static boolean CreateAccount(String name, String email, String username, String password) {

		boolean isSuccess = false;
        
        try {
        	
        	connection = ConnectDB.getConnection();
        	statement = connection.createStatement();
        	
            String sql = "INSERT INTO customer values(0,'"+name+"','"+email+"','"+username+"','"+password+"')";
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


}


