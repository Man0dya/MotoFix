<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>UPDATE CUSTOMER</title>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Asap:ital,wght@0,100..900;1,100..900&family=Inria+Sans:ital,wght@0,300;0,400;0,700;1,300;1,400;1,700&display=swap" rel="stylesheet">
  <link rel="icon" type=image/jpg href="images/motofav.png">
  <style>
    body {
      padding-top: 70px;
      background-color: #f9f9f9;
    }

    .productform {
      display: flex;
      justify-content: center;
      align-items: center;
      height: 95vh;
    }

    .productbox {
      background-color: white;
      padding: 30px;
      box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
      border-radius: 8px;
      width: 600px;
      flex-direction: column;
      align-items: center;
      text-align: center;
    }

    .productbox h2 {
      margin-bottom: 20px;
      font-size: 30px;
      color: #333;
    }

    .input {
      margin-bottom: 20px;
      width: 100%;
      display: flex;
      flex-direction: column;
      align-items: flex-start;
    }

    .input label {
      font-size: 18px;
      color: #333;
      margin-bottom: 5px;
      font-weight: bold;
    }
    
    .input input {
      width: 96%;
      padding: 10px;
      border: 1px solid #ccc;
      border-radius: 4px;
      font-size: 16px;
      font-family: 'Asap', sans-serif;
    }

    .btn {
      background-color: #dd1b1b;
      color: white;
      padding: 10px 20px;
      border: none;
      border-radius: 5px;
      font-size: 16px;
      cursor: pointer;
      width: 100%;
      transition: background-color 0.3s ease;
    }

    .btn:hover {
      background-color: #b71818;
    }
  </style>
</head>
<body>

<jsp:include page="header.jsp"/>

<!-- Retrieve customer data from request parameters and store in variables -->

<%
  String id = request.getParameter("id");
  String name = request.getParameter("name");
  String email = request.getParameter("email");
  String username = request.getParameter("username");
  String password = request.getParameter("password");
%>

<main>
  <section class="productform">
    <div class="productbox">
      <h2>Update Customer</h2>
      <form action="UpdateCustomerServlet" method="post"> <!--send the updated data to the updatecutomerservlet-->
        <div class="input">
          <label for="CustomerID">Customer ID:</label>
          <input type="text" id="CustomerID" name="CustomerID" value="<%= id %>" readonly required>
        </div>

        <div class="input">
          <label for="CustomerName">Customer Name:</label>
          <input type="text" id="CustomerName" name="CustomerName" value="<%= name %>" required>
        </div>

        <div class="input">
          <label for="CustomerEmail">Customer Email:</label>
          <input type="email" id="CustomerEmail" name="CustomerEmail" value="<%= email %>" required>
        </div>

        <div class="input">
          <label for="CustomerUserName">Customer Username:</label>
          <input type="text" id="CustomerUserName" name="CustomerUserName" value="<%= username %>" required>
        </div>

        <div class="input">
          <label for="CustomerPassword">Customer Password:</label>
          <input type="password" id="CustomerPassword" name="CustomerPassword" value="<%= password %>" required>
        </div>

        <button type="submit" class="btn">Update My Data</button>
      </form>
    </div>
  </section>
</main>

<jsp:include page="footer.jsp" />

</body>
</html>
