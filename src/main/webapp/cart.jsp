<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.List" %>
<%@ page import="com.system.CartItem" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>CART</title>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" >
  <link href="https://fonts.googleapis.com/css2?family=Asap:ital,wght@0,100..900;1,100..900&family=Inria+Sans:ital,wght@0,300;0,400;0,700;1,300;1,400;1,700&display=swap" rel="stylesheet">
  <link rel="icon" type=image/jpg href="images/motofav.png">  
    <style>
    body {
        background-color: #f9f9f9;
        margin: 0;
    }

    h2 {
        text-align: center;
        color: #333;
    }

    table {
        width: 100%;
        max-width: 1000px;
        border-collapse: collapse;
        margin: 20px auto;
        box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        background-color: #fff;
    }

    table, th, td {
        border: 1px solid #ddd;
    }

    th, td {
        padding: 15px;
        text-align: center;
    }

    th {
        background-color: #d32f2f;
        color: white;
        font-weight: bold;
    }

    tr:hover {
        background-color: #f1f1f1;
    }

    input[type="number"] {
        width: 50px;
        padding: 5px;
        text-align: center;
        border: 1px solid #ddd;
        border-radius: 4px;
    }

    input[type="submit"] {
        background-color: #dd1b1b;
        color: white;
        padding: 10px 15px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s;
    }

    input[type="submit"]:hover {
        background-color: #b71818;
    }

    form {
        display: inline-block;
    }

    .cart-buttons {
        display: flex;
        justify-content: space-between;
        align-items: center;
        margin: 20px 0;
    }

    .cart-buttons input[type="submit"] {
        flex: 1;
        margin: 0 10px;
    }

    .checkout-button {
        text-align: right;
    }

    .total-price {
        font-size: 1.2em;
        font-weight: bold;
        color: #333;
        margin-right: 20px;
    }
</style>

</head>
<body>
<jsp:include page="header.jsp"/>

    <h2>Your Shopping Cart</h2>
    <c:choose>
        <c:when test="${empty sessionScope.cart}">
            <p>Your cart is empty.</p>
        </c:when>
        <c:otherwise>
            <table>
                <thead>
                    <tr>
                        <th>Product Name</th>
                        <th>Price</th>
                        <th>Quantity</th>
                        <th>Total Price</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="item" items="${sessionScope.cart}">
                        <tr>
                            <td>${item.product.name}</td>
                            <td>LKR:${item.product.price}</td>
                            <td>
                                <form action="cart" method="post">
                                    <input type="hidden" name="action" value="update">
                                    <input type="hidden" name="productId" value="${item.product.id}">
                                    <input type="number" name="quantity" value="${item.quantity}" min="1" max="${item.product.stock}">
                                    <input type="submit" value="Update">
                                </form>
                            </td>
                            <td>LKR:${item.totalPrice}</td>
                            <td>
                                <form action="cart" method="post">
                                    <input type="hidden" name="action" value="remove">
                                    <input type="hidden" name="productId" value="${item.product.id}">
                                    <input type="submit" value="Remove">
                                </form>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>

            <c:set var="totalCartPrice" value="0" />
            <c:forEach var="item" items="${sessionScope.cart}">
                <c:set var="totalCartPrice" value="${totalCartPrice + item.totalPrice}" />
            </c:forEach>

            <div class="cart-buttons">
                <form action="cart" method="post">
                    <input type="hidden" name="action" value="clear">
                    <input type="submit" value="Clear Cart">
                </form>

                <div class="checkout-button">
                    <span class="total-price">Total: LKR ${totalCartPrice}</span>
                    <form action="checkout.jsp" method="post">
                        <input type="submit" value="Proceed to Checkout">
                    </form>
                </div>
            </div>
        </c:otherwise>
    </c:choose>

<jsp:include page="footer.jsp" />

</body>
</html>
