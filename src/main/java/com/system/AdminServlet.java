package com.system;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class AdminServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    
    //Handles both GET and POST requests by forwarding them to processrequest method
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }
    
    //incoming requests sets the request to action parameter
    
    private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        
        //if no action is provided, set default to list products
        if (action == null||action.isEmpty()) {
            action = "list";
        }
        
        // Switch case to handle different actions
        switch (action) {
            case "new":
                showNewForm(request, response);
                break;
            case "insert":
                insertProduct(request, response);
                break;
            case "edit":
                showEditForm(request, response);
                break;
            case "update":
                updateProduct(request, response);
                break;
            case "delete":
                deleteProduct(request, response);
                break;
            case "showProducts":
                showProductsForCustomer(request, response);
                break;
            case "showMessages":
            	showMessages(request,response);
            case "showCustomers":
                showCustomers(request, response);
                break;
            case "showRequests":
                showRequests(request, response);
                break;
            default:
                listProducts(request, response);
                break;
        }
    }

    //Retrieves the list of all products from the database and forwards it to the admin product view.
    private void listProducts(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
    	List<Product> products = AdminDAO.getAllProducts();
        request.setAttribute("products", products);
        RequestDispatcher dispatcher = request.getRequestDispatcher("adminproduct.jsp");
        dispatcher.forward(request, response);   
    }

    //Shows the form for adding a new product.
    private void showNewForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
        RequestDispatcher dispatcher = request.getRequestDispatcher("addProduct.jsp");
        dispatcher.forward(request, response);
    }

    //Shows the form for editing an existing product.
    private void showEditForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
        int id = Integer.parseInt(request.getParameter("id"));
        Product existingProduct = AdminDAO.getProductById(id);
        request.setAttribute("product", existingProduct);
        RequestDispatcher dispatcher = request.getRequestDispatcher("updateProduct.jsp");
        dispatcher.forward(request, response);
    }

    //Inserts a new product into the database
    private void insertProduct(HttpServletRequest request, HttpServletResponse response) throws IOException {
    	
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        double price = Double.parseDouble(request.getParameter("price"));
        int stock = Integer.parseInt(request.getParameter("stock"));

        Product newProduct = new Product(0, name, description, price, stock);
        AdminDAO.addProduct(newProduct);
        response.sendRedirect("AdminServlet?action=list");
    }

    //Updates an existing product in the database
    private void updateProduct(HttpServletRequest request, HttpServletResponse response) throws IOException {
    	
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        double price = Double.parseDouble(request.getParameter("price"));
        int stock = Integer.parseInt(request.getParameter("stock"));

        Product product = new Product(id, name, description, price, stock);
        AdminDAO.updateProduct(product);
        response.sendRedirect("AdminServlet?action=list");
    }

    //Deletes a product from the database based on the product ID.
    private void deleteProduct(HttpServletRequest request, HttpServletResponse response) throws IOException {
    	
        int id = Integer.parseInt(request.getParameter("id"));
        AdminDAO.deleteProduct(id);
        response.sendRedirect("AdminServlet?action=list");
    }
    
    //Retrieves all available products and forwards the list to the product page.
    private void showProductsForCustomer(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
        List<Product> showproducts = AdminDAO.getAllAvailableProducts();
        request.setAttribute("products", showproducts);
        RequestDispatcher dispatcher = request.getRequestDispatcher("products.jsp");
        dispatcher.forward(request, response);
    }
    
    //Retrieves all contact us messages and forwards the list to the admin.
    private void showMessages(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
    	List<ContactUs> messages = AdminDAO.getAllMessages();
        request.setAttribute("messages", messages);
        RequestDispatcher dispatcher = request.getRequestDispatcher("viewmessages.jsp");
        dispatcher.forward(request, response);
    }
    
    //Retrieves all customer data and forwards the list of the customers to the admin.
    private void showCustomers(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
    	List<Customer> customers = AdminDAO.getAllCustomers();
        request.setAttribute("customers", customers);
        RequestDispatcher dispatcher = request.getRequestDispatcher("viewcustomer.jsp");
        dispatcher.forward(request, response);
    }
    
    //Retrieves all product requests and forwards the list to the admin.
    private void showRequests(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
    	List<Requestp> requests = AdminDAO.getAllRequests();
        request.setAttribute("requests", requests);
        RequestDispatcher dispatcher = request.getRequestDispatcher("viewRequest.jsp");
        dispatcher.forward(request, response);
    }
}
