package com.system;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;

public class DeleteCustomerServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        // Retrieve the customer ID from the request parameter
    	String id = request.getParameter("id");  
        
        // Call the SystemDB to delete the customer by ID
        boolean isTrue = SystemDB.deleteCustomer(id);

        if (isTrue) {
        	
        	// Get the current session and invalidate it to log out the user
        	HttpSession session = request.getSession();
            if (session != null) {
                session.invalidate();
            }
            RequestDispatcher dis = request.getRequestDispatcher("home.jsp");
            dis.forward(request, response);
            
        } else {
            List<Customer> cusDetails = SystemDB.getCustomerDetails(id);
            request.setAttribute("cusDetails", cusDetails);

            RequestDispatcher dis = request.getRequestDispatcher("profile.jsp");
            dis.forward(request, response);
        }
    }
}
