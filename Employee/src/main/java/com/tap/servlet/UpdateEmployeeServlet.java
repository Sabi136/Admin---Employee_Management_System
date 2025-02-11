package com.tap.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tap.daoimpl.EmployeeDaoImpl;
import com.tap.entity.Employee;

/**
 * Servlet implementation class UpdateEmployeeServlet
 */
public class UpdateEmployeeServlet extends HttpServlet 
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		String name = req.getParameter("name");
        String email = req.getParameter("email");
        String department = req.getParameter("department");
        int salary = Integer.parseInt(req.getParameter("salary"));
        
        EmployeeDaoImpl empDaoImpl = new EmployeeDaoImpl();
        
        Employee employee = empDaoImpl.getById(id);
        
        employee.setName(name);
        employee.setEmail(email);
        employee.setDepartment(department);
        employee.setSalary(salary);
        
        empDaoImpl.updateEmployee(employee);
        
        resp.sendRedirect("index.jsp");
	}
}
