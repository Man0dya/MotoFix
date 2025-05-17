<%@ page import="java.util.List" %>
<%@ page import="com.system.Requestp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>MANAGE PRODUCT</title>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css2?family=Asap:ital,wght@0,100..900;1,100..900&family=Inria+Sans:ital,wght@0,300;0,400;0,700;1,300;1,400;1,700&display=swap" rel="stylesheet">
  <link rel="icon" type=image/jpg href="images/motofav.png">
  <link rel="stylesheet" href="CSS/adminproduct.css">
   
</head>
<body>

<jsp:include page="header.jsp"/>
 
<h2>Request List</h2>

<br><br>
    <table>
    <thead>
        <tr>
            <th>ID</th>
            <th>Email</th>
            <th>Product</th>
            <th>Quantity</th>
            <th>Action</th>
            
        </tr>
    </thead>
    <tbody>
        <%
            List<Requestp> requestps = (List<Requestp>) request.getAttribute("requestps");
            if (requestps != null && !requestps.isEmpty()) {
                for (Requestp requestp : requestps) {
        %>
        <tr>
            <td><%= requestp.getId() %></td>
            <td><%= requestp.getEmail() %></td>
            <td><%= requestp.getProduct() %></td>
            <td><%= requestp.getQuantity() %></td>
            <td>
                <a class="link" href="RequestpServlet?action=edit&id=<%= requestp.getId() %>">Edit</a> 
                <a class="link" href="RequestpServlet?action=delete&id=<%= requestp.getId() %>" onclick="return confirm('Are you sure you want to delete this request?');">Delete</a>
            </td>
        </tr>
        <%
                }
            } else {
        %>
        <tr>
            <td colspan="6">No products found.</td>
        </tr>
        <%
            }
        %>
    </tbody>
</table>


<jsp:include page="footer.jsp" />

</body>
</html>
