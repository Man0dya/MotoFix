<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>USER PROFILE</title>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Asap:ital,wght@0,100..900;1,100..900&family=Inria+Sans:ital,wght@0,300;0,400;0,700;1,300;1,400;1,700&display=swap" rel="stylesheet">
  <link rel="icon" type=image/jpg href="images/motofav.png">	
	<style>
    body {
        font-family: 'Inria Sans', sans-serif;
        background-color: #f4f4f4;
    }

	h2 {
	    color: #333;
	    text-align: center;
	    margin-bottom: 20px;
	}


    table {
        width: 100%;
        border-collapse: collapse;
        margin: 20px 0;
        background-color: #fff;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    th, td {
        padding: 12px;
        text-align: left;
        border-bottom: 1px solid #ddd;
    }

    th {
        background-color: #d43a3a;
        color: white;
    }

    tr:hover {
        background-color: #f1f1f1;
    }

    .container {
        max-width: 800px;
        margin: 40px auto;
        padding: 20px;
        background-color: #fff;
        border-radius: 8px;
        box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
    }
    
    #button {
        display: inline-block;
        padding: 10px 20px;
        font-size: 16px;
        background-color: #f14646;
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        margin-top: 20px;
        text-decoration: none;
        transition: background-color 0.3s ease;
    }

    #button:hover {
        background-color: #d43a3a;
    }
</style>

</head>
<body>
<jsp:include page="header.jsp"/>

    <div class="container">
    <h2>My Details</h2>
        <table>
            <c:forEach var="cus" items="${cusDetails}">
                <c:set var="id" value="${cus.id}"/>
                <c:set var="name" value="${cus.name}"/>
                <c:set var="email" value="${cus.email}"/>
                <c:set var="username" value="${cus.username}"/>
                <c:set var="password" value="${cus.password}"/>

                <tr>
                    <td>Customer ID :</td>
                    <td>${cus.id}</td>
                </tr>
                <tr>
                    <td>Customer Name :</td>
                    <td>${cus.name}</td>
                </tr>
                <tr>
                    <td>Customer Email :</td>
                    <td>${cus.email}</td>
                </tr>
                <tr>
                    <td>Customer User Name :</td>
                    <td>${cus.username}</td>
                </tr>
                <tr>
                    <td>Customer Password :</td>
                    <td>${cus.password}</td>
                </tr>
            </c:forEach>
        </table>
        
        <c:url value="updatecustomer.jsp" var="customerupdate">
        	<c:param name="id" value ="${id}"/>
          	<c:param name="name" value ="${name}"/> 
        	<c:param name="email" value ="${email}"/>
        	<c:param name="username" value ="${username}"/>
        	<c:param name="password" value ="${password}"/>
        </c:url>
        
        <a href="${customerupdate}">
    		<input type="button" id="button" name="update" value="Update My Data">
		</a>
		
		<c:url value="deletecustomer.jsp" var="customerdelete">
			<c:param name="id" value ="${id}"/>
			<c:param name="name" value ="${name}"/> 
        	<c:param name="email" value ="${email}"/>
        	<c:param name="username" value ="${username}"/>
        	<c:param name="password" value ="${password}"/>
		</c:url>
		
		<a href="${customerdelete}">
    		<input type="button" id="button" name="delete" value="Delete My Data">
		</a>
		
		<form action="logoffServlet" method="post">
    		<input type="submit" value="Log Off" id="button">
		</form>
		
    </div>
<jsp:include page="footer.jsp" />

</body>
</html>
