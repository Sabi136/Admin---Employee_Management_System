package com.tap.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tap.daoimpl.EmployeeDaoImpl;

/**
 * Servlet implementation class deleteEmployee
 */
public class deleteEmployee extends HttpServlet 
{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		
		EmployeeDaoImpl empDaoImpl = new EmployeeDaoImpl();
		empDaoImpl.deleteEmployee(id);
		
		resp.sendRedirect("collectAllServlet");
		
	}
}
