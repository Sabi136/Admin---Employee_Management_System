<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Employee</title>
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #007BFF;
            color: white;
            margin: 0;
            padding: 0;
            text-align: center;
        }

        .container {
            background: white;
            color: black;
            width: 50%;
            margin: 50px auto;
            padding: 20px;
            border-radius: 12px;
            box-shadow: 0px 6px 15px rgba(0, 0, 0, 0.2);
        }

        h2 {
            margin-bottom: 20px;
            font-size: 24px;
            color: #007BFF;
        }

        form {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        input[type="text"], input[type="email"] {
            width: 80%;
            padding: 10px;
            margin: 8px 0;
            border: 1px solid #ccc;
            border-radius: 8px;
            font-size: 16px;
        }

        input[type="text"]:focus, input[type="email"]:focus {
            border-color: #007BFF;
            outline: none;
            box-shadow: 0px 0px 8px rgba(0, 123, 255, 0.5);
        }

        .btn {
            margin-top: 15px;
            padding: 10px 20px;
            font-size: 16px;
            font-weight: bold;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: 0.3s;
            color: white;
        }

        .add-btn {
            background-color: #28a745;
        }

        .add-btn:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Add Employee</h2>
        <form action="AddEmployeeServlet" method="post">
            <input type="text" name="name" placeholder="Enter the Employee's Name" required>
            <input type="email" name="email" placeholder="Enter the Employee's Email" required>
            <input type="text" name="department" placeholder="Enter the Employee's Department" required>
            <input type="text" name="salary" placeholder="Enter Employee's Salary" required>
            <input type="submit" value="Add Employee" class="btn add-btn">
        </form>
    </div>
</body>
</html>
