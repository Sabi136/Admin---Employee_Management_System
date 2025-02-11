<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List, com.tap.entity.Employee" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee's List</title>
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #007BFF;
            color: white;
            margin: 0;
            padding: 0;
            text-align: center;
        }

        h2 {
            margin-top: 20px;
            font-size: 28px;
        }

        .employee-count {
            margin-top: 20px;
            font-size: 20px;
            font-weight: bold;
            color: #f0f0f0;
        }

        table {
            width: 90%;
            margin: 20px auto;
            border-collapse: separate;
            border-spacing: 0;
            background: white;
            color: black;
            border-radius: 12px;
            overflow: hidden;
            box-shadow: 0px 6px 15px rgba(0, 0, 0, 0.2);
        }

        th, td {
            padding: 14px;
            border-bottom: 1px solid #ddd;
            text-align: center;
        }

        th {
            background: linear-gradient(to right, #0056b3, #003d80);
            color: white;
            font-weight: bold;
        }

        tr:hover {
            background-color: #f0f0f0;
        }

        td:last-child {
            display: flex;
            justify-content: center;
            gap: 10px;
            padding: 14px;
        }

        a {
            text-decoration: none;
            padding: 8px 14px;
            border-radius: 8px;
            font-size: 14px;
            font-weight: bold;
            transition: 0.3s;
        }

        .update-btn {
            background-color: #28a745;
            color: white;
        }

        .update-btn:hover {
            background-color: #218838;
        }

        .delete-btn {
            background-color: #dc3545;
            color: white;
        }

        .delete-btn:hover {
            background-color: #c82333;
        }

        .back-btn {
            background-color: #6c757d;
            color: white;
            padding: 10px 20px;
            border-radius: 8px;
            font-size: 16px;
            margin-top: 20px;
            text-decoration: none;
        }

        .back-btn:hover {
            background-color: #5a6268;
        }
    </style>
</head>
<body>
    <h2>Employee's List</h2>

    <!-- Back button to index.jsp -->
    <a href="index.jsp" class="back-btn">Go Back to Home</a>

    <%
        List<Employee> emplist = (List<Employee>) request.getAttribute("allEmployees");
        int employeeCount = (emplist != null) ? emplist.size() : 0;
    %>
    <div class="employee-count">
        Total Employees: <%= employeeCount %>
    </div>

    <table>
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Email</th>
            <th>Department</th>
            <th>Salary</th>
            <th>Actions</th>
        </tr>
        <%
            if (emplist != null) {
                for (Employee emp : emplist) {
        %>
        <tr>
            <td><%= emp.getId() %></td>
            <td><%= emp.getName() %></td>
            <td><%= emp.getEmail() %></td>
            <td><%= emp.getDepartment() %></td>
            <td><%= emp.getSalary() %></td>
            <td>
                <a href="updateEmployee?id=<%= emp.getId() %>" class="update-btn">Update</a>
                <a href="deleteEmployee?id=<%= emp.getId() %>" class="delete-btn">Delete</a>
            </td>
        </tr>
        <%
                }
            }
        %>
    </table>
</body>
</html>
