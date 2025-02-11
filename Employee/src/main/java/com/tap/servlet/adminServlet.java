package com.tap.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class adminServlet
 */
public class adminServlet extends HttpServlet 
{
	private static final String ADMIN_USERNAME = "admin";
	private static final String ADMIN_PASSWORD = "admin123";
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		
		if(ADMIN_USERNAME.equals(username) && ADMIN_PASSWORD.equals(password))
		{
			resp.sendRedirect("index.jsp");
		}
		else
		{
			resp.sendRedirect("adminLogin.jsp?error=Invalid Credentials");
		}
	}
}
