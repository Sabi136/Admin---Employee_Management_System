package com.tap.dao;

import java.util.List;

import com.tap.entity.Employee;

public interface EmployeeDAO 
{
	 void addEmployee(Employee employee);
	 Employee getById(int id);
	 List<Employee> getAllEmployee();
	 void updateEmployee(Employee employee);
	 void deleteEmployee(int id);
	 Employee getEmployeeByEmail(String email);
}
