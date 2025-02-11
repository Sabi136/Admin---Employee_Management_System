package com.tap.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.Version;

@Entity
@Table(name="employee")
public class Employee 
{
	@Id
	@Column(name="id")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	
	@Column(name="name")
	private String name;
	
	@Column(name="email")
	private String email;
	
	@Column(name="department")
	private String department;
	
	@Column(name="salary")
	private int salary;
	
//	@Version
//	@Column(name="version")
//	private int version;
//	
//	public int getVersion() {
//		return version;
//	}
//	public void setVersion(int version) {
//		this.version = version;
//	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public int getSalary() {
		return salary;
	}
	public void setSalary(int salary) {
		this.salary = salary;
	}
	
	public Employee() {
		super();
	}
	
	public Employee(String name, String email, String department, int salary) {
		super();
		this.name = name;
		this.email = email;
		this.department = department;
		this.salary = salary;
	}
	@Override
	public String toString() {
		return id + " " + name + " " + email + " " + department + " "+ salary;
	}
}
