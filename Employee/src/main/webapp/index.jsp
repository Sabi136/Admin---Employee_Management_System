<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Starting Page</title>
<style>
    body {
        font-family: 'Arial', sans-serif;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        background: linear-gradient(135deg, #6a11cb, #2575fc); /* Gradient background */
    }
    .container {
        background: #fff;
        padding: 2rem;
        border-radius: 10px;
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
        text-align: center;
    }
    h1 {
        color: #333;
        margin-bottom: 1.5rem;
    }
    a {
        display: inline-block;
        margin: 0.5rem 0;
        padding: 0.75rem 1.5rem;
        font-size: 1rem;
        color: #fff;
        background-color: #007bff;
        border-radius: 5px;
        text-decoration: none;
        transition: background-color 0.3s ease, transform 0.2s ease;
    }
    a:hover {
        background-color: #0056b3;
        transform: translateY(-2px); /* Slight lift on hover */
    }
</style>
</head>
<body>
    <div class="container">
        <h1>Employee Management System</h1>
        <a href="collectAllServlet">Show Employees</a><br>
        <a href="addEmployee.jsp">Add Employee</a>
    </div>
</body>
</html>