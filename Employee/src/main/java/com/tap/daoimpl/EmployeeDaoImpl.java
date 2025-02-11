package com.tap.daoimpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.tap.connection.Hibernate;
import com.tap.dao.EmployeeDAO;
import com.tap.entity.Employee;

public class EmployeeDaoImpl implements EmployeeDAO
{
	@Override
	public void addEmployee(Employee employee)
	{
		Session session = Hibernate.getSessionFactory().openSession();
		try
		{
			session.beginTransaction();
			session.save(employee);
			session.getTransaction().commit();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		finally
		{
			session.close();
		}
	}

	@Override
	public Employee getById(int id) 
	{
		Session session = Hibernate.getSessionFactory().openSession();
		Employee employee = null;
		try
		{
			employee = session.get(Employee.class, id);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return employee;
	}

	@Override
	public List<Employee> getAllEmployee() 
	{
		Session session = Hibernate.getSessionFactory().openSession();
		List<Employee> el = null;
		try
		{
			el = session.createQuery("from Employee", Employee.class).list();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return el;
	}

	@Override
	public void updateEmployee(Employee employee) {
	    Session session = Hibernate.getSessionFactory().openSession();
	    Transaction transaction = null;

	    try {
	        transaction = session.beginTransaction();
	        Employee existingEmployee = session.get(Employee.class, employee.getId());

	        if (existingEmployee != null) {
	            existingEmployee.setName(employee.getName());
	            existingEmployee.setEmail(employee.getEmail());
	            existingEmployee.setDepartment(employee.getDepartment());
	            existingEmployee.setSalary(employee.getSalary());

	            session.update(existingEmployee);
	            transaction.commit();
	        } else {
	            System.out.println("Employee with ID " + employee.getId() + " not found.");
	        }
	    } catch (Exception e) {
	        if (transaction != null) {
	            transaction.rollback();  // Rollback in case of an error
	        }
	        e.printStackTrace();
	    } finally {
	        session.close();  // Ensure session is closed
	    }
	}

	@Override
	public void deleteEmployee(int id) 
	{
		Session session = Hibernate.getSessionFactory().openSession();
		try
		{
			session.beginTransaction();
			Employee emp = session.get(Employee.class, id);
			
			if(emp != null)
			{
				session.delete(emp);
			}
			
			session.getTransaction().commit();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

	@Override
	public Employee getEmployeeByEmail(String email) 
	{
		Session session = Hibernate.getSessionFactory().openSession();
		Employee employee = null;
		try
		{
			String hql = "from Employee where email = :email";
			employee = session.createQuery(hql,Employee.class).
							   setParameter("email", email).
							   uniqueResult();
			session.getTransaction().commit();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return employee;
	}
}