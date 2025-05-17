<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Requests</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Asap:ital,wght@0,100..900;1,100..900&family=Inria+Sans:ital,wght@0,300;0,400;0,700;1,300;1,400;1,700&display=swap" rel="stylesheet">
    <link rel="icon" type="image/jpg" href="images/motofav.png">
    <style>
        @charset "UTF-8";
        body {
            font-family: 'Inria Sans', sans-serif;
        }

        h2 {
            text-align: center;
            margin-top: 40px;
            font-size: 40px;
        }

        table.requests-table {
            width: 90%;
            margin: 20px auto;
            border-collapse: collapse;
        }

        table.requests-table th, table.requests-table td {
            padding: 10px;
            text-align: left;
            border: 1px solid #ddd;
        }

        table.requests-table th {
            color: white;
            background-color: #f14646;
        }

        table.requests-table tr:hover {
            background-color: #ffcccc;
        }
    </style>
</head>
<body>

<jsp:include page="header.jsp"/>

    <h2>Requests List</h2>
    <table class="requests-table">
        <thead>
            <tr>
                <th>ID</th>
                <th>Email</th>
                <th>Product</th>
                <th>Quantity</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="request" items="${requests}">
                <tr>
                    <td>${request.id}</td>
                    <td>${request.email}</td>
                    <td>${request.product}</td>
                    <td>${request.quantity}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

<jsp:include page="footer.jsp" />

</body>
</html>
