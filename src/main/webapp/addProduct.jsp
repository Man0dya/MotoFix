<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ADD PRODUCT</title>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Asap:ital,wght@0,100..900;1,100..900&family=Inria+Sans:ital,wght@0,300;0,400;0,700;1,300;1,400;1,700&display=swap" rel="stylesheet">
  <link rel="icon" type=image/jpg href="images/motofav.png">
  <style>
    body {
      padding-top: 90px;
      background-color: #f9f9f9;
    }

    .productform {
      display: flex;
      justify-content: center;
      align-items: center;
      height: 90vh;
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
}
  </style>
</head>
<body>

<jsp:include page="header.jsp"/>

<main>
  <section class="productform">
    <div class="productbox">
      <h2>Add New Product</h2>
      <form action="AdminServlet?action=insert" method="post">
        <div class="input">
          <label for="name">Product Name:</label>
          <input type="text" id="name" name="name" placeholder="Enter product name" required>
        </div>
        
        <div class="input">
          <label for="description">Description:</label>
          <input type="text" id="description" name="description" placeholder="Enter product description" required>
        </div>
        
        <div class="input">
          <label for="price">Price:</label>
          <input type="number" step="0.01" id="price" name="price" placeholder="Enter product price" required>
        </div>
        
        <div class="input">
          <label for="stock">Stock Quantity:</label>
          <input type="number" id="stock" name="stock" placeholder="Enter stock quantity" required>
        </div>

        <button type="submit" class="btn">Add Product</button>
      </form>
    </div>
  </section>
</main>

<jsp:include page="footer.jsp" />

<script src="JS/products.js"></script>

</body>
</html>