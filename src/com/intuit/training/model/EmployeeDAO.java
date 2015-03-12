package com.intuit.training.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class EmployeeDAO {

	private DataSource dataSource;

	public EmployeeDAO() {
		try {
			Context ctx = new InitialContext();
			dataSource = (DataSource) ctx
					.lookup("java:comp/env/jdbc/EmployeeDB");
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}

	public boolean addEmployee(Employee e) {
		try {
			Connection con = dataSource.getConnection();
			String sql = "INSERT INTO Employee (Name, Designation, Salary) "
					+ "VALUES ('" + e.getName() + "', '" + e.getDesignation()
					+ "', " + e.getSalary() + ");";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.executeUpdate();
			con.close();
			return true;
		} catch (Exception exp) {
			exp.printStackTrace();
		}
		return false;
	}

	public Employee findEmployee(int id) {
		Employee e = null;
		try {
			Connection con = dataSource.getConnection();
			String sql = "select * from Employee where Employee_Id  = " + id;
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				e = new Employee(rs.getInt(1), rs.getString(2),
						rs.getString(3), rs.getFloat(4));
			}
			con.close();
		} catch (SQLException exp) {
			exp.printStackTrace();
		}
		return e;
	}

	public List<Employee> findByDesignation(String designation) {
		List<Employee> employees = new LinkedList<Employee>();
		try {
			Connection con = dataSource.getConnection();
			String sql = "select * from Employee where Designation  = '"
					+ designation + "'";
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				employees.add(new Employee(rs.getInt(1), rs.getString(2), rs
						.getString(3), rs.getFloat(4)));
			}
			con.close();
		} catch (SQLException exp) {
			exp.printStackTrace();
		}
		return employees;
	}
}
