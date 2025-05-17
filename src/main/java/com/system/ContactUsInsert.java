package com.system;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class ContactUsInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
    	// Retrieve form data from the request object
		String username = request.getParameter("username");
        String email = request.getParameter("email");
        String subject = request.getParameter("subject");
        String message = request.getParameter("message");
        
        boolean isTrue;
        
        // Call the insert method to store the "Contact Us" message into the database
        isTrue = SystemDB.InsertContacUs(username, email, subject, message);
        
		if(isTrue == true) {
			request.setAttribute("insertSuccess", true);
		} else {
			request.setAttribute("insertSuccess", false);
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("contactus.jsp");
		dis.forward(request, response);
	}
}
