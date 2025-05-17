<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    HttpSession ses = request.getSession(false);
    if (session == null || session.getAttribute("adminDetails") == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>ADMIN PROFILE</title>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Asap:ital,wght@0,100..900;1,100..900&family=Inria+Sans:ital,wght@0,300;0,400;0,700;1,300;1,400;1,700&display=swap" rel="stylesheet">
  <link rel="icon" type=image/jpg href="images/motofav.png">
  <link rel="stylesheet" href="CSS/admin.css">
</head>
<body>

<jsp:include page="header.jsp"/>
  
<div class="admin-container">
    <div id="admin-details">
        <h2>Admin Details</h2>
        <p><strong>Name:</strong> VSMS admin</p>
        <p><strong>Email:</strong> admin@gmail.com</p>
        <p><strong>Role:</strong> Admin</p>
        
		<form action="logoffServlet" method="post">
    		<button type="submit" class="admin-button">Log Off</button>
		</form>
    </div>
    
    <div id="admin-actions">
        <h2>Admin Actions</h2>
        <button onclick="location.href='AdminServlet?action=list'">Manage Products</button>
        <button onclick="location.href='AdminServlet?action=showCustomers'">View Users</button>
        <button onclick="location.href='AdminServlet?action=showMessages'">Manage Messages</button>
        <button onclick="location.href='AdminServlet?action=showRequests'">Manage Requests</button>
    </div>
</div>

<jsp:include page="footer.jsp" />

</body>
</html>
