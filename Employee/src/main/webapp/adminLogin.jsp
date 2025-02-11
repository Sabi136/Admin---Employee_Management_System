<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login</title>
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
    .login-container {
        background: #fff;
        padding: 2rem;
        border-radius: 10px;
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
        width: 300px;
        text-align: center;
    }
    .login-container h2 {
        margin-bottom: 1.5rem;
        color: #333;
    }
    .login-container input {
        width: 100%;
        padding: 10px;
        margin: 10px 0;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 16px;
    }
    .login-container input:focus {
        border-color: #007bff;
        outline: none;
    }
    .login-container button {
        width: 100%;
        padding: 10px;
        background: #007bff;
        color: #fff;
        border: none;
        border-radius: 5px;
        font-size: 16px;
        cursor: pointer;
        transition: background 0.3s ease;
    }
    .login-container button:hover {
        background: #0056b3;
    }
    .login-container .error {
        color: #ff6b6b;
        margin-top: 10px;
    }
</style>
</head>
<body>
    <div class="login-container">
        <h2>Admin Login</h2>
        <form action="adminServlet" method="post">
            <input type="text" name="username" placeholder="Username" required>
            <input type="password" name="password" placeholder="Password" required>
            <button type="submit">Login</button>
        </form>
        <%-- Display error message if login fails --%>
        <% if (request.getParameter("error") != null) { %>
            <div class="error">Invalid username or password. Please try again.</div>
        <% } %>
    </div>
</body>
</html>