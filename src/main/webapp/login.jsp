<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>LOGIN</title>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Asap:ital,wght@0,100..900;1,100..900&family=Inria+Sans:ital,wght@0,300;0,400;0,700;1,300;1,400;1,700&display=swap" rel="stylesheet">
  <link rel="icon" type=image/jpg href="images/motofav.png">
  <link rel="stylesheet" href="CSS/login.css">
  
<!--  show an alert when incorrect username or password entered-->
  <script type="text/javascript">
      function showAlert() {
          var errorMessage = '<%= request.getAttribute("errorMessage") != null ? request.getAttribute("errorMessage") : "" %>';
          if (errorMessage) {
              alert(errorMessage);
          }
      }
  </script>
  
</head>
<body onload="showAlert()">

<jsp:include page="header.jsp"/>
  

<main>
  <section class="loginform">
    <div class="loginbox">
      <h2>Login to Your Account</h2>
      <form action="LoginServlet" method="POST"> <!--Send entered data to the Servlet to validate-->
        <div class="input">
          <label for="username">Username</label>
          <input type="text" id="username" name="username" placeholder="Enter your username" required>
        </div>
        <div class="input">
          <label for="password">Password</label>
          <input type="password" id="password" name="password" placeholder="Enter your password" required>
        </div>
        <button type="submit" class="btn">Login</button>
      </form>
      <div class="signup">
        <p>Don't have an account? <a href="signup.jsp">Sign Up</a></p>
      </div>
    </div>
  </section>
</main>

<jsp:include page="footer.jsp" />

</body>
</html>
