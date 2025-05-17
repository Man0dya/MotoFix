<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    HttpSession ses = request.getSession(false);
    if (session == null || session.getAttribute("cusDetails") == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>CONTACT US</title>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Asap:ital,wght@0,100..900;1,100..900&family=Inria+Sans:ital,wght@0,300;0,400;0,700;1,300;1,400;1,700&display=swap" rel="stylesheet">
  <link rel="icon" type=image/jpg href="images/motofav.png">
  <link rel="stylesheet" href="CSS/contactus.css">
  
  <script>
        window.onload = function() {
            let insertSuccess = '<%= request.getAttribute("insertSuccess") %>';
            if (insertSuccess === 'true') {
                alert('Message sent successfully');
                window.location.href = 'contactus.jsp';
            }
        };
    </script>
</head>
<body>

<jsp:include page="header.jsp"/>
  
<div class="formbox">
    <div class="form">
        <h1>Contact Us</h1>
        <form action="ContactUsInsert" method="POST">
            <div class="detail">
                <label for="name" class="label">Username:</label>
                <input type="text" id="username" name="username" class="input" required>
            </div>
            <div class="detail">
                <label for="email" class="label">Email:</label>
                <input type="email" id="email" name="email" class="input" required>
            </div>
			<div class="detail">
			    <label for="subject" class="label">Subject:</label>
			    <select id="subject" name="subject" class="input" required>
			        <option value="" disabled selected>Select Subject</option>
			        <option value="Order Information">Order Information</option>
			        <option value="Payment Issues">Payment Issues</option>
			        <option value="Technical Support">Technical Support</option>
			        <option value="Feedback">Feedback</option>
			        <option value="Account Issues">Account Issues</option>
			        <option value="Others">Others</option>
			    </select>
			</div>
			
            <div class="detail">
                <label for="message" class="label">Your Message:</label>
                <textarea id="message" name="message" rows="4" class="textarea" required></textarea>
            </div>
            <button type="submit" class="submit">Send Message</button>
        </form>
    </div>
    
</div>

<jsp:include page="footer.jsp" />

<script src="JS/home.js"></script>
</body>
</html>
