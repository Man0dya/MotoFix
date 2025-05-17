<%@ page import="java.util.List" %>
<%@ page import="com.system.Checkout" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Update Checkout</title>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Asap:ital,wght@0,100..900;1,100..900&family=Inria+Sans:ital,wght@0,300;0,400;0,700;1,300;1,400;1,700&display=swap" rel="stylesheet">
  <style>
     body {
    font-family: 'Inria Sans', 'Asap', sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f9f9f9;
}

    h2 {
    text-align: center;
    margin-bottom: 20px;
    font-size: 24px;
    color: #333;
}

   .checkout-container {
    width: 50%;
    margin: 0 auto;
    background-color: #fff;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

   label {
    display: block;
    font-size: 16px;
    margin-bottom: 8px;
    color: #333;
}

  input[type="text"],
   input[type="email"],
    select {
    width: 100%;
    padding: 10px;
    margin-bottom: 20px;
    border: 1px solid #ccc;
    border-radius: 5px;
    font-size: 16px;
}

  input[type="radio"] {
    margin-right: 10px;
}

  .payment-method label {
    display: inline-block;
    font-size: 16px;
    margin-right: 20px;
}

  .payment-details {
     margin-top: 20px;
}

   .input-group {
    display: flex;
    align-items: center;
}

   .input-group span {
    background-color: #e9ecef;
    padding: 10px;
    border: 1px solid #ccc;
    border-right: 0;
    border-radius: 5px 0 0 5px;
    font-size: 16px;
}

  .input-group input[type="text"] {
    border-radius: 0 5px 5px 0;
}

 .row {
    display: flex;
    justify-content: space-between;
}

  .col {
    width: 48%;
}

  select {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    background-color: #fff;
    font-size: 16px;
}

  button.checkout-btn {
    width: 100%;
    padding: 15px;
    background-color: #000000;
    color: #fff;
    border: none;
    border-radius: 5px;
    font-size: 16px;
    cursor: pointer;
}

  button.checkout-btn:hover {
    background-color: red;
}
     
     
  </style>   
</head>
<body>



<!-- Header -->
<jsp:include page="header.jsp"/>

<!-- Add your content -->
<%
     String id = request.getParameter("id");
     String firstName = request.getParameter("firstName");
     String lastName = request.getParameter("lastName");
     String username = request.getParameter("username");
     String email = request.getParameter("email");
     String address = request.getParameter("address");
     String country = request.getParameter("country");
     String paymentMethod = request.getParameter("paymentMethod");
     String cardName = request.getParameter("cardName");
     String cardNumber = request.getParameter("cardNumber");
     String expiration = request.getParameter("expiration");
     String cvv = request.getParameter("cvv");
     
%>
        
<h2>Update Checkout Details</h2>

<div class="checkout-container">
    
        <h2>Delivery Details</h2>

        <form action="UpdateCheckoutServlet" method="POST">

             <label for="id">Id</label>
             <input type="text" id="id" name="id" value="<%=id%>"readonly>
            
             
            <div class="row">
                <div class="col">
                    <label for="first-name">First name</label>
                    <input type="text" id="first-name" name="firstName" value="<%=firstName%>" required>
                </div>
                <div class="col">
                    <label for="last-name">Last name</label>
                    <input type="text" id="last-name" name="lastName" value="<%=lastName%>" required>
                </div>
            </div>

            <label for="username">UserName</label>
            <div class="input-group">
                <span>@</span>
                <input type="text" id="username" name="username" value="<%=username%>" required>
            </div>

            <label for="email">Email (Optional)</label>
            <input type="text" id="email" name="email" value="<%=email%>" >

            <label for="address">Address</label>
            <input type="text" id="address" name="address" value="<%=address%>" required>

            <label for="country">Country</label>
            <select id="country" name="country" required>
                <option value="">Choose... </option>
                <option value="srilanka" <%= "srilanka".equals(country) ? "selected" : "" %>>SriLanka</option>
                <option value="usa" <%= "usa".equals(country) ? "selected" : "" %>>USA</option>
                <option value="india" <%= "india".equals(country) ? "selected" : "" %>>India</option>
                <option value="australia" <%= "australia".equals(country) ? "selected" : "" %>>Australia</option>
                <option value="maldives" <%= "maldives".equals(country) ? "selected" : "" %>>Maldives</option>
            </select>

            

            <h2>Payment Details</h2>
            <div class="payment-method">
                <label>
                    <input type="radio" name="paymentMethod" value="credit" <%= "credit".equals(paymentMethod) ? "checked" : "" %>> Credit Card
                </label>
                <label>
                    <input type="radio" name="paymentMethod" value="cod" <%= "cod".equals(paymentMethod) ? "checked" : "" %>> Cash on delivery
                </label>
                <label>
                    <input type="radio" name="paymentMethod" value="payPal" <%= "payPal".equals(paymentMethod) ? "checked" : "" %>> PayPal
                </label>
            </div>

            <div class="payment-details">
                <label for="card-name">Name on Card</label>
                <input type="text" id="card-name" name="cardName" value="<%=cardName%>" required placeholder="Full name as displayed on card">

                <label for="card-number">Credit Card Number</label>
                <input type="text" id="card-number" name="cardNumber" value="<%=cardNumber%>" required>

                <div class="row">
                    <div class="col">
                        <label for="expiration">Expiration</label>
                        <input type="text" id="expiration" name="expiration" value="<%=expiration%>" placeholder="MM/YY" required>
                    </div>
                    <div class="col">
                        <label for="cvv">CVV</label>
                        <input type="text" id="cvv" name="cvv" value="<%=cvv%>" required>
                    </div>
                </div>
            </div>

            <button type="submit" class="checkout-btn">Update Checkout</button>
        </form>
   </div>    


<!-- Footer -->
<jsp:include page="footer.jsp" />

</body>
</html>
