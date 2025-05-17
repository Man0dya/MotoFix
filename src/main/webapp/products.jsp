<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>PRODUCTS</title>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Asap:ital,wght@0,100..900;1,100..900&family=Inria+Sans:ital,wght@0,300;0,400;0,700;1,300;1,400;1,700&display=swap" rel="stylesheet">
  <link rel="icon" type=image/jpg href="images/motofav.png">  
    <style>
        body {
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        h2 {
            text-align: center;
            margin-top: 20px;
            font-size:30px;
        }

        .product-list {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
            padding: 20px;
        }

        .product-item {
            background-color: white;
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 30px;
            width: 250px;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
            transition: transform 0.3s;
        }

        .product-item:hover {
            transform: scale(1.03);
        }

        .product-item h3 {
            font-size: 20px;
            margin-bottom: 10px;
            color: #333;
        }

        .product-item p {
            font-size: 16px;
            color: #555;
            margin-bottom: 20px;
        }

        .product-item form {
            margin-top: 10px;
        }

        .product-item input[type="number"] {
            padding: 5px;
            width: 60px;
            margin-right: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }

        .product-item input[type="submit"] {
            background-color: #dd1b1b;
            color: white;
            border: none;
            padding: 10px 16px;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .product-item input[type="submit"]:hover {
            background-color: #b71818;
        }

        .product-item input[type="number"]:focus,
        .product-item input[type="submit"]:focus {
            outline: none;
        }
    </style>
</head>
<body>

<jsp:include page="header.jsp"/>

    <h2>Available Products</h2>
    <div class="product-list">
    <!-- Loop through the products list using forEach tag -->
        <c:forEach var="product" items="${products}">
            <div class="product-item">
                <h3>${product.name}</h3>
                <p>${product.description}</p>
                <p>Price: LKR:${product.price}</p>
                <p>Stock: ${product.stock}</p>
                <form action="cart" method="post">
 					<input type="hidden" name="action" value="add">
  					<input type="hidden" name="productId" value="${product.id}">
    				<input type="number" name="quantity" min="1" max="${product.stock}" value="1">
    				
    				<input type="submit" value="Add to Cart"><!-- Add item to cart -->
				</form>
                
            </div>
        </c:forEach>
    </div>
    
<jsp:include page="footer.jsp" />

</body>
</html>
