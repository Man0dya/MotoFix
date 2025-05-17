<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FAQ</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Asap:ital,wght@0,100..900;1,100..900&family=Inria+Sans:ital,wght@0,300;0,400;0,700;1,300;1,400;1,700&display=swap" rel="stylesheet">
<link rel="icon" type=image/jpg href="images/motofav.png">
<link rel="stylesheet" href="CSS/faq.css">
</head>

<body>

<jsp:include page="header.jsp"/>

<main>
  <div class="faq-section">
    <h1><center>Frequently Asked Questions</center></h1>
      <div class="faq-item">
          <h3 class="faq-question">What are the available spare parts?</h3>
          <div class="faq-answer">
              <p>We offer a wide range of vehicle spare parts including tyres, engines, brakes, clutches, and more.</p>
          </div>
      </div>

      <div class="faq-item">
          <h3 class="faq-question">How can I place an order?</h3>
          <div class="faq-answer">
              <p>You can place an order through our website by selecting the required part and following the checkout process.</p>
          </div>
      </div>

      <div class="faq-item">
          <h3 class="faq-question">What is the return policy?</h3>
          <div class="faq-answer">
              <p>Returns are accepted within 30 days of purchase, provided the parts are unused and in their original packaging.</p>
          </div>
      </div>

      <div class="faq-item">
          <h3 class="faq-question">Can I track my order?</h3>
          <div class="faq-answer">
              <p>Yes, you will receive a tracking number via email once your order has been shipped.</p>
          </div>
      </div>
      
      <div class="faq-item">
          <h3 class="faq-question">What are your customer support hours?</h3>
          <div class="faq-answer">
              <p>Our support team is available Monday to Friday, 9 AM to 4 PM (local time)</p>
          </div>
      </div>
      
      <div class="faq-item">
          <h3 class="faq-question">What if the part I want is not available?</h3>
          <div class="faq-answer">
              <p>You can request the part you want from our request products page</p>
          </div>
      </div>
      
      <div class="faq-item">
          <h3 class="faq-question">Do you have a minimum order quantity?</h3>
          <div class="faq-answer">
              <p>No, there is no minimum order quantity. You can order as few or as many parts as needed.</p>
          </div>
      </div>
      
      <div class="faq-item">
          <h3 class="faq-question">Do you offer discounts for bulk purchases?</h3>
          <div class="faq-answer">
              <p>Yes, we offer special pricing for bulk orders. Please contact our sales team for more details on bulk purchase discounts.</p>
          </div>
      </div>
      
  </div>
</main>



<jsp:include page="footer.jsp" />

<script src="JS/faq.js"></script>

</body>
</html>