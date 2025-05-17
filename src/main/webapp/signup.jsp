<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SIGN UP</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Asap:ital,wght@0,100..900;1,100..900&family=Inria+Sans:ital,wght@0,300;0,400;0,700;1,300;1,400;1,700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="CSS/signup.css">
  <link rel="icon" type=image/jpg href="images/motofav.png">
</head>
<body>

<jsp:include page="header.jsp"/>

<main>
  <section class="signup-section">
    <div class="signup-form-container">
      <h2>Create an Account</h2>
      <form action="createAccountServlet" method="POST"> <!--Send entered details to the create account servlet-->
        <div class="form-group">
          <label for="username">Name</label>
          <input type="text" id="name" name="name" placeholder="Enter your Name" required>
        </div>
        <div class="form-group">
          <label for="email">Email</label>
          <input type="email" id="email" name="email" placeholder="Enter your Email" required>
        </div>
        <div class="form-group">
          <label for="username">Username</label>
          <input type="text" id="username" name="username" placeholder="Enter your Username" required>
        </div>
        <div class="form-group">
          <label for="password">Password</label>
          <input type="password" id="password" name="password" placeholder="Enter your Password" required>
        </div>
        <button type="submit" class="signup-btn">Sign Up</button>
      </form>
      <div class="signup-footer">
        <p>Already have an account? <a href="login.jsp">Login</a></p>
      </div>
    </div>
  </section>
</main>

<jsp:include page="footer.jsp" />


</body>
</html>
