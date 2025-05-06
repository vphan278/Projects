
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
    <title>Las Vegas Raiders Schedule</title>
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
            color: #000000; /* Official Raiders Black */
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
            background-color: #000000; /* Official Raiders Black */
            color: #ffffff; /* White text */
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        .logo {
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
            color: #000000; /* Black Link */
            font-weight: bold;
        }

        .back-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <!-- Raiders Logo -->
        <img src="https://static.www.nfl.com/t_q-best/league/api/clubs/logos/LV" 
             alt="Las Vegas Raiders Logo" class="logo">

        <!-- Page Title -->
        <h1>Las Vegas Raiders Schedule</h1>
        
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
                <tr>
                    <td>1</td>
                    <td>2023-09-10 1:00 PM</td>
                    <td>Broncos</td>
                    <td>Away</td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>2023-09-17 4:30 PM</td>
                    <td>Chiefs</td>
                    <td>Home</td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>2023-09-24 8:15 PM</td>
                    <td>Steelers</td>
                    <td>Home</td>
                </tr>
                <tr>
                    <td>4</td>
                    <td>2023-10-01 1:00 PM</td>
                    <td>Chargers</td>
                    <td>Away</td>
                </tr>
                <tr>
                    <td>5</td>
                    <td>2023-10-08 4:25 PM</td>
                    <td>49ers</td>
                    <td>Home</td>
                </tr>
            </tbody>
        </table>

        <!-- Back Link -->
         <a class="back-link" href="/dashboard">Back to Dashboard</a>
    </div>
</body>
</html>