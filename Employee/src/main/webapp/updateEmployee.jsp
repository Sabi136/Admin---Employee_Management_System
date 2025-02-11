<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.tap.entity.Employee" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Employee</title>
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

        input[type="text"], input[type="hidden"] {
            width: 80%;
            padding: 10px;
            margin: 8px 0;
            border: 1px solid #ccc;
            border-radius: 8px;
            font-size: 16px;
        }

        input[readonly] {
            background-color: #f0f0f0;
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

        .update-btn {
            background-color: #28a745;
        }

        .update-btn:hover {
            background-color: #218838;
        }

        .error {
            font-size: 18px;
            font-weight: bold;
            color: red;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Update Employee</h2>
        <%
            Employee employee = (Employee) request.getAttribute("employee");
            if (employee != null) {
        %>
        <form action="UpdateEmployeeServlet" method="post">
            <input type="hidden" name="id" value="<%= employee.getId() %>">
            <input type="text" name="name" value="<%= employee.getName() %>" readonly>
            <input type="text" name="email" value="<%= employee.getEmail() %>" required>
            <input type="text" name="department" value="<%= employee.getDepartment() %>" required>
            <input type="text" name="salary" value="<%= employee.getSalary() %>" required>
            <input type="submit" value="Update" class="btn update-btn">
        </form>
        <%
            } else {
        %>
        <p class="error">No employee found with the given ID.</p>
        <% } %>
    </div>
</body>
</html>
