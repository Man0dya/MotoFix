package com.system;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


public class DeleteCheckoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
	}
   
   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
    // Retrieve the checkout ID from the request
	String id = request.getParameter("id");
	
	boolean isTrue;
	
    // Call the deleteData method from the CheckoutDB class to delete
	isTrue = CheckoutDB.deleteData(id);
	
	if(isTrue == true) {
		String alertMessage = "Data Delete Successful";
		response.getWriter().println("<script> alert('"+alertMessage+"')</script>");		
		response.sendRedirect("GetAllServlet");
		
	}
	else {
		List<Checkout> checkout = CheckoutDB.getById(id);
		request.setAttribute("checkout", checkout);
		
		RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
		dis.forward(request, response);
	}
  }

}