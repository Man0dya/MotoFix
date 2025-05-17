package com.system;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        // Retrieve login credentials from the form
    	String username = request.getParameter("username");
        String password = request.getParameter("password");

        try {
            // Validate if the credentials match a customer
            List<Customer> cusDetails = SystemDB.validateCustomer(username, password);
            if (cusDetails.size() > 0) {
            	
                // If customer validation is successful, start a session and redirect to home page
                HttpSession session = request.getSession();
                session.setAttribute("cusDetails", cusDetails);
                response.sendRedirect("home.jsp");
                return;
            }

            // Validate if the credentials match an admin
            List<Admin> adminDetails = SystemDB.validateAdmin(username, password);
            if (adminDetails.size() > 0) {
            	
                // If admin validation is successful, start a session and redirect to admin page
                HttpSession session = request.getSession();
                session.setAttribute("adminDetails", adminDetails);
                response.sendRedirect("admin.jsp");
                return;
            }

            request.setAttribute("errorMessage", "Invalid username or password.");
            RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
            dis.forward(request, response);
            
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "An error occurred. Please try again.");
            RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
            dis.forward(request, response);
        }
    }
}
