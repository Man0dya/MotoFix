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
  <title>CHECKOUT</title>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Asap:ital,wght@0,100..900;1,100..900&family=Inria+Sans:ital,wght@0,300;0,400;0,700;1,300;1,400;1,700&display=swap" rel="stylesheet">
  <link rel="icon" type="image/jpg" href="images/motofav.png">

  <style>
    body {
      font-family: 'Inria Sans', 'Asap', sans-serif;
      background-color: #f9f9f9;
      margin: 0;
      padding: 0;
    }

    h2 {
      text-align: center;
      font-size: 35px;
      color: #333;
      margin-top: 70px;
    }

    table {
      width: 90%;
      margin: 20px auto;
      border-collapse: collapse;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      background-color: #fff;
      border-radius: 8px;
      overflow: hidden;
    }

    thead {
      background-color: #dd1b1b;
      color: #fff;
    }

    th, td {
      padding: 15px;
      text-align: center;
      border: 1px solid #ddd;
    }

    th {
      font-size: 18px;
      font-weight: 600;
    }

    td {
      font-size: 16px;
    }

    tr:nth-child(even) {
      background-color: #f2f2f2;
    }

    button {
      background-color: #808080;
      color: #fff;
      border: none;
      padding: 10px 15px;
      border-radius: 5px;
      cursor: pointer;
      font-size: 14px;
      margin-bottom: 5px;
    }

    button:hover {
      background-color: black;
    }

    a button {
      margin-right: 10px;
    }

    form button {
      background-color: #dc3545;
    }

    form button:hover {
      background-color: black;
    }

    input[type="hidden"] {
      display: none;
    }

    #confirm-payment-btn {
      display: block;
      width: fit-content;
      margin: 20px auto;
      background-color: #dd1b1b;
      font-size: 16px;
      padding: 12px 20px;
    }

    #confirm-payment-btn:hover {
      background-color: #b71818;
    }
  </style>

  <script>
    function confirmPayment() {
      alert('Payment Success');
      window.location.href = 'home.jsp';
    }
  </script>
</head>
<body>

<jsp:include page="header.jsp"/>

<h2>Checkout Details</h2>

<br><br>
<table>
  <thead>
    <tr>
      <th>ID</th>
      <th>First Name</th>
      <th>Last Name</th>
      <th>UserName</th>
      <th>Email</th>
      <th>Address</th>
      <th>Country</th>
      <th>Payment Method</th>
      <th>Card Name</th>
      <th>Card Number</th>
      <th>Expiration</th>
      <th>CVV</th>
      <th>Action</th>
    </tr>
  </thead>
  <tbody>
    <c:forEach var="checkout" items="${allDetails}">
      <tr>
        <td>${checkout.id}</td>
        <td>${checkout.firstName}</td>
        <td>${checkout.lastName}</td>
        <td>${checkout.username}</td>
        <td>${checkout.email}</td>
        <td>${checkout.address}</td>
        <td>${checkout.country}</td>
        <td>${checkout.paymentMethod}</td>
        <td>${checkout.cardname}</td>
        <td>${checkout.cardNumber}</td>
        <td>${checkout.expiration}</td>
        <td>${checkout.cvv}</td>
        <td>
          <a href="updateCheckout.jsp?id=${checkout.id}&firstName=${checkout.firstName}&lastName=${checkout.lastName}&username=${checkout.username}&email=${checkout.email}&address=${checkout.address}&country=${checkout.country}&paymentMethod=${checkout.paymentMethod}&cardName=${checkout.cardname}&cardNumber=${checkout.cardNumber}&expiration=${checkout.expiration}&cvv=${checkout.cvv}">
            <button>Update</button>
          </a>

          <form action="DeleteCheckoutServlet" method="post">
            <input type="hidden" name="id" value="${checkout.id}" />
            <button>Delete</button>
          </form>
        </td>
      </tr>
    </c:forEach>
  </tbody>
</table>

<button id="confirm-payment-btn" onclick="confirmPayment()">Confirm Payment</button>

<jsp:include page="footer.jsp" />

</body>
</html>
