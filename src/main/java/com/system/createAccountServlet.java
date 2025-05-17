package com.system;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

public class createAccountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
    	// Retrieve form data from the account creation page
		String name = request.getParameter("name");
        String email = request.getParameter("email");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        boolean isTrue;
        
        // Call the CreateAccount method from the SystemDB class to store the new user data into the database
        isTrue = SystemDB.CreateAccount(name, email, username, password);
        
        // Set an attribute to check whether account creation was successful or not
		if(isTrue == true) {
			request.setAttribute("insertSuccess", true);
		} else {
			request.setAttribute("insertSuccess", false);
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
		dis.forward(request,response);
	}
}