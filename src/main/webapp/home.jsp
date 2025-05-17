<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HOME</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Asap:ital,wght@0,100..900;1,100..900&family=Inria+Sans:ital,wght@0,300;0,400;0,700;1,300;1,400;1,700&display=swap" rel="stylesheet">
<link rel="icon" type=image/jpg href="images/motofav.png">
<link rel="stylesheet" href="CSS/home.css">
</head>

<body>

<jsp:include page="header.jsp"/>


	<main>
  <section class="section">
    <div class="slideshow">
    
      <div class="content slide">
        <div class="textcontent">
          <h1>Welcome to the MotoFix Spare Parts</h1>
          <hr>
          <p>Your one-stop shop for all vehicle spare parts.</p>
          <a href="AdminServlet?action=showProducts" class="btn">Shop Now</a>
        </div>
        <div class="imagecontent">
          <img src="images/bodyparts.jpeg" alt="Vehicle Parts" class="slideimage">
        </div>
      </div>

      <div class="content slide">
        <div class="textcontent">
          <h1>Find the Best Parts for Your Vehicle</h1>
          <hr>
          <p>We offer a wide selection of premium-quality products.</p>
          <a href="AdminServlet?action=showProducts" class="btn">Browse Products</a>
        </div>
        <div class="imagecontent">
          <img src="images/tire.jpeg" alt="Vehicle Parts" class="slideimage">
        </div>
      </div>

      <div class="content slide">
        <div class="textcontent">
          <h1>Fast and Reliable Delivery</h1>
          <hr>
          <p>Get your spare parts delivered right to your door in no time.</p>
          <a href="AdminServlet?action=showProducts" class="btn">Shop Now</a>
        </div>
        <div class="imagecontent">
          <img src="images/engine.jpeg" alt="Vehicle Parts" class="slideimage">
        </div>
      </div>

      <div class="content slide">
        <div class="textcontent">
          <h1>Special Discounts for Loyal Customers</h1>
          <hr>
          <p>Sign up for exclusive offers and discounts on spare parts.</p>
          <a href="login.jsp" class="btn">Join Us</a>
        </div>
        <div class="imagecontent">
          <img src="images/lights.jpeg" alt="Vehicle Parts" class="slideimage">
        </div>
      </div>
    </div>
  </section>
  

  <section id="request-section" class="details-section request-parts">
    <div class="detail-content">
      <h2 class="section-title">Can't Find What You Need?</h2>
      <p class="section-description">If you're looking for a specific part that we don't currently have in stock, you can request it directly from us. We are constantly updating our inventory and will notify you once the requested part is available.</p>
      <div class="image-content">
        <img src="images/requestpart.png" alt="Request Parts" class="request-image">
      </div>
      <a href="requestp.jsp" class="btn request-btn">Request a Part</a>
    </div>
  </section>
	
  <section id="signup-section" class="details-section signup-info">
    <div class="detail-content">
      <h2 class="section-title">Sign Up and Stay Updated</h2>
      <p class="section-description">Become a MotoFix member to receive the latest updates, offers, and exclusive discounts. Don’t miss out on special deals just for you!</p>
      <div class="image-content">
        <img src="images/homesignup.png" alt="Sign Up" class="signup-image">
      </div>
      <a href="signup.jsp" class="btn signup-btn">Sign Up Now</a>
    </div>
  </section>

  
</main>

<jsp:include page="footer.jsp" />

<script src="JS/home.js"></script>

</body>
</html>