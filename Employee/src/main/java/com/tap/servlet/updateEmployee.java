package com.tap.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tap.daoimpl.EmployeeDaoImpl;
import com.tap.entity.Employee;

/**
 * Servlet implementation class updateEmployee
 */
public class updateEmployee extends HttpServlet 
{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	String idStr = req.getParameter("id").trim();
    	
    	int id = Integer.parseInt(idStr);
    	
    	EmployeeDaoImpl empDaoImpl = new EmployeeDaoImpl();
    	
    	Employee employee = empDaoImpl.getById(id);
    	
    	if(employee != null)
    	{
    		req.setAttribute("employee", employee);
    		req.getRequestDispatcher("updateEmployee.jsp").forward(req, resp);
    	}
    }
}
