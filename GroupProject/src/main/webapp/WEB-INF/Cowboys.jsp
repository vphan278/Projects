<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %>
<!-- c:out ; c:forEach etc. -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Formatting (dates) -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dallas Cowboys Schedule</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f3f3f3;
        }

        .container {
            max-width: 900px;
            margin: 50px auto;
            background-color: #ffffff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
            position: relative;
        }

        h1 {
            text-align: center;
            color: #003594; /* Official Cowboys navy color */
            margin-top: 0;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            padding: 10px;
            text-align: left;
            border: 1px solid #dddddd;
        }

        th {
            background-color: #003594; /* Official Cowboys navy color */
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        .cowboys-logo {
            position: absolute;
            top: 10px;
            right: 10px;
            max-height: 80px;
            max-width: 80px;
        }

        .back-link {
            display: inline-block;
            margin-top: 30px;
            text-decoration: none;
            color: #006bb6; /* Contrasting blue */
            font-weight: bold;
        }

        .back-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <!-- Cowboys Logo -->
        <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/1/15/Dallas_Cowboys.svg/2153px-Dallas_Cowboys.svg.png" alt="Dallas Cowboys Logo" class="cowboys-logo">
        <!-- Page Title -->
        <h1>Dallas Cowboys Schedule</h1>
        
        <!-- Static Table Schedule -->
        <table>
            <thead>
                <tr>
                    <th>#</th>
                    <th>Date/Time</th>
                    <th>Opponent</th>
                    <th>Location</th>
                </tr>
            </thead>
            <tbody>
                <!-- Week 1 -->
                <tr>
                    <td>1</td>
                    <td>2023-09-10 1:00 PM</td>
                    <td>Browns</td>
                    <td>Home</td>
                </tr>
                <!-- Week 2 -->
                <tr>
                    <td>2</td>
                    <td>2023-09-17 4:30 PM</td>
                    <td>Chargers</td>
                    <td>Away</td>
                </tr>
                <!-- Week 3 -->
                <tr>
                    <td>3</td>
                    <td>2023-09-24 8:15 PM</td>
                    <td>Bills</td>
                    <td>Home</td>
                </tr>
                <!-- Week 4 -->
                <tr>
                    <td>4</td>
                    <td>2023-10-01 1:00 PM</td>
                    <td>Panthers</td>
                    <td>Home</td>
                </tr>
                <!-- Week 5 -->
                <tr>
                    <td>5</td>
                    <td>2023-10-08 4:25 PM</td>
                    <td>Saints</td>
                    <td>Home</td>
                </tr>
            </tbody>
        </table>

        <!-- Back Link -->
        <a class="back-link" href="/dashboard">Back to Dashboard</a>
      
    </div>
</body>
</html>