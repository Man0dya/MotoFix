<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>VIEW MESSAGES</title>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css2?family=Asap:ital,wght@0,100..900;1,100..900&family=Inria+Sans:ital,wght@0,300;0,400;0,700;1,300;1,400;1,700&display=swap" rel="stylesheet">
  <link rel="icon" type=image/jpg href="images/motofav.png">
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

        table.messages-table {
            width: 90%;
            margin: 20px auto;
            border-collapse: collapse;
        }

        table.messages-table th, table.messages-table td {
            padding: 10px;
            text-align: left;
            border: 1px solid #ddd;
        }

        table.messages-table th {
        	color:white;
            background-color: #f14646;
        }

        table.messages-table tr:hover {
            background-color: #ffcccc;
        }
    </style>
</head>
<body>

<jsp:include page="header.jsp"/>

    <h2>Contact Us Messages</h2>

    <table class="messages-table">
        <thead>
            <tr>
                <th>ID</th>
                <th>Username</th>
                <th>Email</th>
                <th>Subject</th>
                <th>Message</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="message" items="${messages}">
                <tr>
                    <td>${message.id}</td>
                    <td>${message.username}</td>
                    <td>${message.email}</td>
                    <td>${message.subject}</td>
                    <td>${message.message}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

<jsp:include page="footer.jsp" />

</body>
</html>
