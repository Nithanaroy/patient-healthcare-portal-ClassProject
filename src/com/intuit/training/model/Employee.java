package com.intuit.training.model;

public class Employee {

	private int Employee_Id;
	private String Name, Designation;
	private float Salary;

	public Employee() {
		super();
	}

	public Employee(String name, String designation, float salary) {
		super();
		Name = name;
		Designation = designation;
		Salary = salary;
	}

	public Employee(int employee_Id, String name, String designation,
			float salary) {
		super();
		Employee_Id = employee_Id;
		Name = name;
		Designation = designation;
		Salary = salary;
	}

	public int getEmployee_Id() {
		return Employee_Id;
	}

	public void setEmployee_Id(int employee_Id) {
		Employee_Id = employee_Id;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public String getDesignation() {
		return Designation;
	}

	public void setDesignation(String designation) {
		Designation = designation;
	}

	public float getSalary() {
		return Salary;
	}

	public void setSalary(float salary) {
		Salary = salary;
	}

}
