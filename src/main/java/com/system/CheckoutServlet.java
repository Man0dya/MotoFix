package com.system;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;


public class CheckoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
    	// Retrieve form data from the request object
    	String firstName = request.getParameter("firstName");
    	String lastName = request.getParameter("lastName");
		String username = request.getParameter("username");
		String email = request.getParameter("email");
        String address = request.getParameter("address");
        String country = request.getParameter("country");
        String paymentMethod = request.getParameter("paymentMethod");
        String cardName = request.getParameter("cardName");
        String cardNumber = request.getParameter("cardNumber");
        String expiration = request.getParameter("expiration");
        String cvv = request.getParameter("cvv");
        
        boolean isTrue;
        
        // Call the insertData method to store the checkout information in the database
        isTrue = CheckoutDB.insertData(firstName,lastName,username, email, address,country,paymentMethod,cardName,cardNumber,expiration,cvv);
        
        if(isTrue == true) {
    		String alertMessage = "Data Insert Successful";
    		response.getWriter().println("<script> alert('"+alertMessage+"');</script>");
    		response.sendRedirect("GetAllServlet");

    	}
    	else {
    		RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
    		dis2.forward(request, response);
    	}
    }
}





