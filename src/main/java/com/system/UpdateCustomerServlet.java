package com.system;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class UpdateCustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
        // Retrieve parameters from the request
		String id = request.getParameter("CustomerID");
		String name = request.getParameter("CustomerName");
		String email = request.getParameter("CustomerEmail");
		String username = request.getParameter("CustomerUserName");
		String password = request.getParameter("CustomerPassword");
		
        // Update customer data in the database
		boolean isTrue;
		
		isTrue = SystemDB.updatecustomer(id, name, email, username, password);
		
        // Check if the update was successful
		if(isTrue==true) {
			
			List<Customer> cusDetails = SystemDB.getCustomerDetails(id);
			request.setAttribute("cusDetails", cusDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("profile.jsp");
			dis.forward(request, response);
		}else {
			RequestDispatcher dis = request.getRequestDispatcher("updatecustomer.jsp");
			dis.forward(request, response);
		}

	}

}
