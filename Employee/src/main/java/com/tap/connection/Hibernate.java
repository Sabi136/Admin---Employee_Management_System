package com.tap.connection;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.tap.entity.Employee;

public class Hibernate 
{
	private static SessionFactory sessionFactory;

	static
	{
		try
		{
			sessionFactory = new Configuration().
								 configure().
								 addAnnotatedClass(Employee.class).
								 buildSessionFactory();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	public static SessionFactory getSessionFactory()
	{
		return sessionFactory;
	}
}
