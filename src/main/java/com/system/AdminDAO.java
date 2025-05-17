package com.system;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class AdminDAO {
	
	private static Connection connection = null;
    private static Statement statement = null;
    private static ResultSet rs = null;
    
    // Retrieve all products from the database
    public static List<Product> getAllProducts(){
    	
    	List<Product> productList = new ArrayList<>();
    	
    	try {
    		// Get database connection and create a statement
    		connection = ConnectDB.getConnection();
    		statement = connection.createStatement();
    		
    		//sql query to insert data
    		String sql = "SELECT * FROM products";
    		rs = statement.executeQuery(sql);
    		
    		while(rs.next()) {
    			
    			int id = rs.getInt("id");
                String name = rs.getString("name");
                String description = rs.getString("description");
                double price = rs.getDouble("price");
                int stock = rs.getInt("stock");
                
    			// Add the product to the product list
    			Product product = new Product(id, name, description, price, stock);
    			productList.add(product);
    		}
    		
    	}catch(Exception e) {
    		e.printStackTrace();
    	}
    	return productList;
    }
    
    // Method to add a new product to the database
    public static boolean addProduct(Product product) {
    	boolean success = false;
    	
    	try {
    		//Insert data to the databse with SQL query and set the parameters
    		connection = ConnectDB.getConnection();
    		String sql = "INSERT INTO products(name,description,price,stock) VALUES(?,?,?,?)";
    		PreparedStatement ps = connection.prepareStatement(sql);
    		
    		ps.setString(1, product.getName());
    		ps.setString(2, product.getDescription());
    		ps.setDouble(3, product.getPrice());
    		ps.setInt(4, product.getStock());
    		
    		//Check if rows were affected
    		int rowsaffected = ps.executeUpdate();
    		success = rowsaffected>0;
    		
    	}catch (Exception e) {
    		e.printStackTrace();
		}
    	return success;
    }
    
    // Method to update an existing product in the database
    public static boolean updateProduct(Product product) {
    	boolean success = false;
    	
    	try {
    		//sql query to update data
    		connection = ConnectDB.getConnection();
    		
    		String sql = "UPDATE products SET name = ?, description = ?, price = ?,stock = ? WHERE id = ?";
    		PreparedStatement ps = connection.prepareStatement(sql);
    		
    		ps.setString(1, product.getName());
    		ps.setString(2, product.getDescription());
    		ps.setDouble(3, product.getPrice());
    		ps.setInt(4, product.getStock());
    		ps.setInt(5, product.getId());
    		
    		// Check if rows were affected
    		int rowsAffected = ps.executeUpdate();
    		success = rowsAffected > 0;
    			
    	}catch (Exception e) {
    		e.printStackTrace();
		}
    	
    	return success;
    }
    
    // Method to delete a product from the database
    public static boolean deleteProduct(int id) {
    	boolean success = false;
    	
    	try {
    		// SQL query to delete product with ID
    		connection = ConnectDB.getConnection();
    		String sql = "DELETE FROM products WHERE id = ?";
    		PreparedStatement ps = connection.prepareStatement(sql);
    		ps.setInt(1, id);
    		
    		//Check if rows were affected
    		int rowsAffected = ps.executeUpdate();
    		success = rowsAffected > 0;
    		
    	}catch (Exception e) {
			e.printStackTrace();
		}
    	return success;
    }   
    
    // Method to retrieve a specific product by its ID
    public static Product getProductById(int id) {
        Product product = null;
        
        try {
            //query to select the product and set the product ID
            connection = ConnectDB.getConnection();
            String sql = "SELECT * FROM products WHERE id = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            
            // Create a Product object if a result is found
            if (rs.next()) {
                String name = rs.getString("name");
                String description = rs.getString("description");
                double price = rs.getDouble("price");
                int stock = rs.getInt("stock");
                
                product = new Product(id, name, description, price, stock);
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return product;
    }
    
    // Method to retrieve all available products
    public static List<Product> getAllAvailableProducts() {
        List<Product> showproductList = new ArrayList<>();
        
        try {
            connection = ConnectDB.getConnection();
            
            String sql = "SELECT * FROM products";
            PreparedStatement ps = connection.prepareStatement(sql);
            
            rs = ps.executeQuery();
            
            // Loop the result set and create Product objects
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String description = rs.getString("description");
                double price = rs.getDouble("price");
                int stock = rs.getInt("stock");
                
                Product showproduct = new Product(id, name, description, price, stock);
                showproductList.add(showproduct);
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
       
        return showproductList;
    }

    // Method to retrieve all contact messages
    public static List<ContactUs> getAllMessages() {
        List<ContactUs> messageList = new ArrayList<>();
        
        try {
            connection = ConnectDB.getConnection();
            String sql = "SELECT * FROM contactus";
            statement = connection.createStatement();
            rs = statement.executeQuery(sql);
            
            // Loop the result set and create ContactUs object
            while (rs.next()) {
                int id = rs.getInt("id");
                String username = rs.getString("username");
                String email = rs.getString("email");
                String subject = rs.getString("subject");
                String message = rs.getString("message");
                
                ContactUs contactMessage = new ContactUs(id, username, email, subject, message);
                messageList.add(contactMessage);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return messageList;
    }
    
    // Method to retrieve all customers from the database
    public static List<Customer> getAllCustomers() {
        List<Customer> customerList = new ArrayList<>();
        
        try {
            connection = ConnectDB.getConnection();
            String sql = "SELECT * FROM customer";
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery(sql);
            
            // Loop  the result set and create Customer object
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String email = rs.getString("email");
                String username = rs.getString("username");
                String password = rs.getString("password");
                
                Customer customer = new Customer(id, name, email, username, password);
                customerList.add(customer);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return customerList;
    }
    
    // Method to retrieve all product requests
    public static List<Requestp> getAllRequests() {
        List<Requestp> requestList = new ArrayList<>();
        
        try {
            connection = ConnectDB.getConnection();
            String sql = "SELECT * FROM requestp";
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery(sql);
            
            // Loop the result set and create Requestp object
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
