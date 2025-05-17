package com.system;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class RequestpServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	// Get the action parameter from the request
        String action = request.getParameter("action");
        
        if (action == null||action.isEmpty()) {
            action = "list";
        }
        
        // Switch to handle different actions like 'new', 'insert', 'edit', 'update', 'delete', or 'list'
        switch (action) {
            case "new":
                showNewForm(request, response);
                break;
            case "insert":
                insertRequestp(request, response);
                break;
            case "edit":
                showEditForm(request, response);
                break;
            case "update":
                updateRequestp(request, response);
                break;
            case "delete":
                deleteRequestp(request, response);
                break;
            default:
                listRequestp(request, response);
                break;
        }
    }

    private void listRequestp(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	// Retrieve all request records from the database
    	List<Requestp> Requestps = RequestpDB.getAllRequestps();
        request.setAttribute("requestps", Requestps);
        RequestDispatcher dispatcher = request.getRequestDispatcher("reqprofile.jsp");
        dispatcher.forward(request, response);
        
    }

    private void showNewForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	 // Forward to the JSP page (requestp.jsp) for creating a new request
        RequestDispatcher dispatcher = request.getRequestDispatcher("requestp.jsp");
        dispatcher.forward(request, response);
    }

   private void showEditForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
    	    int id = Integer.parseInt(request.getParameter("id"));
		    Requestp existingRequestp = RequestpDB.getRequestpById(id);
		    request.setAttribute("requestp", existingRequestp);
		    RequestDispatcher dispatcher = request.getRequestDispatcher("updateRequest.jsp");
		    dispatcher.forward(request, response);

    }

    private void insertRequestp(HttpServletRequest request, HttpServletResponse response) throws IOException {
    	// Retrieve form data from the request
        String email = request.getParameter("email");
        String product = request.getParameter("product");
        int quantity = Integer.parseInt(request.getParameter("quantity"));

        Requestp newRequestp = new Requestp(0, email, product, quantity);
        RequestpDB.addRequestp(newRequestp);
        response.sendRedirect("RequestpServlet?action=list");
    }

    private void updateRequestp(HttpServletRequest request, HttpServletResponse response) throws IOException {
    	// Retrieve form data from the request, including the ID of the request being updated
        int id = Integer.parseInt(request.getParameter("id"));
        String email = request.getParameter("email");
        String product = request.getParameter("product");
        int quantity = Integer.parseInt(request.getParameter("quantity"));

     // Create a Requestp object with updated details and update it in the database
        Requestp requestp = new Requestp(id, email, product, quantity);
        RequestpDB.updateRequestp(requestp);
        // Redirect back to the list after successful update
        response.sendRedirect("RequestpServlet?action=list");
    }

    private void deleteRequestp(HttpServletRequest request, HttpServletResponse response) throws IOException {
    // Retrieve the request ID from the parameter
        int id = Integer.parseInt(request.getParameter("id"));
     // Delete the request with the specified ID from the database
        RequestpDB.deleteRequestp(id);
     // Redirect back to the list after successful deletion
        response.sendRedirect("RequestpServlet?action=list");
    }
}
