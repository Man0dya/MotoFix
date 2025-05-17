<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>ABOUT US</title>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css2?family=Asap:ital,wght@0,100..900;1,100..900&family=Inria+Sans:ital,wght@0,300;0,400;0,700;1,300;1,400;1,700&display=swap" rel="stylesheet">
  <link rel="icon" type=image/jpg href="images/motofav.png">
  <link rel="stylesheet" href="CSS/about.css">
 
</head>

<body>

<jsp:include page="header.jsp"/>

<section class="about-us">
    <div class="container">
        <h1>About Us</h1>
        <p><a href="home.jsp">Home</a> » About Us</p>
    </div>
</section>

<section class="why-choose-us">
  <div class="container">
      <h1>Why Choose Us?</h1>
      <p>Choose us for our extensive wholesale selection, exceptional quality, competitive prices, reliable service, and customer satisfaction. Experience excellence with us today!</p>
      
      <div class="services">
          <div class="service">
              <h3>OUR <span>VISION</span></h3>
              <p>To be a leader in the auto parts market in Sri Lanka</p>
          </div>

          <div class="service">
              <h3>OUR <span>MISSION</span></h3>
              <ol>
                <li>Importing qualitative and reliable vehicle parts and distributing them at a reasonable price..</li>
                <li>Be loyal to customers and fulfill their needs.</li>
                <li>Provide high-quality products and services to the Sri Lankan auto parts market.</li>
                <li>Ensure customer satisfaction with service quality.</li>
              </ol>
          </div>
      </div>
  </div>
</section>

<section class="who-are-we">
  <div class="content">
      <div class="text-content">
          <h2>WHO <span>ARE WE</span>?</h2>
          <p>We are an automotive company which sells vehicle-related parts and services. With over 10 years of selling expertise, we offer the widest collection of auto parts for your vehicle, making it the best solution for your automotive needs at an affordable price. We are dedicated to providing every customer with the best value for money and ensuring an effortless shopping experience, along with fast island-wide delivery. Our primary wholesale outlet is located in Pallekele.We welcome you to our store and are happy to help you solve your problem or fulfill your needs.</p>
          <a href="contactus.jsp" class="cta-button">CONTACT US NOW</a>
      </div>
      <div class="image-content">
          <img src="images/auto.jpg" alt="Workers in Warehouse">
      </div>
  </div>
</section>


<section class="features">
    <div class="feature-box">
        <div class="icon">
            <img src="images/truck.jpg" alt="Free Delivery Icon">
        </div>
        <div class="text">
            <h3> 24/7 Free Delivery</h3>
        </div>
    </div>

    <div class="feature-box">
        <div class="icon">
            <img src="images/payment.jpg" alt="Payment Comfort Icon">
        </div>
        <div class="text">
            <h3>Secure Payments</h3>
        </div>
    </div>

    <div class="feature-box">
        <div class="icon">
            <img src="images/support.png" alt="Online Support Icon">
        </div>
        <div class="text">
            <h3>Online Support</h3>
        </div>
    </div>

    <div class="feature-box">
        <div class="icon">
            <img src="images/quality.jpg" alt="Quality Product Icon">
        </div>
        <div class="text">
            <h3>Quality Products</h3>
        </div>
    </div>
</section>

 <jsp:include page="footer.jsp" />

</body>
</html>