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
  <title>CHECKOUT</title>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Asap:ital,wght@0,100..900;1,100..900&family=Inria+Sans:ital,wght@0,300;0,400;0,700;1,300;1,400;1,700&display=swap" rel="stylesheet">
  <link rel="icon" type=image/jpg href="images/motofav.png"> 
  <link rel="stylesheet" href="CSS/checkout.css">
</head>
<body>

<jsp:include page="header.jsp"/>
  
 <div class="checkout-container">
        
            
            <h2>Delivery Details</h2>
            <form action="CheckoutServlet" method="POST">

                <div class="row">
                    <div class="col">
                        <label for="first-name">First name</label>
                        <input type="text" id="first-name" name="firstName" required>
                    </div>
                    <div class="col">
                        <label for="last-name">Last name</label>
                        <input type="text" id="last-name" name="lastName" required>
                    </div>
                </div>

                <label for="username">UserName</label>
                <div class="input-group">
                    <span>@</span>
                    <input type="text" id="username" name="username" required>
                </div>

                <label for="email">Email (Optional)</label>
                <input type="email" id="email" name="email">

                <label for="address">Address</label>
                <input type="text" id="address" name="address" required>

                <label for="country">Country</label>
                <select id="country" name="country" required>
                    <option value="">Choose...</option>
                    <option value="srilanka">SriLanka</option>
                    <option value="usa">USA</option>
                    <option value="india">India</option>
                    <option value="australia">Australia</option>
                    <option value="maldives">Maldives</option>
                    
                </select>

            

            <h2>Payment Details</h2>
            <div class="payment-method">
               
                <label>
                        <input type="radio" name="paymentMethod" value="credit" checked>Credit Card
                        <input type="radio" name="paymentMethod" value="cod">Cash on delivery
                        <input type="radio" name="paymentMethod" value="payPal">PayPal
               </label>
            </div>  
            
               <div class="payment-details">
                     <label for="card-name">Name on Card</label>
                    <input type="text" id="card-name" name="cardName" required placeholder="Full name as displayed on card">

                    <label for="card-number">Credit Card Number</label>
                    <input type="text" id="card-number" name="cardNumber" required>

                    <div class="row">
                        <div class="col">
                            <label for="expiration">Expiration</label>
                            <input type="text" id="expiration" name="expiration" placeholder="MM/YY" required>
                        </div>
                        <div class="col">
                            <label for="cvv">CVV</label>
                            <input type="text" id="cvv" name="cvv" required>
                        </div>
               </div>
				
				    <button type="submit" class="checkout-btn">Add details</button>
        		</div>
         </form>     
     </div>    
       
    
<jsp:include page="footer.jsp" />


</body>
</html>