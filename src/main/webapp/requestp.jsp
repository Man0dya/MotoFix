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
<html>
<head>
<meta charset="UTF-8">
<title>ADD REQUEST</title>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com">
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
      <h2>Add request</h2>
      <form action="RequestpServlet?action=insert" method="post">
        <div class="input">
         <label for="email">Email:</label>
          <input type="email" id="email" name="email" placeholder="Enter email" required>
        </div>
        
        <div class="input">
          <label for="product">Product:</label>
          <input type="text" id="product" name="product" placeholder="Enter product" required>
        </div>
        
        <div class="input">
          <label for="quantity">Quantity:</label>
          <input type="number" id="quantity" name="quantity" placeholder="Enter quantity" required>
        </div>

        <button type="submit" class="btn">Add Request</button>
      </form>
    </div>
  </section>
</main>

<jsp:include page="footer.jsp" />

</body>
</html>