package com.system;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/logoffServlet")
public class LogoffServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        // Retrieve the current session, if it exists, without creating a new one
    	HttpSession session = request.getSession(false);
        if (session != null) {
            session.invalidate();
        }
        // Redirect the user to the login page after logging off
        response.sendRedirect("login.jsp");
    }
}
