<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="preconnect" href="https://fonts.googleapis.com">
 	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
 	<link href="https://fonts.googleapis.com/css2?family=Asap:ital,wght@0,100..900;1,100..900&family=Inria+Sans:ital,wght@0,300;0,400;0,700;1,300;1,400;1,700&display=swap" rel="stylesheet">
 	<link rel="stylesheet" href="CSS/header.css">
</head>
<body>
	<header>
    <div class="headerup">
      <div class="logo">
      <a href="home.jsp">
        <h1>   MotoFix.</h1>
      </a>
    </div>
      <div class="icons">
    <button id="requestbtn" onclick="location.href='requestp.jsp'">Request Parts</button>
    <a href="cart.jsp" class="icon-link">
        <img src="images/cart.png" alt="Cart" width="24" height="24">
    </a>
    
    <% 
        HttpSession session1 = request.getSession(false);
        if (session1 != null) {
            if (session1.getAttribute("cusDetails") != null) { 
    %>
                <a href="profile.jsp" class="icon-link">
                    <img src="images/profile.png" alt="Profile" width="24" height="24">
                </a>
            <% } else if (session1.getAttribute("adminDetails") != null) { %>
                <a href="admin.jsp" class="icon-link">
                    <img src="images/profile.png" alt="Admin Profile" width="24" height="24">
                </a>
            <% } else { %>
                <a href="login.jsp" class="icon-link">
                    <img src="images/login.png" alt="Login" width="24" height="24">
                </a>
            <% } 
        } else { %>
            <a href="login.jsp" class="icon-link">
                <img src="images/login.png" alt="Login" width="24" height="24">
            </a>
        <% } 
    %>
</div>
    </div>
    <nav class="headerdown">
      <ul class="navigation">
        <li><a href="home.jsp">HOME</a></li>
        <li><a href="AdminServlet?action=showProducts">PRODUCTS</a></li>
        <li><a href="about.jsp">ABOUT US</a></li>
        <li><a href="contactus.jsp">CONTACT US</a></li>
        <li><a href="faq.jsp">FAQ</a></li>
      </ul>
    </nav>
    <script src="JS/header.js"></script>
  </header>
</body>
</html>