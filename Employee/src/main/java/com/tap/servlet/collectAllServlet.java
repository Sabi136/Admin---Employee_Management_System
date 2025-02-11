package com.tap.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tap.daoimpl.EmployeeDaoImpl;
import com.tap.entity.Employee;

/**
 * Servlet implementation class collectAllServlet
 */
public class collectAllServlet extends HttpServlet 
{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		EmployeeDaoImpl empDaoImpl = new EmployeeDaoImpl();
		List<Employee> allEmployees = empDaoImpl.getAllEmployee();
		req.setAttribute("allEmployees", allEmployees);
		req.getRequestDispatcher("employee.jsp").forward(req, resp);
	}
}
